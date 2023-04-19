part of models;

/// Represents a result of an inline query that was chosen by the user and sent to their chat partner.
class ChosenInlineResult {
  /// The unique identifier for the result that was chosen
  String resultId;

  /// The user that chose the result
  User from;

  /// Optional. Sender location, only for bots that require user location
  Location? location;

  /// Optional. Identifier of the sent inline message. Available only if there is an inline keyboard attached to the message. Will be also received in callback queries and can be used to edit the message.
  String? inlineMessageId;

  /// The query that was used to obtain the result
  String query;

  /// Creates a new [ChosenInlineResult] object.
  ChosenInlineResult({
    required this.resultId,
    required this.from,
    this.location,
    this.inlineMessageId,
    required this.query,
  });

  /// Converts a [ChosenInlineResult] to a [Map] for JSON encoding.
  Map<String, dynamic> toJson() {
    return {
      'result_id': resultId,
      'from': from.toJson(),
      'location': location?.toJson(),
      'inline_message_id': inlineMessageId,
      'query': query,
    }..removeWhere((key, value) => value == null);
  }

  /// Creates a new [ChosenInlineResult] object from json.
  factory ChosenInlineResult.fromJson(Map<String, dynamic> json) {
    return ChosenInlineResult(
      resultId: json['result_id'] as String,
      from: User.fromJson(json['from'] as Map<String, dynamic>),
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      inlineMessageId: json['inline_message_id'] as String?,
      query: json['query'] as String,
    );
  }
}
