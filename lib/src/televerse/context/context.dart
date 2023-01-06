library televerse.context;

import 'package:televerse/telegram.dart';
import 'package:televerse/televerse.dart';
part 'message.dart';
part 'inline_query.dart';
part 'callback_query.dart';

class Context {
  /// The televerse instance.
  Televerse get api => _televerse;
  final Televerse _televerse;

  /// The [Update] instance.
  ///
  /// This represents the update for which the context is created.
  final Update update;

  /// The [ChatID] instance.
  ///
  /// This represents the ID of the chat from which the update was sent.
  ///
  /// Note: On `poll`, and `unknown` updates, this will be `ChatID(0)`.
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
      return ChatID(0);
    }
    return ChatID(update.message!.chat.id);
  }

  Context(
    this._televerse, {
    required this.update,
  });
}
