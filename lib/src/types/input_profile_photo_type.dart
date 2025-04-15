import 'package:freezed_annotation/freezed_annotation.dart';

part 'input_profile_photo_type.g.dart';

/// Type of profile photo
@JsonEnum(fieldRename: FieldRename.snake, alwaysCreate: true)
enum InputProfilePhotoType {
  /// Static profile photo in JPG format
  @JsonValue('static')
  static,

  /// Animated profile photo in MPEG4 format
  @JsonValue('animated')
  animated;

  /// Converts the [InputProfilePhotoType] to its corresponding JSON value.
  String toJson() => _$InputProfilePhotoTypeEnumMap[this]!;
}
