part of 'models.dart';

/// Describes reply parameters for the message that is being sent.
class ReplyParameters {
  /// Identifier of the message that will be replied to in the current chat, or in the chat chat_id if it is specified.
  final int messageId;

  /// If the message to be replied to is from a different chat, unique identifier for the chat or username of the channel (in the format @channelusername).
  final ID? chatId;

  /// Pass True if the message should be sent even if the specified message to be replied to is not found; can be used only for replies in the same chat and forum topic.
  final bool? allowSendingWithoutReply;

  /// Quoted part of the message to be replied to; 0-1024 characters after entities parsing. The quote must be an exact substring of the message to be replied to, including bold, italic, underline, strikethrough, spoiler, and custom_emoji entities. The message will fail to send if the quote isn't found in the original message.
  final String? quote;

  /// Mode for parsing entities in the quote. See formatting options for more details.
  final String? quoteParseMode;

  /// A JSON-serialized list of special entities that appear in the quote. It can be specified instead of quote_parse_mode.
  final List<MessageEntity>? quoteEntities;

  /// Position of the quote in the original message in UTF-16 code units.
  final int? quotePosition;

  /// Constructs a `ReplyParameters`.
  const ReplyParameters({
    required this.messageId,
    this.chatId,
    this.allowSendingWithoutReply,
    this.quote,
    this.quoteParseMode,
    this.quoteEntities,
    this.quotePosition,
  });

  /// Converts the `ReplyParameters` object to a JSON object.
  Map<String, dynamic> toJson() {
    return {
      'message_id': messageId,
      'chat_id': chatId?.id,
      'allow_sending_without_reply': allowSendingWithoutReply,
      'quote': quote,
      'quote_parse_mode': quoteParseMode,
      'quote_entities': quoteEntities?.map((e) => e.toJson()).toList(),
      'quote_position': quotePosition,
    }..removeWhere((_, v) => v == null);
  }

  /// Creates a `ReplyParameters` object from a JSON object.
  factory ReplyParameters.fromJson(Map<String, dynamic> json) {
    return ReplyParameters(
      messageId: json['message_id'],
      chatId: ID.create(json['chat_id']),
      allowSendingWithoutReply: json['allow_sending_without_reply'],
      quote: json['quote'],
      quoteParseMode: json['quote_parse_mode'],
      quoteEntities: json['quote_entities'] != null
          ? (json['quote_entities'] as List)
              .map((e) => MessageEntity.fromJson(e))
              .toList()
          : null,
      quotePosition: json['quote_position'],
    );
  }
}
