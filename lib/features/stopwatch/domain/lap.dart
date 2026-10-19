import 'package:freezed_annotation/freezed_annotation.dart';

part 'lap.freezed.dart';

@freezed
abstract class Lap with _$Lap {
  const factory Lap({
    required int index,
    required Duration lapTime,
    required Duration totalTime,
  }) = _Lap;
}
