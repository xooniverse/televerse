// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/telegram.dart';

part 'inline_query_result_video.freezed.dart';
part 'inline_query_result_video.g.dart';

/// Represents a link to a page containing an embedded video player or a video
/// file. By default, this video file will be sent by the user with an optional
/// caption. Alternatively, you can use input_message_content to send a message
/// with the specified content instead of the video.
///
/// If an InlineQueryResultVideo message contains an embedded video (e.g.,
/// YouTube), you must replace its content using input_message_content.
@freezed
abstract class InlineQueryResultVideo
    with _$InlineQueryResultVideo
    implements InlineQueryResult {
  /// Creates an instance of [InlineQueryResultVideo].
  const factory InlineQueryResultVideo({
    /// Type of the result, always [InlineQueryResultType.video]
    @JsonKey(name: 'type')
    @Default(InlineQueryResultType.video)
    InlineQueryResultType type,

    /// Unique identifier for this result, 1-64 Bytes
    @JsonKey(name: 'id') required String id,

    /// A valid URL for the embedded video player or video file
    @JsonKey(name: 'video_url') required String videoUrl,

    /// MIME type of the content of the video URL, "text/html" or "video/mp4"
    @JsonKey(name: 'mime_type') required String mimeType,

    /// URL of the thumbnail (JPEG only) for the video
    @JsonKey(name: 'thumbnail_url') required String thumbnailUrl,

    /// Title for the result
    @JsonKey(name: 'title') required String title,

    /// Optional. Caption of the video to be sent, 0-1024 characters after
    /// entities parsing
    @JsonKey(name: 'caption') String? caption,

    /// Optional. Mode for parsing entities in the video caption. See formatting
    /// options for more details.
    @JsonKey(name: 'parse_mode') ParseMode? parseMode,

    /// Optional. List of special entities that appear in the caption, which can
    /// be specified instead of parse_mode
    @JsonKey(name: 'caption_entities') List<MessageEntity>? captionEntities,

    /// Optional. Video width
    @JsonKey(name: 'video_width') int? videoWidth,

    /// Optional. Video height
    @JsonKey(name: 'video_height') int? videoHeight,

    /// Optional. Video duration in seconds
    @JsonKey(name: 'video_duration') int? videoDuration,

    /// Optional. Short description of the result
    @JsonKey(name: 'description') String? description,

    /// Optional. Inline keyboard attached to the message
    @JsonKey(name: 'reply_markup') InlineKeyboardMarkup? replyMarkup,

    /// Optional. Content of the message to be sent instead of the video. This
    /// field is required if InlineQueryResultVideo is used to send an HTML-page
    /// as a result (e.g., a YouTube video).
    @JsonKey(name: 'input_message_content')
    @InputMessageContentConverter()
    InputMessageContent? inputMessageContent,

    /// Optional. True, if the caption must be shown above the message media
    @JsonKey(name: 'show_caption_above_media') bool? showCaptionAboveMedia,
  }) = _InlineQueryResultVideo;

  /// Creates an instance of [InlineQueryResultVideo] from a JSON map.
  factory InlineQueryResultVideo.fromJson(Map<String, dynamic> json) =>
      _$InlineQueryResultVideoFromJson(json);

  const InlineQueryResultVideo._();
}
