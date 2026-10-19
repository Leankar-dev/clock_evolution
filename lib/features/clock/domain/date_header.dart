import 'package:freezed_annotation/freezed_annotation.dart';

part 'date_header.freezed.dart';

@freezed
abstract class DateHeader with _$DateHeader {
  const factory DateHeader({
    required DateTime date,
    required String locationName,
  }) = _DateHeader;
}
