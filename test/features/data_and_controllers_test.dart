import 'package:clock/clock.dart';
import 'package:clock_evolution/core/clock/clock_provider.dart';
import 'package:clock_evolution/core/database/app_database.dart';
import 'package:clock_evolution/core/database/database_provider.dart';
import 'package:clock_evolution/features/settings/application/settings_controller.dart';
import 'package:clock_evolution/features/settings/application/settings_providers.dart';
import 'package:clock_evolution/features/settings/data/drift_settings_repository.dart';
import 'package:clock_evolution/features/settings/domain/app_settings.dart';
import 'package:clock_evolution/features/stopwatch/application/stopwatch_controller.dart';
import 'package:clock_evolution/features/stopwatch/data/drift_stopwatch_repository.dart';
import 'package:clock_evolution/features/stopwatch/domain/stopwatch_state.dart';
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:riverpod/riverpod.dart';

void main() {
  late AppDatabase database;
  final t0 = DateTime(2026, 10, 18, 10);
  const idle = StopwatchState.idle();

  setUp(() => database = AppDatabase(NativeDatabase.memory()));
  tearDown(() => database.close());

  ProviderContainer containerAt(DateTime now) {
    final container = ProviderContainer(
      overrides: [
        appDatabaseProvider.overrideWithValue(database),
        appClockProvider.overrideWithValue(Clock.fixed(now)),
      ],
    );
    addTearDown(container.dispose);
    return container;
  }

  group('DriftStopwatchRepository', () {
    test('loads idle when empty', () async {
      final repository = DriftStopwatchRepository(database.stopwatchDao);
      expect(await repository.load(), idle);
    });

    test('round trips running state with laps', () async {
      final repository = DriftStopwatchRepository(database.stopwatchDao);
      final state = idle.start(t0).lap(t0.add(const Duration(seconds: 4)));
      await repository.save(state);
      expect(await repository.load(), state);
    });

    test('round trips paused state', () async {
      final repository = DriftStopwatchRepository(database.stopwatchDao);
      final state = idle.start(t0).pause(t0.add(const Duration(seconds: 9)));
      await repository.save(state);
      expect(await repository.load(), state);
    });
  });

  group('StopwatchController', () {
    test('restores running state after restart', () async {
      final first = containerAt(t0);
      await first.read(stopwatchControllerProvider.future);
      await first.read(stopwatchControllerProvider.notifier).start();

      final later = t0.add(const Duration(seconds: 30));
      final second = containerAt(later);
      final restored = await second.read(stopwatchControllerProvider.future);
      expect(restored, isA<StopwatchRunning>());
      expect(restored.elapsedAt(later), const Duration(seconds: 30));
    });

    test('reset clears time and laps', () async {
      final container = containerAt(t0);
      await container.read(stopwatchControllerProvider.future);
      final controller = container.read(stopwatchControllerProvider.notifier);
      await controller.start();
      await controller.lap();
      await controller.reset();
      expect(container.read(stopwatchControllerProvider).value, idle);
      final repository = DriftStopwatchRepository(database.stopwatchDao);
      expect(await repository.load(), idle);
    });
  });

  group('SettingsController', () {
    ProviderContainer settingsContainer() {
      final container = ProviderContainer(
        overrides: [appDatabaseProvider.overrideWithValue(database)],
      );
      addTearDown(container.dispose);
      return container;
    }

    test('toggle theme persists', () async {
      final container = settingsContainer();
      await container.read(settingsControllerProvider.notifier).toggleTheme();
      expect(
        container.read(settingsControllerProvider).themeMode,
        AppThemeMode.light,
      );
      final stored = await DriftSettingsRepository(database.settingsDao).load();
      expect(stored.themeMode, AppThemeMode.light);
    });

    test('rejects invalid location', () async {
      final container = settingsContainer();
      final notifier = container.read(settingsControllerProvider.notifier);
      expect(await notifier.updateLocation('   '), isNotNull);
      expect(await notifier.updateLocation('x' * 41), isNotNull);
      expect(await notifier.updateLocation('  Porto '), isNull);
      expect(container.read(settingsControllerProvider).locationName, 'Porto');
    });

    test('initial settings override is respected', () {
      final container = ProviderContainer(
        overrides: [
          appDatabaseProvider.overrideWithValue(database),
          initialSettingsProvider.overrideWithValue(
            const AppSettings(locationName: 'Faro'),
          ),
        ],
      );
      addTearDown(container.dispose);
      expect(container.read(settingsControllerProvider).locationName, 'Faro');
    });
  });
}
