part of 'models.dart';

/// Represents reaction changes on a message with anonymous reactions.
class MessageReactionCountUpdated {
  /// The chat containing the message.
  final Chat chat;

  /// Unique message identifier inside the chat.
  final int messageId;

  /// Date of the change in Unix time.
  final int date;

  /// List of reactions that are present on the message.
  final List<ReactionCount> reactions;

  /// Creates a new instance of [MessageReactionCountUpdated].
  const MessageReactionCountUpdated({
    required this.chat,
    required this.messageId,
    required this.date,
    required this.reactions,
  });

  /// Converts a [MessageReactionCountUpdated] object to JSON object.
  Map<String, dynamic> toJson() {
    return {
      'chat': chat.toJson(),
      'message_id': messageId,
      'date': date,
      'reactions': reactions.map((e) => e.toJson()).toList(),
    };
  }

  /// Creates a [MessageReactionCountUpdated] object from JSON object.
  factory MessageReactionCountUpdated.fromJson(Map<String, dynamic> json) {
    return MessageReactionCountUpdated(
      chat: Chat.fromJson(json['chat']),
      messageId: json['message_id'],
      date: json['date'],
      reactions: (json['reactions'] as List)
          .map((e) => ReactionCount.fromJson(e))
          .toList(),
    );
  }
}
