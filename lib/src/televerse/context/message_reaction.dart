part of 'context.dart';

/// This class is used to represent an incoming message reaction update.
class MessageReactionContext extends Context {
  /// Constructs a new [MessageReactionContext].
  MessageReactionContext(super.bot, {required super.update});

  /// The [MessageReactionUpdated] object.
  MessageReactionUpdated get reactionUpdated => update.messageReaction!;

  /// The identifier of the message
  int get messageId => reactionUpdated.messageId;

  /// The user that changed the reaction, if the user isn't anonymous.
  User? get user => reactionUpdated.user;

  /// The chat in which the reaction was changed.
  Chat get chat => reactionUpdated.chat;

  /// Date of the change in Unix time.
  int get date => reactionUpdated.date;

  /// Previous list of reaction types that were set by the user.
  List<ReactionType> get oldReaction => reactionUpdated.oldReaction;

  /// New list of reaction types that have been set by the user.
  List<ReactionType> get newReaction => reactionUpdated.newReaction;
}
