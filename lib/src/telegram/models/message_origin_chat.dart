part of 'models.dart';

/// This object represents a message that was originally sent on behalf of a chat to a group chat.
class MessageOriginChat implements MessageOrigin {
  /// Type of the message origin, always “chat”
  @override
  final MessageOriginType type = MessageOriginType.chat;

  /// Date the message was sent originally in Unix time
  @override
  final int date;

  /// Chat that sent the message originally
  final Chat senderChat;

  /// For messages originally sent by an anonymous chat administrator, original message author signature
  final String? authorSignature;

  /// Constructor
  const MessageOriginChat({
    required this.date,
    required this.senderChat,
    this.authorSignature,
  });

  /// Constructor from JSON data
  factory MessageOriginChat.fromJson(Map<String, dynamic> json) {
    return MessageOriginChat(
      date: json['date'],
      senderChat: Chat.fromJson(json['sender_chat']),
      authorSignature: json['author_signature'],
    );
  }

  /// Converts to JSON encodable [Map]
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
      'date': date,
      'sender_chat': senderChat.toJson(),
      'author_signature': authorSignature,
    }..removeWhere(_nullFilter);
  }
}
