import 'package:clock_evolution/features/stopwatch/domain/lap.dart';
import 'package:clock_evolution/features/stopwatch/domain/lap_calculator.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'stopwatch_state.freezed.dart';

enum StopwatchStatus { idle, running, paused }

@freezed
sealed class StopwatchState with _$StopwatchState {
  const factory StopwatchState.idle() = StopwatchIdle;

  const factory StopwatchState.running({
    required DateTime startedAt,
    required Duration accumulated,
    required List<Lap> laps,
  }) = StopwatchRunning;

  const factory StopwatchState.paused({
    required Duration accumulated,
    required List<Lap> laps,
  }) = StopwatchPaused;

  const StopwatchState._();

  StopwatchStatus get status => switch (this) {
    StopwatchIdle() => StopwatchStatus.idle,
    StopwatchRunning() => StopwatchStatus.running,
    StopwatchPaused() => StopwatchStatus.paused,
  };

  List<Lap> get recordedLaps => switch (this) {
    StopwatchIdle() => const [],
    StopwatchRunning(:final laps) || StopwatchPaused(:final laps) => laps,
  };

  Duration elapsedAt(DateTime now) => switch (this) {
    StopwatchIdle() => Duration.zero,
    StopwatchRunning(:final startedAt, :final accumulated) =>
      accumulated + now.difference(startedAt),
    StopwatchPaused(:final accumulated) => accumulated,
  };

  StopwatchState start(DateTime now) => switch (this) {
    StopwatchIdle() => StopwatchState.running(
      startedAt: now,
      accumulated: Duration.zero,
      laps: const [],
    ),
    _ => this,
  };

  StopwatchState pause(DateTime now) => switch (this) {
    StopwatchRunning(:final laps) => StopwatchState.paused(
      accumulated: elapsedAt(now),
      laps: laps,
    ),
    _ => this,
  };

  StopwatchState resume(DateTime now) => switch (this) {
    StopwatchPaused(:final accumulated, :final laps) => StopwatchState.running(
      startedAt: now,
      accumulated: accumulated,
      laps: laps,
    ),
    _ => this,
  };

  StopwatchState lap(DateTime now) => switch (this) {
    StopwatchRunning(:final startedAt, :final accumulated, :final laps) =>
      StopwatchState.running(
        startedAt: startedAt,
        accumulated: accumulated,
        laps: appendLap(laps, elapsedAt(now)),
      ),
    _ => this,
  };

  StopwatchState reset() => const StopwatchState.idle();
}
