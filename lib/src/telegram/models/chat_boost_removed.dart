part of 'models.dart';

/// This object represents a boost removed from a chat.
class ChatBoostRemoved implements WithChat {
  /// Chat which was boosted
  @override
  final Chat chat;

  /// Unique identifier of the boost
  final String boostId;

  /// Point in time (Unix timestamp) when the boost was removed
  final int removeDate;

  /// Source of the removed boost
  final ChatBoostSource source;

  /// Creates a `ChatBoostRemoved` object.
  const ChatBoostRemoved({
    required this.chat,
    required this.boostId,
    required this.removeDate,
    required this.source,
  });

  /// Converts the `ChatBoostRemoved` object to a JSON object.
  Map<String, dynamic> toJson() {
    return {
      'chat': chat.toJson(),
      'boost_id': boostId,
      'remove_date': removeDate,
      'source': source.toJson(),
    };
  }

  /// Creates a `ChatBoostRemoved` object from a JSON object.
  factory ChatBoostRemoved.fromJson(Map<String, dynamic> json) {
    return ChatBoostRemoved(
      chat: Chat.fromJson(json['chat']),
      boostId: json['boost_id'],
      removeDate: json['remove_date'],
      source: ChatBoostSource.fromJson(json['source']),
    );
  }
}
