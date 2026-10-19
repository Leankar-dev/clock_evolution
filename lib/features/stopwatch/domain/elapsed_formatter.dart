typedef ElapsedParts = ({String main, String fraction});

ElapsedParts formatElapsedParts(Duration elapsed) {
  final totalMilliseconds = elapsed.isNegative ? 0 : elapsed.inMilliseconds;
  final centiseconds = (totalMilliseconds ~/ 10) % 100;
  final totalSeconds = totalMilliseconds ~/ 1000;
  final seconds = totalSeconds % 60;
  final minutes = (totalSeconds ~/ 60) % 60;
  final hours = totalSeconds ~/ 3600;
  final mm = minutes.toString().padLeft(2, '0');
  final ss = seconds.toString().padLeft(2, '0');
  final main = hours > 0
      ? '${hours.toString().padLeft(2, '0')}:$mm:$ss'
      : '$mm:$ss';
  return (main: main, fraction: '.${centiseconds.toString().padLeft(2, '0')}');
}

String formatElapsed(Duration elapsed) {
  final parts = formatElapsedParts(elapsed);
  return '${parts.main}${parts.fraction}';
}
