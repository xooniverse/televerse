part of 'models.dart';

/// Represents an object received when messages are deleted from a connected business account.
class BusinessMessagesDeleted implements WithChat {
  /// Unique identifier of the business connection.
  final String businessConnectionId;

  /// Information about a chat in the business account.
  /// The bot may not have access to the chat or the corresponding user.
  @override
  final Chat chat;

  /// A JSON-serialized list of identifiers of deleted messages in the chat
  /// of the business account.
  final List<int> messageIds;

  /// Creates a [BusinessMessagesDeleted] object.
  const BusinessMessagesDeleted({
    required this.businessConnectionId,
    required this.chat,
    required this.messageIds,
  });

  /// Creates a [BusinessMessagesDeleted] object from a JSON map.
  factory BusinessMessagesDeleted.fromJson(Map<String, dynamic> json) {
    return BusinessMessagesDeleted(
      businessConnectionId: json['business_connection_id'],
      chat: Chat.fromJson(json['chat']),
      messageIds: List<int>.from(json['message_ids']),
    );
  }

  /// Converts this object to a JSON map.
  Map<String, dynamic> toJson() {
    return {
      'business_connection_id': businessConnectionId,
      'chat': chat.toJson(),
      'message_ids': messageIds,
    };
  }
}
