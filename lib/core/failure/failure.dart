import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
abstract class Failure with _$Failure {
  const factory Failure.database(String message) = DatabaseFailure;
  const factory Failure.validation(String message) = ValidationFailure;
}
