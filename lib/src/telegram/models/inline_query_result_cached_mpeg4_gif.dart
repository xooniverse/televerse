// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/telegram.dart';
part 'inline_query_result_cached_mpeg4_gif.freezed.dart';
part 'inline_query_result_cached_mpeg4_gif.g.dart';

/// Represents a link to a video animation (H.264/MPEG-4 AVC video without
/// sound) stored on the Telegram servers. By default, this animated MPEG-4 file
/// will be sent by the user with an optional caption. Alternatively, you can
/// use input_message_content to send a message with the specified content
/// instead of the animation.
@freezed
abstract class InlineQueryResultCachedMpeg4Gif
    with _$InlineQueryResultCachedMpeg4Gif
    implements InlineQueryResult {
  /// Creates an [InlineQueryResultCachedMpeg4Gif] object
  const factory InlineQueryResultCachedMpeg4Gif({
    /// Unique identifier for this result, 1-64 Bytes
    @JsonKey(name: 'id') required String id,

    /// A valid file identifier for the MPEG4 file
    @JsonKey(name: 'mpeg4_file_id') required String mpeg4FileId,

    /// Type of the result, always [InlineQueryResultType.mpeg4Gif]
    @JsonKey(name: 'type')
    @Default(InlineQueryResultType.mpeg4Gif)
    InlineQueryResultType type,

    /// Optional. Title for the result
    @JsonKey(name: 'title') String? title,

    /// Optional. Caption of the MPEG-4 file to be sent, 0-1024 characters after
    /// entities parsing
    @JsonKey(name: 'caption') String? caption,

    /// Optional. Mode for parsing entities in the caption. See formatting
    /// options for more details.
    @JsonKey(name: 'parse_mode') ParseMode? parseMode,

    /// Optional. List of special entities that appear in the caption, which can
    /// be specified instead of parse_mode
    @JsonKey(name: 'caption_entities') List<MessageEntity>? captionEntities,

    /// Optional. Inline keyboard attached to the message
    @JsonKey(name: 'reply_markup') InlineKeyboardMarkup? replyMarkup,

    /// Optional. Content of the message to be sent instead of the video
    /// animation
    @JsonKey(name: 'input_message_content')
    @InputMessageContentConverter()
    InputMessageContent? inputMessageContent,

    /// Optional. True, if the caption must be shown above the message media
    @JsonKey(name: 'show_caption_above_media') bool? showCaptionAboveMedia,
  }) = _InlineQueryResultCachedMpeg4Gif;

  /// Creates an [InlineQueryResultCachedMpeg4Gif] object from a JSON map
  factory InlineQueryResultCachedMpeg4Gif.fromJson(Map<String, dynamic> json) =>
      _$InlineQueryResultCachedMpeg4GifFromJson(json);
}
