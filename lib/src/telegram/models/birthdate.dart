// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'birthdate.freezed.dart';
part 'birthdate.g.dart';

/// Represents a user's birthdate.
@freezed
class Birthdate with _$Birthdate {
  /// Creates a [Birthdate] object.
  const factory Birthdate({
    /// Day of the user's birth; 1-31.
    @JsonKey(name: 'day') required int day,

    /// Month of the user's birth; 1-12.
    @JsonKey(name: 'month') required int month,

    /// Optional. Year of the user's birth.
    @JsonKey(name: 'year') int? year,
  }) = _Birthdate;

  /// Creates a [Birthdate] object from a JSON map.
  factory Birthdate.fromJson(Map<String, dynamic> json) =>
      _$BirthdateFromJson(json);
}
