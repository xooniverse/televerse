part of 'models.dart';

/// This object represents an incoming inline query. When the user sends an empty query, your bot could return some default or trending results.
class InlineQuery {
  /// Unique identifier for this query
  final String id;

  /// Sender
  final User from;

  /// Text of the query (up to 256 characters)
  final String query;

  /// Offset of the results to be returned, can be controlled by the bot
  final String offset;

  /// Optional. Type of the chat from which the inline query was sent. Can be either “sender” for a private chat with the inline query sender, “private”, “group”, “supergroup”, or “channel”. The chat type should be always known for requests sent from official clients and most third-party clients, unless the request was sent from a secret chat
  final ChatType? chatType;

  /// Optional. Sender location, only for bots that request user location
  final Location? location;

  /// Constructs an [InlineQuery] object
  const InlineQuery({
    required this.id,
    required this.from,
    required this.query,
    required this.offset,
    this.chatType,
    this.location,
  });

  /// Creates an [InlineQuery] object from JSON object
  factory InlineQuery.fromJson(Map<String, dynamic> json) {
    return InlineQuery(
      id: json['id'] as String,
      from: User.fromJson(json['from'] as Map<String, dynamic>),
      query: json['query'] as String,
      offset: json['offset'] as String,
      chatType: json['chat_type'] == null
          ? null
          : ChatType.fromJson(json['chat_type']),
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
    );
  }

  /// Converts an [InlineQuery] object to JSON object
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'from': from.toJson(),
      'query': query,
      'offset': offset,
      'chat_type': chatType?.index,
      'location': location?.toJson(),
    }..removeWhere((key, value) => value == null);
  }
}
