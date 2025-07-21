// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/telegram.dart'
    show
        InlineKeyboardMarkup,
        InlineQueryResult,
        InlineQueryResultGif,
        InlineQueryResultType,
        InputMessageContent,
        InputMessageContentConverter,
        MessageEntity,
        ParseMode;

part 'inline_query_result_gif.freezed.dart';
part 'inline_query_result_gif.g.dart';

/// Represents a link to an animated GIF file. By default, this animated GIF file will be sent by the user with optional caption. Alternatively, you can use input_message_content to send a message with the specified content instead of the animation.
@freezed
abstract class InlineQueryResultGif
    with _$InlineQueryResultGif
    implements InlineQueryResult {
  /// Creates an [InlineQueryResultGif] object
  const factory InlineQueryResultGif({
    /// Type of the result, always [InlineQueryResultType.gif]
    @JsonKey(name: 'type')
    @Default(InlineQueryResultType.gif)
    InlineQueryResultType type,

    /// Unique identifier for this result, 1-64 Bytes
    @JsonKey(name: 'id') required String id,

    /// A valid URL for the GIF file. File size must not exceed 1MB
    @JsonKey(name: 'gif_url') required String gifUrl,

    /// URL of the static (JPEG or GIF) or animated (MPEG4) thumbnail for the result
    @JsonKey(name: 'thumbnail_url') required String thumbnailUrl,

    /// Optional. Width of the GIF
    @JsonKey(name: 'gif_width') int? gifWidth,

    /// Optional. Height of the GIF
    @JsonKey(name: 'gif_height') int? gifHeight,

    /// Optional. Duration of the GIF in seconds
    @JsonKey(name: 'gif_duration') int? gifDuration,

    /// Optional. MIME type of the thumbnail, must be one of "image/jpeg", "image/gif", or "video/mp4". Defaults to "image/jpeg"
    @JsonKey(name: 'thumbnail_mime_type') String? thumbnailMimeType,

    /// Optional. Title for the result
    @JsonKey(name: 'title') String? title,

    /// Optional. Caption of the GIF file to be sent, 0-1024 characters after entities parsing
    @JsonKey(name: 'caption') String? caption,

    /// Optional. Mode for parsing entities in the caption. See formatting options for more details.
    @JsonKey(name: 'parse_mode') ParseMode? parseMode,

    /// Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
    @JsonKey(name: 'caption_entities') List<MessageEntity>? captionEntities,

    /// Optional. Inline keyboard attached to the message
    @JsonKey(name: 'reply_markup') InlineKeyboardMarkup? replyMarkup,

    /// Optional. Content of the message to be sent instead of the GIF animation
    @JsonKey(name: 'input_message_content')
    @InputMessageContentConverter()
    InputMessageContent? inputMessageContent,

    /// Optional. True, if the caption must be shown above the message media
    @JsonKey(name: 'show_caption_above_media') bool? showCaptionAboveMedia,
  }) = _InlineQueryResultGif;

  /// Creates an [InlineQueryResultGif] object from JSON data
  factory InlineQueryResultGif.fromJson(Map<String, dynamic> json) =>
      _$InlineQueryResultGifFromJson(json);
}
