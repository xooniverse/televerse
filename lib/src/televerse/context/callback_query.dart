part of televerse.context;

/// A class that represents the context of a callback query update.
/// This context is used when a callback query is received. It is a subclass of [Context] and [CallbackQueryMixin]. It contains the callback query and the update. The context will be passed to the callback query handler, and once you have the context you can simply use the methods to reply or answer the query.
class CallbackQueryContext extends Context with CallbackQueryMixin {
  /// The callback query of the update.
  CallbackQuery get query => update.callbackQuery!;

  /// Constructs a new [CallbackQueryContext].
  CallbackQueryContext(
    RawAPI t, {
    required Update update,
  }) : super(t, update: update);

  /// The query string.
  String? get data => query.data;

  /// The message of the query.
  Message? get message => query.message;

  /// The chat of the query.
  Chat? get chat => message?.chat;

  /// The user of the query.
  User? get from => message?.from;

  /// The list of regex matches.
  List<RegExpMatch>? matches;
}
