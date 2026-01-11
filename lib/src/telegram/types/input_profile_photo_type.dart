import 'package:freezed_annotation/freezed_annotation.dart';

/// Type of profile photo
@JsonEnum(fieldRename: FieldRename.snake)
enum InputProfilePhotoType {
  /// Static profile photo in JPG format
  @JsonValue('static')
  static,

  /// Animated profile photo in MPEG4 format
  @JsonValue('animated')
  animated,
}
