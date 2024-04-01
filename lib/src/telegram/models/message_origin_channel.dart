part of 'models.dart';

/// This object represents a message that was originally sent to a channel chat.
class MessageOriginChannel implements MessageOrigin {
  /// Type of the message origin, always “channel”
  @override
  final MessageOriginType type = MessageOriginType.channel;

  /// Date the message was sent originally in Unix time
  @override
  final int date;

  /// Channel chat to which the message was originally sent
  final Chat chat;

  /// Unique message identifier inside the chat
  final int messageId;

  /// Signature of the original post author
  final String? authorSignature;

  /// Constructor
  const MessageOriginChannel({
    required this.date,
    required this.chat,
    required this.messageId,
    this.authorSignature,
  });

  /// Constructor from JSON data
  factory MessageOriginChannel.fromJson(Map<String, dynamic> json) {
    return MessageOriginChannel(
      date: json['date'],
      chat: Chat.fromJson(json['chat']),
      messageId: json['message_id'],
      authorSignature: json['author_signature'],
    );
  }

  /// Converts to JSON encodable [Map]
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
      'date': date,
      'chat': chat.toJson(),
      'message_id': messageId,
      'author_signature': authorSignature,
    }..removeWhere(_nullFilter);
  }
}
