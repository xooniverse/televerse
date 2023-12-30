part of 'models.dart';

/// This object describes a message that was deleted or is otherwise inaccessible to the bot.
class InaccessibleMessage extends MaybeInaccessibleMessage {
  /// Constructor
  const InaccessibleMessage({
    required super.chat,
    required super.messageId,
    required super.date,
  });

  /// Constructor from JSON data
  factory InaccessibleMessage.fromJson(Map<String, dynamic> json) {
    return InaccessibleMessage(
      chat: Chat.fromJson(json['chat']),
      messageId: json['message_id'],
      date: json['date'],
    );
  }

  /// Converts to JSON encodable [Map]
  @override
  Map<String, dynamic> toJson() {
    return {
      'chat': chat.toJson(),
      'message_id': messageId,
      'date': date,
    };
  }
}
