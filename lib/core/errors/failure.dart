import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
sealed class Failure with _$Failure implements Exception {
  const factory Failure.storage(Object cause) = StorageFailure;
  const factory Failure.validation(String field) = ValidationFailure;
  const factory Failure.unexpected(Object cause) = UnexpectedFailure;
}
