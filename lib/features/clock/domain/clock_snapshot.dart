import 'package:clock_evolution/features/clock/domain/angle_calculator.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'clock_snapshot.freezed.dart';

@freezed
abstract class ClockSnapshot with _$ClockSnapshot {
  const factory ClockSnapshot({required DateTime now}) = _ClockSnapshot;
  const ClockSnapshot._();

  double get hourAngle => hourAngleOf(now);
  double get minuteAngle => minuteAngleOf(now);
  double get secondAngle => secondAngleOf(now);
}
