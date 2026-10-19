import 'dart:math' as math;

import 'package:clock_evolution/features/clock/domain/angle_calculator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('angle calculator', () {
    test('midnight points all hands to 12', () {
      final time = DateTime(2026);
      expect(hourAngleOf(time), 0);
      expect(minuteAngleOf(time), 0);
      expect(secondAngleOf(time), 0);
    });

    test('three o clock points hour hand to the right', () {
      expect(hourAngleOf(DateTime(2026, 1, 1, 3)), closeTo(math.pi / 2, 1e-9));
    });

    test('06:30:30 moves hands continuously', () {
      final time = DateTime(2026, 1, 1, 6, 30, 30);
      expect(secondAngleOf(time), closeTo(math.pi, 1e-9));
      expect(minuteAngleOf(time), closeTo(2 * math.pi * 30.5 / 60, 1e-9));
      expect(hourAngleOf(time), closeTo(2 * math.pi * 6.5083333 / 12, 1e-6));
    });

    test('12:59:59.999 stays below a full turn', () {
      final time = DateTime(2026, 1, 1, 12, 59, 59, 999);
      expect(secondAngleOf(time), lessThan(2 * math.pi));
      expect(minuteAngleOf(time), lessThan(2 * math.pi));
      expect(hourAngleOf(time), lessThan(2 * math.pi));
    });
  });
}
