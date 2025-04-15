import 'package:freezed_annotation/freezed_annotation.dart';

part 'input_story_content_type.g.dart';

/// This enum represents the type of input story content.
@JsonEnum(fieldRename: FieldRename.snake, alwaysCreate: true)
enum InputStoryContentType {
  /// Photo content type
  @JsonValue('photo')
  photo,

  /// Video content type
  @JsonValue('video')
  video;

  /// Converts the [InputStoryContentType] to its corresponding JSON value.
  String toJson() => _$InputStoryContentTypeEnumMap[this]!;
}
