part of types;

/// This object represents the status of a member in a chat.
enum ChatMemberStatus {
  /// Creator of the chat
  creator("creator"),

  /// Administrator of the chat
  administrator("administrator"),

  /// Member of the chat
  member("member"),

  /// Restricted member of the chat
  restricted("restricted"),

  /// Member who left the chat
  left("left"),

  /// Member who was kicked from the chat
  kicked("kicked");

  /// The value of this enum.
  final String value;

  /// Constructs a new [ChatMemberStatus].
  const ChatMemberStatus(this.value);

  /// Constructs a new [ChatMemberStatus] from a [String].
  factory ChatMemberStatus.fromJson(String value) {
    return ChatMemberStatus.values.firstWhere((e) => e.value == value);
  }

  /// Converts this [ChatMemberStatus] to a [String].
  Map<String, dynamic> toJson() {
    return {
      'value': value,
    };
  }
}
