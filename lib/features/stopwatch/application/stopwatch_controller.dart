import 'package:clock_evolution/core/clock/clock_provider.dart';
import 'package:clock_evolution/core/errors/failure.dart';
import 'package:clock_evolution/features/stopwatch/application/stopwatch_repository_provider.dart';
import 'package:clock_evolution/features/stopwatch/domain/stopwatch_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'stopwatch_controller.g.dart';

@Riverpod(keepAlive: true)
class StopwatchController extends _$StopwatchController {
  @override
  Future<StopwatchState> build() =>
      ref.watch(stopwatchRepositoryProvider).load();

  Future<void> start() => _apply((current, now) => current.start(now));

  Future<void> pause() => _apply((current, now) => current.pause(now));

  Future<void> resume() => _apply((current, now) => current.resume(now));

  Future<void> lap() => _apply((current, now) => current.lap(now));

  Future<void> reset() => _apply((current, _) => current.reset());

  Future<void> _apply(
    StopwatchState Function(StopwatchState current, DateTime now) transition,
  ) async {
    final current = state.value;
    if (current == null) {
      return;
    }
    final next = transition(current, ref.read(appClockProvider).now());
    if (next == current) {
      return;
    }
    state = AsyncData(next);
    try {
      await ref.read(stopwatchRepositoryProvider).save(next);
    } on Failure catch (failure, stackTrace) {
      state = AsyncError<StopwatchState>(failure, stackTrace);
    }
  }
}
