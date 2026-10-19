import 'package:clock_evolution/features/stopwatch/domain/elapsed_formatter.dart';
import 'package:clock_evolution/features/stopwatch/domain/lap.dart';
import 'package:clock_evolution/features/stopwatch/domain/lap_calculator.dart';
import 'package:clock_evolution/features/stopwatch/domain/stopwatch_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'stopwatch_view_model.freezed.dart';

enum PrimaryAction { start, pause, resume }

enum LapHighlight { none, fastest, slowest }

@freezed
abstract class LapView with _$LapView {
  const factory LapView({
    required int index,
    required String lapText,
    required LapHighlight highlight,
  }) = _LapView;
}

@freezed
abstract class StopwatchViewModel with _$StopwatchViewModel {
  const factory StopwatchViewModel({
    required StopwatchStatus status,
    required PrimaryAction primaryAction,
    required bool lapEnabled,
    required bool resetEnabled,
    required bool requiresResetConfirmation,
    required List<LapView> laps,
  }) = _StopwatchViewModel;

  factory StopwatchViewModel.from(StopwatchState state) {
    final laps = state.recordedLaps;
    final extremes = extremesOf(laps);
    return StopwatchViewModel(
      status: state.status,
      primaryAction: switch (state.status) {
        StopwatchStatus.idle => PrimaryAction.start,
        StopwatchStatus.running => PrimaryAction.pause,
        StopwatchStatus.paused => PrimaryAction.resume,
      },
      lapEnabled: state.status == StopwatchStatus.running,
      resetEnabled: state.status != StopwatchStatus.idle,
      requiresResetConfirmation: state.status == StopwatchStatus.running,
      laps: [
        for (final lap in laps.reversed)
          LapView(
            index: lap.index,
            lapText: formatElapsed(lap.lapTime),
            highlight: _highlightOf(lap, extremes),
          ),
      ],
    );
  }
}

LapHighlight _highlightOf(Lap lap, ({Lap fastest, Lap slowest})? extremes) {
  if (extremes == null ||
      extremes.fastest.lapTime == extremes.slowest.lapTime) {
    return LapHighlight.none;
  }
  if (lap == extremes.fastest) {
    return LapHighlight.fastest;
  }
  if (lap == extremes.slowest) {
    return LapHighlight.slowest;
  }
  return LapHighlight.none;
}
