// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/telegram.dart';
part 'inline_query_result_cached_sticker.freezed.dart';
part 'inline_query_result_cached_sticker.g.dart';

/// Represents a link to a sticker stored on the Telegram servers. By default,
/// this sticker will be sent by the user. Alternatively, you can use
/// input_message_content to send a message with the specified content instead
/// of the sticker.
///
/// Note: This will only work in Telegram versions released after 9 April, 2016
/// for static stickers and after 06 July, 2019 for animated stickers. Older
/// clients will ignore them.
@freezed
abstract class InlineQueryResultCachedSticker
    with _$InlineQueryResultCachedSticker
    implements InlineQueryResult {
  /// Constructs an [InlineQueryResultCachedSticker] object
  const factory InlineQueryResultCachedSticker({
    /// Unique identifier for this result, 1-64 Bytes
    @JsonKey(name: 'id') required String id,

    /// A valid file identifier of the sticker
    @JsonKey(name: 'sticker_file_id') required String stickerFileId,

    /// Optional. Inline keyboard attached to the message
    @JsonKey(name: 'reply_markup') InlineKeyboardMarkup? replyMarkup,

    /// Optional. Content of the message to be sent instead of the sticker
    @JsonKey(name: 'input_message_content')
    @InputMessageContentConverter()
    InputMessageContent? inputMessageContent,

    /// Type of the result, always [InlineQueryResultType.sticker]
    @JsonKey(name: 'type')
    @Default(InlineQueryResultType.sticker)
    InlineQueryResultType type,
  }) = _InlineQueryResultCachedSticker;

  /// Constructs an [InlineQueryResultCachedSticker] object from a JSON map
  factory InlineQueryResultCachedSticker.fromJson(Map<String, dynamic> json) =>
      _$InlineQueryResultCachedStickerFromJson(json);
}
