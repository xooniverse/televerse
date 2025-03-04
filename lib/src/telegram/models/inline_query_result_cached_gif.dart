import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/inline_query_result.dart';
import 'package:televerse/src/telegram/models/input_message_content.dart';
import 'package:televerse/src/telegram/models/reply_markup.dart';
import 'package:televerse/src/telegram/models/message_entity.dart';
import 'package:televerse/televerse.dart' show InlineQueryResultType, ParseMode;

part 'inline_query_result_cached_gif.freezed.dart';
part 'inline_query_result_cached_gif.g.dart';

/// Represents a link to an animated GIF file stored on the Telegram servers. By
/// default, this animated GIF file will be sent by the user with an optional
/// caption. Alternatively, you can use input_message_content to send a message
/// with specified content instead of the animation.
@freezed
class InlineQueryResultCachedGif
    with _$InlineQueryResultCachedGif
    implements InlineQueryResult {
  /// Constructs an [InlineQueryResultCachedGif] object
  const factory InlineQueryResultCachedGif({
    /// Unique identifier for this result, 1-64 Bytes
    @JsonKey(name: 'id') required String id,

    /// A valid file identifier for the GIF file
    @JsonKey(name: 'gif_file_id') required String gifFileId,

    /// Optional. Title for the result
    @JsonKey(name: 'title') String? title,

    /// Optional. Caption of the GIF file to be sent, 0-1024 characters after
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

    /// Optional. Content of the message to be sent instead of the GIF animation
    @JsonKey(name: 'input_message_content')
    @InputMessageContentConverter()
    InputMessageContent? inputMessageContent,

    /// Optional. True, if the caption must be shown above the message media
    @JsonKey(name: 'show_caption_above_media') bool? showCaptionAboveMedia,

    /// Type of the result, always [InlineQueryResultType.gif]
    @JsonKey(name: 'type')
    @Default(InlineQueryResultType.gif)
    InlineQueryResultType type,
  }) = _InlineQueryResultCachedGif;

  /// Creates an instance of [InlineQueryResultCachedGif] from a JSON map
  factory InlineQueryResultCachedGif.fromJson(Map<String, dynamic> json) =>
      _$InlineQueryResultCachedGifFromJson(json);
}
