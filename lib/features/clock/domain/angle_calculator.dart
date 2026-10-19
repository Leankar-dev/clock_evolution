import 'dart:math' as math;

const double _fullTurn = 2 * math.pi;

double secondsFractionOf(DateTime time) =>
    time.second + time.millisecond / 1000 + time.microsecond / 1000000;

double minutesFractionOf(DateTime time) =>
    time.minute + secondsFractionOf(time) / 60;

double hourAngleOf(DateTime time) {
  final hours = (time.hour % 12) + minutesFractionOf(time) / 60;
  return hours / 12 * _fullTurn;
}

double minuteAngleOf(DateTime time) => minutesFractionOf(time) / 60 * _fullTurn;

double secondAngleOf(DateTime time) => secondsFractionOf(time) / 60 * _fullTurn;
