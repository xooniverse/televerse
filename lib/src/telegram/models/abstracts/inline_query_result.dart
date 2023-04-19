part of models;

/// This object represents one result of an inline query. Telegram clients currently support results of the following 20 types:
abstract class InlineQueryResult {
  /// Type of the result
  InlineQueryResultType get type;

  /// Unique identifier for this result, 1-64 Bytes
  String id;

  /// Creates a new [InlineQueryResult] object.
  InlineQueryResult({
    required this.id,
  });

  /// Converts a [InlineQueryResult] to a [Map] for JSON encoding.
  Map<String, dynamic> toJson();
}
