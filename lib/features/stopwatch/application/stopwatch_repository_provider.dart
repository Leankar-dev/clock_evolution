import 'package:clock_evolution/core/database/database_provider.dart';
import 'package:clock_evolution/features/stopwatch/data/drift_stopwatch_repository.dart';
import 'package:clock_evolution/features/stopwatch/domain/stopwatch_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'stopwatch_repository_provider.g.dart';

@Riverpod(keepAlive: true)
StopwatchRepository stopwatchRepository(Ref ref) =>
    DriftStopwatchRepository(ref.watch(appDatabaseProvider).stopwatchDao);
