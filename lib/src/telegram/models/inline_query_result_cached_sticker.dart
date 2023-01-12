part of models;

/// Represents a link to a sticker stored on the Telegram servers. By default, this sticker will be sent by the user. Alternatively, you can use input_message_content to send a message with the specified content instead of the sticker.
///
/// Note: This will only work in Telegram versions released after 9 April, 2016 for static stickers and after 06 July, 2019 for animated stickers. Older clients will ignore them.
class InlineQueryResultCachedSticker extends InlineQueryResult {
  @override
  InlineQueryResultType get type => InlineQueryResultType.sticker;

  /// A valid file identifier of the sticker
  String stickerFileId;

  /// Optional. Inline keyboard attached to the message
  InlineKeyboardMarkup? replyMarkup;

  /// Optional. Content of the message to be sent instead of the sticker
  InputMessageContent? inputMessageContent;

  InlineQueryResultCachedSticker({
    required this.stickerFileId,
    required String id,
    this.replyMarkup,
    this.inputMessageContent,
  }) : super(id: id);

  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
      'id': id,
      'sticker_file_id': stickerFileId,
      'reply_markup': replyMarkup?.toJson(),
      'input_message_content': inputMessageContent?.toJson(),
    }..removeWhere((key, value) => value == null);
  }

  factory InlineQueryResultCachedSticker.fromJson(Map<String, dynamic> json) {
    return InlineQueryResultCachedSticker(
      stickerFileId: json['sticker_file_id'] as String,
      id: json['id'] as String,
      replyMarkup: json['reply_markup'] == null
          ? null
          : InlineKeyboardMarkup.fromJson(
              json['reply_markup'] as Map<String, dynamic>),
      inputMessageContent: json['input_message_content'] == null
          ? null
          : InputMessageContent.fromJson(
              json['input_message_content'] as Map<String, dynamic>),
    );
  }
}
