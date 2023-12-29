part of 'models.dart';

/// This object represents a boost added to a chat or changed.
class ChatBoostUpdated {
  /// Chat which was boosted
  final Chat chat;

  /// Information about the chat boost
  final ChatBoost boost;

  /// Creates a ChatBoostUpdated object.
  ChatBoostUpdated({
    required this.chat,
    required this.boost,
  });

  /// Converts the `ChatBoostUpdated` object to a JSON object.
  Map<String, dynamic> toJson() {
    return {
      'chat': chat.toJson(),
      'boost': boost.toJson(),
    };
  }

  /// Creates a `ChatBoostUpdated` object from a JSON object.
  factory ChatBoostUpdated.fromJson(Map<String, dynamic> json) {
    return ChatBoostUpdated(
      chat: Chat.fromJson(json['chat']),
      boost: ChatBoost.fromJson(json['boost']),
    );
  }
}
