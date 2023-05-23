part of televerse.models;

/// A Handler Scope is used to define the scope and related information of a handler method.
class HandlerScope<T extends Function> {
  /// Whether the handler is a special handler.
  final bool special;

  /// If it's a command handler, we might check for /start command and set `startParameter` to the parameter of the command.
  final bool isCommand;

  /// If it's a RegExp handler, we'll set the `MessageContext.matches` to the matches of the RegExp.
  final bool isRegExp;

  /// Handler
  final T handler;

  /// The update type
  final UpdateType type;

  /// Predicate to filter updates
  final bool Function(Context ctx) predicate;

  /// Creates a new [HandlerScope].
  const HandlerScope({
    required this.handler,
    required this.predicate,
    required this.type,
    this.isCommand = false,
    this.isRegExp = false,
  }) : special = isCommand || isRegExp;

  /// Creates a new Context object for the specified update.
  Context context(RawAPI api, Update update) {
    switch (update.type) {
      case UpdateType.message:
        return MessageContext(api, update.message!, update: update);
      case UpdateType.editedMessage:
        return MessageContext(api, update.editedMessage!, update: update);
      case UpdateType.channelPost:
        return MessageContext(api, update.channelPost!, update: update);

      case UpdateType.editedChannelPost:
        return MessageContext(api, update.editedChannelPost!, update: update);

      case UpdateType.inlineQuery:
        return InlineQueryContext(api, update: update);

      case UpdateType.chosenInlineResult:
        return ChosenInlineResultContext(api, update: update);

      case UpdateType.callbackQuery:
        return CallbackQueryContext(api, update: update);

      case UpdateType.shippingQuery:
        return ShippingQueryContext(api, update: update);

      case UpdateType.preCheckoutQuery:
        return PreCheckoutQueryContext(api, update: update);

      case UpdateType.poll:
        return PollContext(api, update: update);

      case UpdateType.pollAnswer:
        return PollAnswerContext(api, update: update);

      case UpdateType.myChatMember:
        return ChatMemberUpdatedContext(api, update: update);

      case UpdateType.chatMember:
        return ChatMemberUpdatedContext(api, update: update);

      case UpdateType.chatJoinRequest:
        return ChatMemberUpdatedContext(api, update: update);

      case UpdateType.unknown:
        return Context(api, update: update);
    }
  }
}
