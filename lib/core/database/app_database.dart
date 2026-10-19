import 'package:clock_evolution/core/database/tables.dart';
import 'package:clock_evolution/features/settings/data/settings_dao.dart';
import 'package:clock_evolution/features/stopwatch/data/stopwatch_dao.dart';
import 'package:clock_evolution/features/stopwatch/domain/stopwatch_state.dart';
import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

part 'app_database.g.dart';

@DriftDatabase(
  tables: [StopwatchSessions, Laps, AppSettingsEntries],
  daos: [StopwatchDao, SettingsDao],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase(super.e);

  AppDatabase.persistent() : super(driftDatabase(name: 'clock_evolution'));

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
    onCreate: (migrator) => migrator.createAll(),
    onUpgrade: (migrator, from, to) async {},
  );
}
