import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/inline_query_result.dart';
import 'package:televerse/src/telegram/models/input_message_content.dart';
import 'package:televerse/src/telegram/models/message_entity.dart';
import 'package:televerse/src/telegram/models/reply_markup.dart';
import 'package:televerse/televerse.dart' show InlineQueryResultType, ParseMode;

part 'inline_query_result_cached_video.freezed.dart';
part 'inline_query_result_cached_video.g.dart';

/// Represents a link to a video file stored on the Telegram servers. By
/// default, this video file will be sent by the user with an optional caption.
/// Alternatively, you can use input_message_content to send a message with the
/// specified content instead of the video.
@freezed
class InlineQueryResultCachedVideo
    with _$InlineQueryResultCachedVideo
    implements InlineQueryResult {
  /// Constructs an [InlineQueryResultCachedVideo] object
  const factory InlineQueryResultCachedVideo({
    /// Unique identifier for this result, 1-64 Bytes
    required String id,

    /// A valid file identifier for the video file
    @JsonKey(name: 'video_file_id') required String videoFileId,

    /// Title for the result
    required String title,

    /// Optional. Short description of the result
    String? description,

    /// Optional. Caption of the video to be sent, 0-1024 characters after
    /// entities parsing
    String? caption,

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
    @Default(InlineQueryResultType.video) InlineQueryResultType type,
  }) = _InlineQueryResultCachedVideo;

  /// Creates an [InlineQueryResultCachedVideo] from JSON data
  factory InlineQueryResultCachedVideo.fromJson(Map<String, dynamic> json) =>
      _$InlineQueryResultCachedVideoFromJson(json);
}
