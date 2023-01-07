part of televerse;

/// Mixin for managing callback queries.
///
/// This includes methods like `answer`, `answerWithAlert`, `answerWithUrl`, `answerWithUrlAndAlert`.
mixin CallbackQueryMixin on Context {
  /// Answer the callback query.
  Future<void> answer({
    String? text,
    bool showAlert = false,
    String? url,
    int cacheTime = 0,
  }) async {
    await api.answerCallbackQuery(
      callbackQuery.id,
      text: text,
      showAlert: showAlert,
      url: url,
      cacheTime: cacheTime,
    );
  }

  /// Answer the callback query with an alert.
  Future<void> answerWithAlert({
    String? text,
    String? url,
    int cacheTime = 0,
  }) async {
    await api.answerCallbackQuery(
      callbackQuery.id,
      text: text,
      showAlert: true,
      url: url,
      cacheTime: cacheTime,
    );
  }

  /// Answer the callback query with a URL.
  Future<void> answerWithUrl({
    String? text,
    String url = '',
    int cacheTime = 0,
  }) async {
    await api.answerCallbackQuery(
      callbackQuery.id,
      text: text,
      showAlert: false,
      url: url,
      cacheTime: cacheTime,
    );
  }

  /// Answer the callback query with a URL and an alert.
  Future<void> answerWithUrlAndAlert({
    String? text,
    String url = '',
    int cacheTime = 0,
  }) async {
    await api.answerCallbackQuery(
      callbackQuery.id,
      text: text,
      showAlert: true,
      url: url,
      cacheTime: cacheTime,
    );
  }

  /// The callback query.
  CallbackQuery get callbackQuery => update.callbackQuery!;
}
