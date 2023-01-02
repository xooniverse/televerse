part of televerse.context;

class InlineQueryContext extends Context {
  /// The incoming inline query.
  InlineQuery query;

  InlineQueryContext(Televerse t, this.query) : super(t);

  User get from => query.from;

  /// The query string.
  String get queryText => query.query;
}
