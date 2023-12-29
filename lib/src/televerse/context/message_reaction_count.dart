part of 'context.dart';

/// Reactions to a message with anonymous reactions were changed.
class MessageReactionCountUpdatedContext extends Context {
  /// Constructs a new [MessageReactionCountUpdatedContext].
  MessageReactionCountUpdatedContext(super.bot, {required super.update});

  /// The [MessageReactionCountUpdated] object.
  MessageReactionCountUpdated get reactionCountUpdated =>
      update.messageReactionCount!;

  /// The identifier of the message
  int get messageId => reactionCountUpdated.messageId;

  /// The chat in which the reaction was changed.
  Chat get chat => reactionCountUpdated.chat;

  /// Date of the change in Unix time.
  int get date => reactionCountUpdated.date;

  /// List of reactions currently present on the message.
  List<ReactionCount> get reactions => reactionCountUpdated.reactions;
}
