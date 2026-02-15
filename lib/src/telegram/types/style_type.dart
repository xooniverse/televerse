import 'package:freezed_annotation/freezed_annotation.dart';

/// This enum represents the type of a clickable area on a story.
@JsonEnum(fieldRename: FieldRename.snake)
enum StyleType {
  /// Danger red color
  @JsonValue('danger')
  danger,

  /// Success green color
  @JsonValue('success')
  success,

  /// Primary blue color
  @JsonValue('primary')
  primary,
}
