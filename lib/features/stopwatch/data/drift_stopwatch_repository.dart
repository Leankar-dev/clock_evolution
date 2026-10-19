import 'package:clock_evolution/core/errors/failure.dart';
import 'package:clock_evolution/features/stopwatch/data/stopwatch_dao.dart';
import 'package:clock_evolution/features/stopwatch/data/stopwatch_mapper.dart';
import 'package:clock_evolution/features/stopwatch/domain/stopwatch_repository.dart';
import 'package:clock_evolution/features/stopwatch/domain/stopwatch_state.dart';

class DriftStopwatchRepository implements StopwatchRepository {
  const DriftStopwatchRepository(this._dao);

  final StopwatchDao _dao;

  @override
  Future<StopwatchState> load() async {
    try {
      final session = await _dao.findSession();
      if (session == null) {
        return const StopwatchState.idle();
      }
      final laps = await _dao.findLaps();
      return StopwatchMapper.toState(session, laps);
    } on Exception catch (error) {
      throw Failure.storage(error);
    }
  }

  @override
  Future<void> save(StopwatchState state) async {
    try {
      await _dao.replaceAll(
        session: StopwatchMapper.toSessionCompanion(state),
        lapRows: StopwatchMapper.toLapCompanions(state.recordedLaps),
      );
    } on Exception catch (error) {
      throw Failure.storage(error);
    }
  }
}
