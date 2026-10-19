import 'dart:math' as math;

import 'package:clock_evolution/app/theme/clock_palette.dart';
import 'package:flutter/material.dart';

class ClockFacePainter extends CustomPainter {
  ClockFacePainter({
    required this.palette,
    required this.numeralStyle,
    required this.dayLabel,
    required this.dayLabelStyle,
  });

  final ClockPalette palette;
  final TextStyle numeralStyle;
  final String dayLabel;
  final TextStyle dayLabelStyle;

  static const _numerals = {0: '12', 3: '3', 6: '6', 9: '9'};

  @override
  void paint(Canvas canvas, Size size) {
    final center = size.center(Offset.zero);
    final radius = size.shortestSide / 2;
    _paintDial(canvas, center, radius);
    _paintTicks(canvas, center, radius);
    _paintNumerals(canvas, center, radius);
    _paintText(
      canvas,
      dayLabel,
      dayLabelStyle,
      center + Offset(0, radius * 0.32),
    );
  }

  void _paintDial(Canvas canvas, Offset center, double radius) {
    canvas
      ..drawCircle(center, radius, Paint()..color = palette.clockFace)
      ..drawCircle(
        center,
        radius - 1,
        Paint()
          ..style = PaintingStyle.stroke
          ..strokeWidth = 2
          ..color = palette.surfaceBorder,
      );
  }

  void _paintTicks(Canvas canvas, Offset center, double radius) {
    final major = Paint()
      ..strokeCap = StrokeCap.round
      ..strokeWidth = radius * 0.03
      ..color = palette.clockTickMajor;
    final minor = Paint()
      ..strokeCap = StrokeCap.round
      ..strokeWidth = radius * 0.01
      ..color = palette.clockTickMinor;
    final outer = radius * 0.92;
    for (var tick = 0; tick < 60; tick++) {
      final isHour = tick % 5 == 0;
      if (isHour && _numerals.containsKey(tick ~/ 5)) {
        continue;
      }
      final inner = outer - radius * (isHour ? 0.09 : 0.035);
      final angle = tick / 60 * 2 * math.pi;
      final direction = Offset(math.sin(angle), -math.cos(angle));
      canvas.drawLine(
        center + direction * inner,
        center + direction * outer,
        isHour ? major : minor,
      );
    }
  }

  void _paintNumerals(Canvas canvas, Offset center, double radius) {
    for (final entry in _numerals.entries) {
      final angle = entry.key / 12 * 2 * math.pi;
      final position =
          center + Offset(math.sin(angle), -math.cos(angle)) * radius * 0.74;
      _paintText(canvas, entry.value, numeralStyle, position);
    }
  }

  void _paintText(Canvas canvas, String text, TextStyle style, Offset center) {
    final painter = TextPainter(
      text: TextSpan(text: text, style: style),
      textDirection: TextDirection.ltr,
    )..layout();
    painter.paint(canvas, center - Offset(painter.width, painter.height) / 2);
  }

  @override
  bool shouldRepaint(ClockFacePainter oldDelegate) =>
      palette != oldDelegate.palette ||
      numeralStyle != oldDelegate.numeralStyle ||
      dayLabel != oldDelegate.dayLabel ||
      dayLabelStyle != oldDelegate.dayLabelStyle;
}
