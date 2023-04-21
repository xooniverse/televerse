part of televerse.context;

/// Mixin for managing inline queries.
///
/// This includes methods like `answer`, `answerWithArticles`.
mixin InlineQueryMixin on Context {
  InlineQuery get inlineQuery => update.inlineQuery!;

  /// Answer the inline query.
  Future<void> answer(
    List<InlineQueryResult> results, {
    int? cacheTime,
    bool? isPersonal,
    String? nextOffset,
    String? switchPmText,
    String? switchPmParameter,
    InlineQueryResultsButton? button,
  }) async {
    await api.answerInlineQuery(
      inlineQuery.id,
      results,
      cacheTime: cacheTime,
      isPersonal: isPersonal,
      nextOffset: nextOffset,
      button: button,
    );
  }

  /// Answer the inline query with a list of articles.
  Future<void> answerWithArticles(
    List<InlineQueryResultArticle> articles, {
    int? cacheTime,
    bool? isPersonal,
    String? nextOffset,
    InlineQueryResultsButton? button,
  }) async {
    await api.answerInlineQuery(
      inlineQuery.id,
      articles,
      cacheTime: cacheTime,
      isPersonal: isPersonal,
      nextOffset: nextOffset,
      button: button,
    );
  }
}
