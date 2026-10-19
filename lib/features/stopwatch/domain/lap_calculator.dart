import 'package:clock_evolution/features/stopwatch/domain/lap.dart';

List<Lap> appendLap(List<Lap> laps, Duration totalTime) {
  final previousTotal = laps.isEmpty ? Duration.zero : laps.last.totalTime;
  final lap = Lap(
    index: laps.length + 1,
    lapTime: totalTime - previousTotal,
    totalTime: totalTime,
  );
  return [...laps, lap];
}

({Lap fastest, Lap slowest})? extremesOf(List<Lap> laps) {
  if (laps.length < 2) {
    return null;
  }
  var fastest = laps.first;
  var slowest = laps.first;
  for (final lap in laps) {
    if (lap.lapTime < fastest.lapTime) {
      fastest = lap;
    }
    if (lap.lapTime > slowest.lapTime) {
      slowest = lap;
    }
  }
  return (fastest: fastest, slowest: slowest);
}
