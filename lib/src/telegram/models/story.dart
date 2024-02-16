part of 'models.dart';

/// This object represents a message about a forwarded story in the chat.
class Story {
  /// Chat that posted the story
  final Chat chat;

  /// Unique identifier for the story in the chat
  final int id;

  /// Constructs an instance of Story.
  const Story({
    required this.chat,
    required this.id,
  });

  /// Constructs an instance of Story from a JSON map.
  factory Story.fromJson(Map<String, dynamic> json) {
    return Story(
      chat: Chat.fromJson(json['chat'] as Map<String, dynamic>),
      id: json['id'] as int,
    );
  }

  /// Returns JSON-encodeable map of this object.
  Map<String, dynamic> toJson() {
    return {
      'chat': chat.toJson(),
      'id': id,
    };
  }
}
