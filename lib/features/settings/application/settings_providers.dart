import 'package:clock_evolution/core/database/database_provider.dart';
import 'package:clock_evolution/features/settings/data/drift_settings_repository.dart';
import 'package:clock_evolution/features/settings/domain/app_settings.dart';
import 'package:clock_evolution/features/settings/domain/settings_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'settings_providers.g.dart';

@Riverpod(keepAlive: true)
SettingsRepository settingsRepository(Ref ref) =>
    DriftSettingsRepository(ref.watch(appDatabaseProvider).settingsDao);

@Riverpod(keepAlive: true)
AppSettings initialSettings(Ref ref) => const AppSettings();
