import 'package:freezed_annotation/freezed_annotation.dart';

/// This enum represents the type of input story content.
@JsonEnum(fieldRename: FieldRename.snake)
enum InputStoryContentType {
  /// Photo content type
  @JsonValue('photo')
  photo,

  /// Video content type
  @JsonValue('video')
  video;
}
