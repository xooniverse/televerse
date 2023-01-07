part of types;

/// This object represents type of a chat. Currently, the following 5 types are supported:
/// - [ChatType.private]: For a private chat with a user
/// - [ChatType.group]: For a group chat
/// - [ChatType.supergroup]: For a supergroup chat
/// - [ChatType.channel]: For a channel chat
/// - [ChatType.sender]: For a private chat with the inline query sender
enum ChatType {
  /// For a private chat with a user
  private("private"),

  /// For a group chat
  group("group"),

  /// For a supergroup chat
  supergroup("supergroup"),

  /// For a channel chat
  channel("channel"),

  /// For a private chat with the inline query sender
  ///
  /// Note: Only For Inline Query
  sender("sender");

  final String value;
  const ChatType(this.value);

  factory ChatType.fromJson(String type) {
    return ChatType.values.firstWhere((e) => e.value == type);
  }

  String toJson() => value;
}
