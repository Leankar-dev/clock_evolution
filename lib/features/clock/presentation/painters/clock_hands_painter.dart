import 'dart:math' as math;

import 'package:clock_evolution/app/theme/clock_palette.dart';
import 'package:clock_evolution/features/clock/domain/angle_calculator.dart';
import 'package:flutter/material.dart';

class ClockTimeNotifier extends ChangeNotifier {
  ClockTimeNotifier(this._now);

  DateTime _now;

  DateTime get now => _now;

  set now(DateTime value) {
    _now = value;
    notifyListeners();
  }
}

class ClockHandsPainter extends CustomPainter {
  ClockHandsPainter({required this.time, required this.palette})
    : super(repaint: time);

  final ClockTimeNotifier time;
  final ClockPalette palette;

  @override
  void paint(Canvas canvas, Size size) {
    final center = size.center(Offset.zero);
    final radius = size.shortestSide / 2;
    final now = time.now;
    _paintHand(
      canvas,
      center,
      hourAngleOf(now),
      length: radius * 0.5,
      tail: 0,
      width: radius * 0.045,
      color: palette.handPrimary,
    );
    _paintHand(
      canvas,
      center,
      minuteAngleOf(now),
      length: radius * 0.76,
      tail: 0,
      width: radius * 0.04,
      color: palette.handPrimary,
    );
    _paintSecondHand(canvas, center, radius, secondAngleOf(now));
    _paintPivot(canvas, center, radius);
  }

  void _paintHand(
    Canvas canvas,
    Offset center,
    double angle, {
    required double length,
    required double tail,
    required double width,
    required Color color,
  }) {
    final direction = Offset(math.sin(angle), -math.cos(angle));
    canvas.drawLine(
      center - direction * tail,
      center + direction * length,
      Paint()
        ..strokeCap = StrokeCap.round
        ..strokeWidth = width
        ..color = color,
    );
  }

  void _paintSecondHand(
    Canvas canvas,
    Offset center,
    double radius,
    double angle,
  ) {
    _paintHand(
      canvas,
      center,
      angle,
      length: radius * 0.8,
      tail: radius * 0.24,
      width: radius * 0.012,
      color: palette.handSecondsAccent,
    );
    final direction = Offset(math.sin(angle), -math.cos(angle));
    canvas.drawCircle(
      center - direction * radius * 0.24,
      radius * 0.03,
      Paint()..color = palette.handSecondsAccent,
    );
  }

  void _paintPivot(Canvas canvas, Offset center, double radius) {
    canvas
      ..drawCircle(center, radius * 0.045, Paint()..color = palette.accent)
      ..drawCircle(center, radius * 0.02, Paint()..color = palette.clockFace);
  }

  @override
  bool shouldRepaint(ClockHandsPainter oldDelegate) =>
      time != oldDelegate.time || palette != oldDelegate.palette;
}
