import 'package:clock_evolution/core/database/app_database.dart';
import 'package:clock_evolution/core/database/tables.dart';
import 'package:drift/drift.dart';

part 'stopwatch_dao.g.dart';

@DriftAccessor(tables: [StopwatchSessions, Laps])
class StopwatchDao extends DatabaseAccessor<AppDatabase>
    with _$StopwatchDaoMixin {
  StopwatchDao(super.attachedDatabase);

  static const sessionId = 1;

  Future<StopwatchSessionRow?> findSession() => (select(
    stopwatchSessions,
  )..where((row) => row.id.equals(sessionId))).getSingleOrNull();

  Future<List<LapRow>> findLaps() =>
      (select(laps)..orderBy([(row) => OrderingTerm.asc(row.lapIndex)])).get();

  Future<void> replaceAll({
    required StopwatchSessionsCompanion session,
    required List<LapsCompanion> lapRows,
  }) {
    return transaction(() async {
      await into(stopwatchSessions).insertOnConflictUpdate(session);
      await delete(laps).go();
      await batch((batch) => batch.insertAll(laps, lapRows));
    });
  }
}
