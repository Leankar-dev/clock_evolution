import 'package:clock_evolution/core/clock/clock_provider.dart';
import 'package:clock_evolution/features/stopwatch/application/stopwatch_controller.dart';
import 'package:clock_evolution/features/stopwatch/domain/stopwatch_state.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'stopwatch_elapsed_provider.g.dart';

const _refreshInterval = Duration(milliseconds: 33);

@riverpod
Stream<Duration> stopwatchElapsed(Ref ref) async* {
  final clock = ref.watch(appClockProvider);
  final current = ref.watch(
    stopwatchControllerProvider.select((value) => value.value),
  );
  if (current == null) {
    yield Duration.zero;
    return;
  }
  yield current.elapsedAt(clock.now());
  if (current is! StopwatchRunning) {
    return;
  }
  await for (final _ in Stream<void>.periodic(_refreshInterval)) {
    yield current.elapsedAt(clock.now());
  }
}
