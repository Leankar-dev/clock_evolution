import 'package:clock_evolution/core/database/app_database.dart';
import 'package:clock_evolution/features/stopwatch/data/stopwatch_dao.dart';
import 'package:clock_evolution/features/stopwatch/domain/lap.dart';
import 'package:clock_evolution/features/stopwatch/domain/stopwatch_state.dart';
import 'package:drift/drift.dart';

abstract final class StopwatchMapper {
  static StopwatchState toState(
    StopwatchSessionRow session,
    List<LapRow> lapRows,
  ) {
    final laps = [
      for (final row in lapRows)
        Lap(
          index: row.lapIndex,
          lapTime: Duration(milliseconds: row.lapMs),
          totalTime: Duration(milliseconds: row.totalMs),
        ),
    ];
    final accumulated = Duration(milliseconds: session.accumulatedMs);
    final startedAtMs = session.startedAtEpochMs;
    if (session.status == StopwatchStatus.idle) {
      return const StopwatchState.idle();
    }
    if (session.status == StopwatchStatus.running && startedAtMs != null) {
      return StopwatchState.running(
        startedAt: DateTime.fromMillisecondsSinceEpoch(startedAtMs),
        accumulated: accumulated,
        laps: laps,
      );
    }
    return StopwatchState.paused(accumulated: accumulated, laps: laps);
  }

  static StopwatchSessionsCompanion toSessionCompanion(StopwatchState state) {
    final startedAt = switch (state) {
      StopwatchRunning(:final startedAt) => startedAt,
      _ => null,
    };
    final accumulated = switch (state) {
      StopwatchRunning(:final accumulated) ||
      StopwatchPaused(:final accumulated) => accumulated,
      StopwatchIdle() => Duration.zero,
    };
    return StopwatchSessionsCompanion.insert(
      id: const Value(StopwatchDao.sessionId),
      status: state.status,
      startedAtEpochMs: Value(startedAt?.millisecondsSinceEpoch),
      accumulatedMs: accumulated.inMilliseconds,
    );
  }

  static List<LapsCompanion> toLapCompanions(List<Lap> laps) => [
    for (final lap in laps)
      LapsCompanion.insert(
        lapIndex: lap.index,
        lapMs: lap.lapTime.inMilliseconds,
        totalMs: lap.totalTime.inMilliseconds,
      ),
  ];
}
