// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/telegram.dart'
    show
        InlineKeyboardMarkup,
        InlineQueryResult,
        InlineQueryResultCachedVideo,
        InlineQueryResultType,
        InputMessageContent,
        InputMessageContentConverter,
        MessageEntity,
        ParseMode;

part 'inline_query_result_cached_video.freezed.dart';
part 'inline_query_result_cached_video.g.dart';

/// Represents a link to a video file stored on the Telegram servers. By
/// default, this video file will be sent by the user with an optional caption.
/// Alternatively, you can use input_message_content to send a message with the
/// specified content instead of the video.
@freezed
abstract class InlineQueryResultCachedVideo
    with _$InlineQueryResultCachedVideo
    implements InlineQueryResult {
  /// Constructs an [InlineQueryResultCachedVideo] object
  const factory InlineQueryResultCachedVideo({
    /// Unique identifier for this result, 1-64 Bytes
    @JsonKey(name: 'id') required String id,

    /// A valid file identifier for the video file
    @JsonKey(name: 'video_file_id') required String videoFileId,

    /// Title for the result
    @JsonKey(name: 'title') required String title,

    /// Optional. Short description of the result
    @JsonKey(name: 'description') String? description,

    /// Optional. Caption of the video to be sent, 0-1024 characters after
    /// entities parsing
    @JsonKey(name: 'caption') String? caption,

    /// Optional. Mode for parsing entities in the video caption. See formatting
    /// options for more details.
    @JsonKey(name: 'parse_mode') ParseMode? parseMode,

    /// Optional. List of special entities that appear in the caption, which can
    /// be specified instead of parse_mode
    @JsonKey(name: 'caption_entities') List<MessageEntity>? captionEntities,

    /// Optional. Inline keyboard attached to the message
    @JsonKey(name: 'reply_markup') InlineKeyboardMarkup? replyMarkup,

    /// Optional. Content of the message to be sent instead of the video
    @JsonKey(name: 'input_message_content')
    @InputMessageContentConverter()
    InputMessageContent? inputMessageContent,

    /// Optional. True, if the caption must be shown above the message media
    @JsonKey(name: 'show_caption_above_media') bool? showCaptionAboveMedia,

    /// Type of the result, always [InlineQueryResultType.video]
    @JsonKey(name: 'type')
    @Default(InlineQueryResultType.video)
    InlineQueryResultType type,
  }) = _InlineQueryResultCachedVideo;

  /// Creates an [InlineQueryResultCachedVideo] from JSON data
  factory InlineQueryResultCachedVideo.fromJson(Map<String, dynamic> json) =>
      _$InlineQueryResultCachedVideoFromJson(json);
}
