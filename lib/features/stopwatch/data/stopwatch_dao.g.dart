// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stopwatch_dao.dart';

// ignore_for_file: type=lint
mixin _$StopwatchDaoMixin on DatabaseAccessor<AppDatabase> {
  $StopwatchSessionsTable get stopwatchSessions =>
      attachedDatabase.stopwatchSessions;
  $LapsTable get laps => attachedDatabase.laps;
  StopwatchDaoManager get managers => StopwatchDaoManager(this);
}

class StopwatchDaoManager {
  final _$StopwatchDaoMixin _db;
  StopwatchDaoManager(this._db);
  $$StopwatchSessionsTableTableManager get stopwatchSessions =>
      $$StopwatchSessionsTableTableManager(
        _db.attachedDatabase,
        _db.stopwatchSessions,
      );
  $$LapsTableTableManager get laps =>
      $$LapsTableTableManager(_db.attachedDatabase, _db.laps);
}
