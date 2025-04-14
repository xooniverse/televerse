// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/televerse.dart';

part 'input_story_content.freezed.dart';
part 'input_story_content.g.dart';

/// This object describes the content of a story to post. Currently, it can be one of
/// - InputStoryContentPhoto
/// - InputStoryContentVideo
@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.snake)
sealed class InputStoryContent with _$InputStoryContent {
  /// Describes a photo to post as a story.
  const factory InputStoryContent.photo({
    /// Type of the content, always "photo"
    @JsonKey(name: 'type') @Default('photo') final String type,

    /// The photo to post as a story. The photo must be of the size 1080x1920 and
    /// must not exceed 10 MB.
    @JsonKey(name: 'photo') @InputFileConverter() required InputFile photo,
  }) = InputStoryContentPhoto;

  /// Describes a video to post as a story.
  const factory InputStoryContent.video({
    /// Type of the content, always "video"
    @JsonKey(name: 'type') @Default('video') final String type,

    /// The video to post as a story. The video must be of the size 720x1280,
    /// streamable, encoded with H.265 codec, with key frames added each second
    /// in the MPEG4 format, and must not exceed 30 MB.
    @JsonKey(name: 'video') @InputFileConverter() required InputFile video,

    /// Optional. Precise duration of the video in seconds; 0-60
    @JsonKey(name: 'duration') double? duration,

    /// Optional. Timestamp in seconds of the frame that will be used as the
    /// static cover for the story. Defaults to 0.0.
    @JsonKey(name: 'cover_frame_timestamp') double? coverFrameTimestamp,

    /// Optional. Pass True if the video has no sound
    @JsonKey(name: 'is_animation') bool? isAnimation,
  }) = InputStoryContentVideo;

  /// Creates an instance of [InputStoryContent] from JSON data
  factory InputStoryContent.fromJson(Map<String, dynamic> json) =>
      _$InputStoryContentFromJson(json);
}
