// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_parameters.freezed.dart';
part 'response_parameters.g.dart';

/// Describes why a request was unsuccessful.
@freezed
abstract class ResponseParameters with _$ResponseParameters {
  /// Constructs a [ResponseParameters] object
  const factory ResponseParameters({
    /// Optional. The group has been migrated to a supergroup with the specified
    /// identifier. This number may have more than 32 significant bits and some
    /// programming languages may have difficulty/silent defects in interpreting
    /// it. But it has at most 52 significant bits, so a signed 64-bit integer
    /// or double-precision float type are safe for storing this identifier.
    @JsonKey(name: 'migrate_to_chat_id') int? migrateToChatId,

    /// Optional. In case of exceeding flood control, the number of seconds left
    /// to wait before the request can be repeated
    @JsonKey(name: 'retry_after') int? retryAfter,
  }) = _ResponseParameters;

  /// Creates a [ResponseParameters] object from JSON object
  factory ResponseParameters.fromJson(Map<String, dynamic> json) =>
      _$ResponseParametersFromJson(json);
}
