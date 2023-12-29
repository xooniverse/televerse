/// The Televerse Context library.
///
/// Televerse provides a context for each update. This context contains the update and the [RawAPI] instance.
/// For example, when a message is received, a [MessageContext] is created and passed to the handler. Each context is a subclass of [Context].
///
/// Contexts are extremely useful for managing updates. You probably want to send a message to the user who sent the update.
/// Generally, you would have to get the chat ID from the update and then send the message. However, with a context, you can simply call
/// [MessageContext.reply] and the message will be sent to the user who sent the update. The methods like [MessageContext.reply] are called
/// context-aware methods. They are methods that are specific to a context. For example, [MessageContext.reply] is a context-aware method
/// of [MessageContext]. It is not a method of [Context].
///
/// Here's an example:
/// ```dart
/// import 'package:televerse/televerse.dart';
///
/// Bot bot = Bot("YOUR_BOT_TOKEN");
///
/// void main() {
///  bot.start((ctx) {
///   ctx.reply("Hello World!");
///  });
/// }
/// ```
///
/// This is pretty much equivalent to:
///
/// ```dart
/// import 'package:televerse/televerse.dart';
///
/// Bot bot = Bot("YOUR_BOT_TOKEN");
///
/// void main() {
///  bot.start((ctx) {
///   bot.api.sendMessage(ctx.update.message!.chat.id, "Hello World!");
///  });
/// }
/// ```
///
/// ## Different Contexts
/// Televerse currently supports following contexts:
/// - [MessageContext] - This context is used when a message is received.
/// - [InlineQueryContext] - This context is used when an inline query is received.
/// - [CallbackQueryContext] - This context is used when a callback query is received.
/// - [ChatMemberUpdatedContext] - Represents the context when a [UpdateType.chatMember] or [UpdateType.myChatMember] event occurs.
/// - [PollContext] - Represents the context when a [UpdateType.poll] event occurs.
/// - [PollAnswerContext] - Represents the context when a [UpdateType.pollAnswer] event occurs.
/// - [ChosenInlineResultContext] - Represents the context when a [UpdateType.chosenInlineResult] event occurs.
/// - [ChatJoinRequestContext] - Represents the context when a [UpdateType.chatJoinRequest] event occurs.
/// - [ShippingQueryContext] - Represents the context when a [UpdateType.shippingQuery] event occurs.
/// - [PreCheckoutQueryContext] - Represents the context when a [UpdateType.preCheckoutQuery] event occurs.
///
/// More context types will be added in the future.
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
part 'chat_member.dart';
part 'poll.dart';
part 'poll_answer.dart';
part 'chosen_inline_result.dart';
part 'chat_join_request.dart';
part 'shipping_query.dart';
part 'pre_checkout_query.dart';
part 'message_reaction.dart';

/// This class is used to represent the context of an update. It contains the update and the [RawAPI] instance.
///
/// Whenever an update is received, a context is created and passed to the handler.
/// Currently Televerse support the following types of contexts:
/// - [MessageContext] - This context is used when a message is received.
/// - [InlineQueryContext] - This context is used when an inline query is received.
/// - [CallbackQueryContext] - This context is used when a callback query is received.
/// - [ChatMemberUpdatedContext] - Represents the context when a [UpdateType.chatMember] or [UpdateType.myChatMember] event occurs.
/// - [PollContext] - Represents the context when a [UpdateType.poll] event occurs.
/// - [PollAnswerContext] - Represents the context when a [UpdateType.pollAnswer] event occurs.
/// - [ChosenInlineResultContext] - Represents the context when a [UpdateType.chosenInlineResult] event occurs.
///
/// Contexts are subclasses of this class. You can use this class to access the update and the Televerse instance.
class Context {
  /// The RawAPI getter.
  RawAPI get api => _bot.api;

  /// The bot that received the update's informations.
  User get me => _bot.me;

  /// The RawAPI instance.
  final Televerse _bot;

  /// The [Update] instance.
  ///
  /// This represents the update for which the context is created.
  final Update update;

  /// The Session
  late Session _session;

  /// The Session getter.
  Session get session {
    try {
      return _session;
    } catch (e) {
      throw TeleverseException.sessionsNotEnabled;
    }
  }

  /// The Session setter.
  set session(Session session) {
    _bot.sessions.addSession(id.id, _session);
  }

