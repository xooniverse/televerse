import 'package:freezed_annotation/freezed_annotation.dart';

part 'story_content_type.g.dart';

/// This enum represents the type of story content.
@JsonEnum(fieldRename: FieldRename.snake, alwaysCreate: true)
enum StoryContentType {
  /// Photo content type
  @JsonValue('photo')
  photo,

  /// Video content type
  @JsonValue('video')
  video;

  /// Converts the [StoryContentType] to its corresponding JSON value.
  String toJson() => _$StoryContentTypeEnumMap[this]!;
}
