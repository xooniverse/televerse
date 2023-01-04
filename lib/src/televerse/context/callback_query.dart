part of televerse.context;

class CallbackQueryContext extends Context {
  /// The incoming callback query.
  CallbackQuery query;

  CallbackQueryContext(
    Televerse t,
    this.query, {
    Update? update,
  }) : super(
          t,
          update: update,
        );

  /// The query string.
  String? get data => query.data;

  /// The message of the query.
  Message? get message => query.message;

  /// The chat of the query.
  Chat? get chat => message?.chat;

  /// The user of the query.
  User? get from => message?.from;

  /// Answer the callback query.
  Future<void> answer(
    String? text, {
    bool showAlert = false,
    String? url,
    int cacheTime = 0,
  }) async {
    await _televerse.answerCallbackQuery(
      query.id,
      text: text,
      showAlert: showAlert,
      url: url,
      cacheTime: cacheTime,
    );
  }

  List<RegExpMatch>? matches;
}
