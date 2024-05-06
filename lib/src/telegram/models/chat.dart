part of 'models.dart';

/// This object represents a chat.
class Chat {
  /// Unique identifier for this chat.
  final int id;

  /// Type of the chat, can be either "private", "group", "supergroup" or "channel".
  final ChatType type;

  /// Title, for supergroups, channels, and group chats.
  final String? title;

  /// Username, for private chats, supergroups, and channels if available.
  final String? username;

  /// First name of the other party in a private chat.
  final String? firstName;

  /// Last name of the other party in a private chat.
  final String? lastName;

  /// True, if the supergroup chat is a forum (has topics enabled).
  final bool? isForum;

  /// Constructs a [Chat] object.
  const Chat({
    required this.id,
    required this.type,
    this.title,
    this.username,
    this.firstName,
    this.lastName,
    this.isForum,
  });

  /// Creates a [Chat] object from JSON.
  factory Chat.fromJson(Map<String, dynamic> json) {
    return Chat(
      id: json['id'],
      type: ChatType.fromJson(json['type'] as String),
      title: json['title'],
      username: json['username'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      isForum: json['is_forum'] ?? false,
    );
  }

  /// Converts a [Chat] object to JSON.
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type.value,
      'title': title,
      'username': username,
      'first_name': firstName,
      'last_name': lastName,
      'is_forum': isForum,
    };
  }
}
