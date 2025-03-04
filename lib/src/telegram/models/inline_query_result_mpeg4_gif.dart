import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/inline_query_result.dart';
import 'package:televerse/src/telegram/models/input_message_content.dart';
import 'package:televerse/src/telegram/models/message_entity.dart';
import 'package:televerse/src/telegram/models/reply_markup.dart';
import 'package:televerse/televerse.dart';

part 'inline_query_result_mpeg4_gif.freezed.dart';
part 'inline_query_result_mpeg4_gif.g.dart';

/// Represents a link to a video animation (H.264/MPEG-4 AVC video without
/// sound). By default, this animated MPEG-4 file will be sent by the user with
/// optional caption. Alternatively, you can use input_message_content to send a
/// message with the specified content instead of the animation.
@freezed
class InlineQueryResultMpeg4Gif
    with _$InlineQueryResultMpeg4Gif
    implements InlineQueryResult {
  /// Constructs an [InlineQueryResultMpeg4Gif] object
  const factory InlineQueryResultMpeg4Gif({
    /// Type of the result, always [InlineQueryResultType.mpeg4Gif]
    @JsonKey(name: 'type')
    @Default(InlineQueryResultType.mpeg4Gif)
    InlineQueryResultType type,

    /// Unique identifier for this result, 1-64 Bytes
    @JsonKey(name: 'id') required String id,

    /// A valid URL for the MPEG4 file. File size must not exceed 1MB
    @JsonKey(name: 'mpeg4_url') required String mpeg4Url,

    /// URL of the static (JPEG or GIF) or animated (MPEG4) thumbnail for the result
    @JsonKey(name: 'thumbnail_url') required String thumbnailUrl,

    /// Optional. Video width
    @JsonKey(name: 'mpeg4_width') int? mpeg4Width,

    /// Optional. Video height
    @JsonKey(name: 'mpeg4_height') int? mpeg4Height,

    /// Optional. Video duration
    @JsonKey(name: 'mpeg4_duration') int? mpeg4Duration,

    /// Optional. MIME type of the thumbnail, must be one of "image/jpeg", "image/gif", or "video/mp4". Defaults to "image/jpeg"
    @JsonKey(name: 'thumbnail_mime_type') String? thumbnailMimeType,

    /// Optional. Title for the result
    @JsonKey(name: 'title') String? title,

    /// Optional. Caption of the MPEG-4 file to be sent, 0-1024 characters after entities parsing
    @JsonKey(name: 'caption') String? caption,

    /// Optional. Mode for parsing entities in the caption. See formatting options for more details.
    @JsonKey(name: 'parse_mode') ParseMode? parseMode,

    /// Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
    @JsonKey(name: 'caption_entities') List<MessageEntity>? captionEntities,

    /// Optional. Inline keyboard attached to the message
    @JsonKey(name: 'reply_markup') InlineKeyboardMarkup? replyMarkup,

    /// Optional. Content of the message to be sent instead of the video animation
    @JsonKey(name: 'input_message_content')
    @InputMessageContentConverter()
    InputMessageContent? inputMessageContent,

    /// Optional. True, if the caption must be shown above the message media
    @JsonKey(name: 'show_caption_above_media') bool? showCaptionAboveMedia,
  }) = _InlineQueryResultMpeg4Gif;

  /// Creates an [InlineQueryResultMpeg4Gif] from a JSON object
  factory InlineQueryResultMpeg4Gif.fromJson(Map<String, dynamic> json) =>
      _$InlineQueryResultMpeg4GifFromJson(json);
}
