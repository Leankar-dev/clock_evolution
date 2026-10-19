import 'package:clock_evolution/features/stopwatch/domain/stopwatch_state.dart';

abstract interface class StopwatchRepository {
  Future<StopwatchState> load();

  Future<void> save(StopwatchState state);
}
