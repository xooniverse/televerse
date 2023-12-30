part of 'context.dart';

/// The context of a chat boost removed event.
class ChatBoostRemovedContext extends Context {
  /// Constructs an instance of [ChatBoostRemovedContext].
  ChatBoostRemovedContext(super.bot, {required super.update});

  /// The chat boost that was removed.
  ChatBoostRemoved get chatBoostRemoved => update.chatBoostRemoved!;

  /// The chat that the chat boost was removed in.
  Chat get chat => chatBoostRemoved.chat;

  /// The ChatID instance of the chat that was boosted.
  @override
  ChatID get id => ChatID(chat.id);

  /// The chat boost source.
  ChatBoostSource get source => chatBoostRemoved.source;

  /// The chat boost source type.
  ChatBoostSourceType get sourceType => source.type;

  /// The chat boost ID.
  String get boostID => chatBoostRemoved.boostId;

  /// The date when the chat boost was removed as a [DateTime] instance.
  DateTime get removeDate => DateTime.fromMillisecondsSinceEpoch(
        chatBoostRemoved.removeDate * 1000,
      );
}
