part of 'models.dart';

/// Represents a change of a reaction on a message performed by a user.
class MessageReactionUpdated implements ChatModel {
  /// The chat containing the message the user reacted to.
  @override
  final Chat chat;

  /// Unique identifier of the message inside the chat.
  final int messageId;

  /// The user that changed the reaction, if the user isn't anonymous.
  final User? user;

  /// The chat on behalf of which the reaction was changed, if the user is anonymous.
  final Chat? actorChat;

  /// Date of the change in Unix time.
  final int date;

  /// Previous list of reaction types that were set by the user.
  final List<ReactionType> oldReaction;

  /// New list of reaction types that have been set by the user.
  final List<ReactionType> newReaction;

  /// Creates a new instance of [MessageReactionUpdated].
  const MessageReactionUpdated({
    required this.chat,
    required this.messageId,
    this.user,
    this.actorChat,
    required this.date,
    required this.oldReaction,
    required this.newReaction,
  });

  /// Converts a [MessageReactionUpdated] object to JSON object.
  Map<String, dynamic> toJson() {
    return {
      'chat': chat.toJson(),
      'message_id': messageId,
      'user': user?.toJson(),
      'actor_chat': actorChat?.toJson(),
      'date': date,
      'old_reaction': oldReaction.map((e) => e.toJson()).toList(),
      'new_reaction': newReaction.map((e) => e.toJson()).toList(),
    }..removeWhere((_, v) => v == null);
  }

  /// Creates a [MessageReactionUpdated] object from JSON object.
  factory MessageReactionUpdated.fromJson(Map<String, dynamic> json) {
    return MessageReactionUpdated(
      chat: Chat.fromJson(json['chat']),
      messageId: json['message_id'],
      user: json['user'] != null ? User.fromJson(json['user']) : null,
      actorChat:
          json['actor_chat'] != null ? Chat.fromJson(json['actor_chat']) : null,
      date: json['date'],
      oldReaction: (json['old_reaction'] as List)
          .map((e) => ReactionType.fromJson(e))
          .toList(),
      newReaction: (json['new_reaction'] as List)
          .map((e) => ReactionType.fromJson(e))
          .toList(),
    );
  }
}
