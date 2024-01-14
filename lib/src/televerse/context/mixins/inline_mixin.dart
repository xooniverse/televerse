part of '../context.dart';

/// Mixin for managing inline queries.
///
/// This includes methods like `answer`, `answerWithArticles`.
mixin InlineQueryMixin on Context {
  /// The inline query.
  InlineQuery get inlineQuery => update.inlineQuery!;

  /// Answer the inline query.
  Future<bool> answer(
    List<InlineQueryResult> results, {
    int? cacheTime,
    bool? isPersonal,
    String? nextOffset,
    InlineQueryResultsButton? button,
  }) {
    return api.answerInlineQuery(
      inlineQuery.id,
      results,
      cacheTime: cacheTime,
      isPersonal: isPersonal,
      nextOffset: nextOffset,
      button: button,
    );
  }

  /// Answer the inline query with a list of articles.
  Future<bool> answerWithArticles(
    List<InlineQueryResultArticle> articles, {
    int? cacheTime,
    bool? isPersonal,
    String? nextOffset,
    InlineQueryResultsButton? button,
  }) {
    return api.answerInlineQuery(
      inlineQuery.id,
      articles,
      cacheTime: cacheTime,
      isPersonal: isPersonal,
      nextOffset: nextOffset,
      button: button,
    );
  }
}
