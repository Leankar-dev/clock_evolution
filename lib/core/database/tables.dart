import 'package:clock_evolution/features/stopwatch/domain/stopwatch_state.dart';
import 'package:drift/drift.dart';

@DataClassName('StopwatchSessionRow')
class StopwatchSessions extends Table {
  IntColumn get id => integer()();
  IntColumn get status => intEnum<StopwatchStatus>()();
  IntColumn get startedAtEpochMs => integer().nullable()();
  IntColumn get accumulatedMs => integer()();

  @override
  Set<Column<Object>> get primaryKey => {id};
}

@TableIndex(name: 'laps_lap_index', columns: {#lapIndex})
@DataClassName('LapRow')
class Laps extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get lapIndex => integer()();
  IntColumn get lapMs => integer()();
  IntColumn get totalMs => integer()();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
}

@DataClassName('SettingEntryRow')
class AppSettingsEntries extends Table {
  TextColumn get key => text()();
  TextColumn get value => text()();

  @override
  Set<Column<Object>> get primaryKey => {key};
}
