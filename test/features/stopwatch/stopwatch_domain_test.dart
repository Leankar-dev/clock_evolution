import 'package:clock_evolution/features/stopwatch/domain/elapsed_formatter.dart';
import 'package:clock_evolution/features/stopwatch/domain/lap_calculator.dart';
import 'package:clock_evolution/features/stopwatch/domain/stopwatch_state.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final t0 = DateTime(2026, 10, 18, 10);
  const idle = StopwatchState.idle();

  group('StopwatchState transitions', () {
    test('idle ignores pause, resume and lap', () {
      expect(idle.pause(t0), idle);
      expect(idle.resume(t0), idle);
      expect(idle.lap(t0), idle);
    });

    test('idle start becomes running', () {
      expect(idle.start(t0).status, StopwatchStatus.running);
    });

    test('running accumulates elapsed time and records laps', () {
      final running = idle
          .start(t0)
          .lap(t0.add(const Duration(seconds: 5)))
          .lap(t0.add(const Duration(seconds: 12)));
      expect(running.recordedLaps.map((lap) => lap.lapTime), [
        const Duration(seconds: 5),
        const Duration(seconds: 7),
      ]);
      expect(
        running.elapsedAt(t0.add(const Duration(seconds: 12))),
        const Duration(seconds: 12),
      );
    });

    test('pause freezes time and resume continues', () {
      final paused = idle.start(t0).pause(t0.add(const Duration(seconds: 3)));
      expect(
        paused.elapsedAt(t0.add(const Duration(hours: 1))),
        const Duration(seconds: 3),
      );
      final resumed = paused.resume(t0.add(const Duration(seconds: 10)));
      expect(
        resumed.elapsedAt(t0.add(const Duration(seconds: 12))),
        const Duration(seconds: 5),
      );
    });

    test('paused ignores start and lap', () {
      final paused = idle.start(t0).pause(t0);
      expect(paused.start(t0), paused);
      expect(paused.lap(t0), paused);
    });

    test('reset returns to idle from running and paused', () {
      final running = idle.start(t0);
      expect(running.reset(), idle);
      expect(running.pause(t0).reset(), idle);
    });
  });

  group('lap calculator', () {
    test('extremes need at least two laps', () {
      expect(extremesOf(const []), isNull);
    });

    test('finds fastest and slowest', () {
      final laps = appendLap(
        appendLap(const [], const Duration(seconds: 10)),
        const Duration(seconds: 13),
      );
      final extremes = extremesOf(laps)!;
      expect(extremes.fastest.index, 2);
      expect(extremes.slowest.index, 1);
    });
  });

  group('elapsed formatter', () {
    test('formats minutes, seconds and centiseconds', () {
      expect(
        formatElapsed(
          const Duration(minutes: 2, seconds: 47, milliseconds: 380),
        ),
        '02:47.38',
      );
    });

    test('limits', () {
      expect(
        formatElapsed(
          const Duration(minutes: 59, seconds: 59, milliseconds: 990),
        ),
        '59:59.99',
      );
      expect(formatElapsed(const Duration(hours: 1)), '01:00:00.00');
      expect(formatElapsed(Duration.zero), '00:00.00');
    });
  });
}
