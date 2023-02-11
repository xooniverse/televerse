library televerse.context;

import 'package:televerse/telegram.dart';
import 'package:televerse/televerse.dart';

part 'mixins/inline_mixin.dart';
part 'mixins/callback_mixin.dart';
part 'mixins/message_mixin.dart';
part 'mixins/management.dart';
part 'message.dart';
part 'inline_query.dart';
part 'callback_query.dart';

/// This class is used to represent the context of an update. It contains the update and the [RawAPI] instance.
///
/// Whenever an update is received, a context is created and passed to the handler. Currently we have 3 types of contexts:
/// - [MessageContext] - This context is used when a message is received.
/// - [InlineQueryContext] - This context is used when an inline query is received.
/// - [CallbackQueryContext] - This context is used when a callback query is received.
///
/// Contexts are subclasses of this class. You can use this class to access the update and the Televerse instance.
class Context {
  /// The RawAPI getter.
  RawAPI get api => _api;

  /// The RawAPI instance.
  final RawAPI _api;

  /// The [Update] instance.
  ///
  /// This represents the update for which the context is created.
  final Update update;

  /// The [ChatID] instance.
  ///
  /// This represents the ID of the chat from which the update was sent.
  ///
  /// Note: On `poll`, and `unknown` updates, this will throw a [TeleverseException].
  /// This is because these updates do not have a chat.
  ID get id {
    if (update.type == UpdateType.chatJoinRequest) {
      return ChatID(update.chatJoinRequest!.chat.id);
    }
    if (update.type == UpdateType.chatMember) {
      return ChatID(update.chatMember!.chat.id);
    }
    if (update.type == UpdateType.myChatMember) {
      return ChatID(update.myChatMember!.chat.id);
    }
    if (update.type == UpdateType.preCheckoutQuery) {
      return ChatID(update.preCheckoutQuery!.from.id);
    }
    if (update.type == UpdateType.shippingQuery) {
      return ChatID(update.shippingQuery!.from.id);
    }
    if (update.type == UpdateType.callbackQuery) {
      return ChatID(update.callbackQuery!.message!.chat.id);
    }
    if (update.type == UpdateType.inlineQuery) {
      return ChatID(update.inlineQuery!.from.id);
    }
    if (update.type == UpdateType.chosenInlineResult) {
      return ChatID(update.chosenInlineResult!.from.id);
    }
    if (update.type == UpdateType.pollAnswer) {
      return ChatID(update.pollAnswer!.user.id);
    }
    if (update.type == UpdateType.poll || update.type == UpdateType.unknown) {
      throw TeleverseException(
        "The update type is ${update.type}, which does not have a chat.",
      );
    }
    return ChatID(update.message!.chat.id);
  }

  /// Creates a new context.
  Context(
    this._api, {
    required this.update,
  });
}
