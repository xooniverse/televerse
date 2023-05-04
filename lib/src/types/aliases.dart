part of televerse;

/// [MessageHandler] is a type alias for a function that takes a [MessageContext] as parameter and returns a [FutureOr] of void.
///
/// This is used to define a callback function for almost all the methods that listen to messages.
typedef MessageHandler = FutureOr<void> Function(MessageContext ctx);

/// [CallbackQueryHandler] is a type alias for a function that takes a [CallbackQueryContext] as parameter and returns a [FutureOr] of void.
///
/// This is used to define a callback function for almost all the methods that listen to callback queries.
typedef CallbackQueryHandler = FutureOr<void> Function(
    CallbackQueryContext ctx);

/// [InlineQueryHandler] is a type alias for a function that takes a [InlineQueryContext] as parameter and returns a [FutureOr] of void].
///
/// This is used to define a callback function for almost all the methods that listen to inline queries.
typedef InlineQueryHandler = FutureOr<void> Function(InlineQueryContext ctx);

/// [ChatMemberUpdatedHandler] is a type alias for a function that takes a [ChatMemberUpdatedContext] as parameter and returns a [FutureOr] of void.
///
/// This is used to define a callback function for almost all the methods that listen to chat member updates.
typedef ChatMemberUpdatedHandler = FutureOr<void> Function(
    ChatMemberUpdatedContext ctx);

/// [PollHandler] is a type alias for a function that takes a [PollContext] as parameter and returns a [FutureOr] of void.
///
/// This is used to define a callback function for almost all the methods that listen to polls.
typedef PollHandler = FutureOr<void> Function(PollContext ctx);

/// [PollAnswerHandler] is a type alias for a function that takes a [PollAnswerContext] as parameter and returns a [FutureOr] of void.
///
/// This is used to define a callback function for almost all the methods that listen to poll answers.
typedef PollAnswerHandler = FutureOr<void> Function(PollAnswerContext ctx);

/// [ChosenInlineResultHandler] is a type alias for a function that takes a [ChosenInlineResultContext] as parameter and returns a [FutureOr] of void.
///
/// This is used to define a callback function for almost all the methods that listen to chosen inline results.
typedef ChosenInlineResultHandler = FutureOr<void> Function(
    ChosenInlineResultContext ctx);
