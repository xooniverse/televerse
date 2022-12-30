part of models;

/// This object represents one result of an inline query. Telegram clients currently support results of the following 20 types:
abstract class InlineQueryResult {
  /// Type of the result
  InlineQueryResultType get type;

  /// Unique identifier for this result, 1-64 Bytes
  String id;

  InlineQueryResult({
    required this.id,
  });

  Map<String, dynamic> toJson();
}
