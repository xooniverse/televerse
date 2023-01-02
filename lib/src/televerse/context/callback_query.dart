part of televerse.context;

class CallbackQueryContext extends Context {
  /// The incoming callback query.
  CallbackQuery query;

  CallbackQueryContext(Televerse t, this.query) : super(t);

  /// The query string.
  String? get data => query.data;

  /// The message of the query.
  Message? get message => query.message;

  /// The chat of the query.
  Chat? get chat => message?.chat;

  /// The user of the query.
  User? get from => message?.from;
}
