import 'package:clock/clock.dart';
import 'package:clock_evolution/app/app.dart';
import 'package:clock_evolution/core/clock/clock_provider.dart';
import 'package:clock_evolution/core/database/app_database.dart';
import 'package:clock_evolution/core/database/database_provider.dart';
import 'package:clock_evolution/features/settings/application/settings_providers.dart';
import 'package:clock_evolution/features/settings/domain/app_settings.dart';
import 'package:clock_evolution/features/stopwatch/data/drift_stopwatch_repository.dart';
import 'package:clock_evolution/features/stopwatch/domain/stopwatch_state.dart';
import 'package:drift/native.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  _golden('home_dark', AppThemeMode.dark, 1);
  _golden('home_light', AppThemeMode.light, 1);
  _golden('home_dark_text_1_5', AppThemeMode.dark, 1.5);
}

void _golden(String name, AppThemeMode mode, double textScale) {
  testWidgets('home page matches $name golden', (tester) async {
    tester.view.physicalSize = const Size(390, 844);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    tester.platformDispatcher.textScaleFactorTestValue = textScale;
    addTearDown(tester.platformDispatcher.clearTextScaleFactorTestValue);
    await initializeDateFormatting('pt');
    tester.platformDispatcher.localesTestValue = const [Locale('pt')];
    addTearDown(tester.platformDispatcher.clearLocalesTestValue);

    final now = DateTime(2026, 10, 18, 10, 8, 36);
    final database = AppDatabase(NativeDatabase.memory());
    addTearDown(database.close);
    final started = now.subtract(
      const Duration(minutes: 2, seconds: 47, milliseconds: 380),
    );
    final state = const StopwatchState.idle()
        .start(started)
        .lap(started.add(const Duration(seconds: 86, milliseconds: 330)))
        .lap(started.add(const Duration(seconds: 167, milliseconds: 380)));
    await tester.runAsync(
      () => DriftStopwatchRepository(database.stopwatchDao).save(state),
    );

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          appDatabaseProvider.overrideWithValue(database),
          appClockProvider.overrideWithValue(Clock.fixed(now)),
          initialSettingsProvider.overrideWithValue(
            AppSettings(themeMode: mode),
          ),
        ],
        child: const ClockApp(),
      ),
    );
    await tester.runAsync(
      () => Future<void>.delayed(const Duration(milliseconds: 100)),
    );
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 100));

    await expectLater(
      find.byType(MaterialApp),
      matchesGoldenFile('goldens/$name.png'),
    );
    await tester.pumpWidget(const SizedBox());
    await tester.pump(const Duration(seconds: 1));
  });
}