  /// The [ChatID] instance.
  ///
  /// This represents the ID of the chat from which the update was sent.
  ///
  /// Note: On `poll`, and `unknown` updates, this will throw a [TeleverseException].
  /// This is because these updates do not have a chat.
  ID get id {
    switch (update.type) {
      case UpdateType.message:
        return ChatID(update.message!.chat.id);
      case UpdateType.editedMessage:
        return ChatID(update.editedMessage!.chat.id);
      case UpdateType.channelPost:
        return ChatID(update.channelPost!.chat.id);
      case UpdateType.editedChannelPost:
        return ChatID(update.editedChannelPost!.chat.id);
      case UpdateType.inlineQuery:
        return ChatID(update.inlineQuery!.from.id);
      case UpdateType.chosenInlineResult:
        return ChatID(update.chosenInlineResult!.from.id);
      case UpdateType.callbackQuery:
        return ChatID(update.callbackQuery!.message!.chat.id);
      case UpdateType.shippingQuery:
        return ChatID(update.shippingQuery!.from.id);
      case UpdateType.preCheckoutQuery:
        return ChatID(update.preCheckoutQuery!.from.id);
      case UpdateType.myChatMember:
        return ChatID(update.myChatMember!.chat.id);
      case UpdateType.chatMember:
        return ChatID(update.chatMember!.chat.id);
      case UpdateType.chatJoinRequest:
        return ChatID(update.chatJoinRequest!.chat.id);
      case UpdateType.messageReaction:
        return ChatID(update.messageReaction!.chat.id);
      case UpdateType.poll:
      case UpdateType.unknown:
      default:
        throw TeleverseException(
          "The update type is ${update.type}, which does not have a chat.",
        );
    }
  }

  /// Get the type of Context based on the update type.
  Type get typeOfContext {
    switch (update.type) {
      case UpdateType.chatJoinRequest:
        return ChatJoinRequestContext;
      case UpdateType.chatMember:
        return ChatMemberUpdatedContext;
      case UpdateType.myChatMember:
        return ChatMemberUpdatedContext;
      case UpdateType.preCheckoutQuery:
        return PreCheckoutQueryContext;
      case UpdateType.shippingQuery:
        return ShippingQueryContext;
      case UpdateType.callbackQuery:
        return CallbackQueryContext;
      case UpdateType.inlineQuery:
        return InlineQueryContext;
      case UpdateType.chosenInlineResult:
        return ChosenInlineResultContext;
      case UpdateType.pollAnswer:
        return PollAnswerContext;
      case UpdateType.poll:
        return PollContext;
      case UpdateType.channelPost:
      case UpdateType.editedChannelPost:
      case UpdateType.message:
      case UpdateType.editedMessage:
        return MessageContext;

      default:
        throw TeleverseException(
          "The update type is ${update.type}, which does not have a context.",
        );
    }
  }

  /// Creates a new context.
  Context(
    this._bot, {
    required this.update,
  }) {
    if (_bot.sessionsEnabled) {
      _session = _bot.sessions.getSession(id.id);
    }
  }

  /// Creates a new Context object for the specified update.
  static Context create(Televerse t, Update update) {
    switch (update.type) {
      case UpdateType.message:
      case UpdateType.editedMessage:
      case UpdateType.channelPost:
      case UpdateType.editedChannelPost:
        return MessageContext(t, update: update);

      case UpdateType.inlineQuery:
        return InlineQueryContext(t, update: update);

      case UpdateType.chosenInlineResult:
        return ChosenInlineResultContext(t, update: update);

      case UpdateType.callbackQuery:
        return CallbackQueryContext(t, update: update);

      case UpdateType.shippingQuery:
        return ShippingQueryContext(t, update: update);

      case UpdateType.preCheckoutQuery:
        return PreCheckoutQueryContext(t, update: update);

      case UpdateType.poll:
        return PollContext(t, update: update);

      case UpdateType.pollAnswer:
        return PollAnswerContext(t, update: update);

      case UpdateType.myChatMember:
      case UpdateType.chatMember:
        return ChatMemberUpdatedContext(t, update: update);

      case UpdateType.chatJoinRequest:
        return ChatJoinRequestContext(t, update: update);

      default:
        return Context(t, update: update);
    }
  }

  /// Get the update types for the given context
  static List<UpdateType> updateTypes(Type ctx) {
    switch (ctx) {
      case MessageContext:
        return [
          UpdateType.message,
          UpdateType.editedMessage,
          UpdateType.channelPost,
          UpdateType.editedChannelPost,
        ];
      case InlineQueryContext:
        return [UpdateType.inlineQuery];
      case CallbackQueryContext:
        return [UpdateType.callbackQuery];
      case ChatMemberUpdatedContext:
        return [UpdateType.chatMember, UpdateType.myChatMember];
      case PollContext:
        return [UpdateType.poll];
      case PollAnswerContext:
        return [UpdateType.pollAnswer];
      case ChosenInlineResultContext:
        return [UpdateType.chosenInlineResult];
      case ChatJoinRequestContext:
        return [UpdateType.chatJoinRequest];
      case ShippingQueryContext:
        return [UpdateType.shippingQuery];
      case PreCheckoutQueryContext:
        return [UpdateType.preCheckoutQuery];
      default:
        return [UpdateType.unknown];
    }
  }
}
