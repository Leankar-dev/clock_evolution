import 'package:clock_evolution/app/app.dart';
import 'package:clock_evolution/app/debug_provider_observer.dart';
import 'package:clock_evolution/core/database/app_database.dart';
import 'package:clock_evolution/core/database/database_provider.dart';
import 'package:clock_evolution/features/settings/application/settings_providers.dart';
import 'package:clock_evolution/features/settings/data/drift_settings_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';

Future<void> bootstrap() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );
  final database = AppDatabase.persistent();
  final settings = await DriftSettingsRepository(database.settingsDao).load();
  runApp(
    ProviderScope(
      observers: const [DebugProviderObserver()],
      overrides: [
        appDatabaseProvider.overrideWithValue(database),
        initialSettingsProvider.overrideWithValue(settings),
      ],
      child: const ClockApp(),
    ),
  );
}
