part of 'models.dart';

/// Represents a link to a sticker stored on the Telegram servers. By default, this sticker will be sent by the user. Alternatively, you can use input_message_content to send a message with the specified content instead of the sticker.
///
/// Note: This will only work in Telegram versions released after 9 April, 2016 for static stickers and after 06 July, 2019 for animated stickers. Older clients will ignore them.
class InlineQueryResultCachedSticker implements InlineQueryResult {
  /// Unique identifier for this result, 1-64 Bytes
  @override
  final String id;

  /// Type of the result, always [InlineQueryResultType.sticker]
  @override
  InlineQueryResultType get type => InlineQueryResultType.sticker;

  /// A valid file identifier of the sticker
  final String stickerFileId;

  /// Optional. Inline keyboard attached to the message
  final InlineKeyboardMarkup? replyMarkup;

  /// Optional. Content of the message to be sent instead of the sticker
  final InputMessageContent? inputMessageContent;

  /// Constructs an [InlineQueryResultCachedSticker] object
  const InlineQueryResultCachedSticker({
    required this.stickerFileId,
    required this.id,
    this.replyMarkup,
    this.inputMessageContent,
  });

  /// Converts an [InlineQueryResultCachedSticker] object to a JSON map
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
      'id': id,
      'sticker_file_id': stickerFileId,
      'reply_markup': replyMarkup?.toJson(),
      'input_message_content': inputMessageContent?.toJson(),
    }..removeWhere(_nullFilter);
  }

  /// Constructs an [InlineQueryResultCachedSticker] object from a JSON map
  factory InlineQueryResultCachedSticker.fromJson(Map<String, dynamic> json) {
    return InlineQueryResultCachedSticker(
      stickerFileId: json['sticker_file_id'] as String,
      id: json['id'] as String,
      replyMarkup: json['reply_markup'] == null
          ? null
          : InlineKeyboardMarkup.fromJson(
              json['reply_markup'] as Map<String, dynamic>,
            ),
      inputMessageContent: json['input_message_content'] == null
          ? null
          : InputMessageContent.fromJson(
              json['input_message_content'] as Map<String, dynamic>,
            ),
    );
  }

  /// Copy method
  InlineQueryResultCachedSticker copyWith({
    String? id,
    String? stickerFileId,
    InlineKeyboardMarkup? replyMarkup,
    InputMessageContent? inputMessageContent,
  }) {
    return InlineQueryResultCachedSticker(
      id: id ?? this.id,
      stickerFileId: stickerFileId ?? this.stickerFileId,
      replyMarkup: replyMarkup ?? this.replyMarkup,
      inputMessageContent: inputMessageContent ?? this.inputMessageContent,
    );
  }
}
