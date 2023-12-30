part of 'context.dart';

/// The context of a chat boost updated event.
class ChatBoostUpdatedContext extends Context {
  /// Constructs an instance of [ChatBoostUpdatedContext].
  ChatBoostUpdatedContext(super.bot, {required super.update});

  /// The chat boost that was updated.
  ChatBoostUpdated get chatBoost => update.chatBoost!;

  /// The chat that the chat boost was updated in.
  Chat get chat => chatBoost.chat;

  /// The ChatID instance of the chat that was boosted.
  @override
  ChatID get id => ChatID(chat.id);

  /// The chat boost source.
  ChatBoostSource get source => chatBoost.boost.source;

  /// The chat boost source type.
  ChatBoostSourceType get sourceType => source.type;

  /// The chat boost ID.
  String get boostID => chatBoost.boost.boostId;

  /// The date when the chat was boosted as a [DateTime] instance.
  DateTime get addDate => DateTime.fromMillisecondsSinceEpoch(
        chatBoost.boost.addDate * 1000,
      );

  /// The date when the chat boost will expire as a [DateTime] instance.
  DateTime get expirationDate => DateTime.fromMillisecondsSinceEpoch(
        chatBoost.boost.expirationDate * 1000,
      );
}
