import 'package:clock_evolution/features/stopwatch/application/stopwatch_controller.dart';
import 'package:clock_evolution/features/stopwatch/domain/stopwatch_view_model.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'stopwatch_view_model_provider.g.dart';

@riverpod
StopwatchViewModel? stopwatchViewModel(Ref ref) {
  final state = ref.watch(
    stopwatchControllerProvider.select((value) => value.value),
  );
  return state == null ? null : StopwatchViewModel.from(state);
}
