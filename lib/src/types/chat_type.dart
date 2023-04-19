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

  /// The value of this enum.
  final String value;

  /// Constructs a new [ChatType].
  const ChatType(this.value);

  /// Constructs a new [ChatType] from a [String].
  factory ChatType.fromJson(String type) {
    return ChatType.values.firstWhere((e) => e.value == type);
  }

  /// Converts this [ChatType] to a [String].
  String toJson() => value;
}
