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

  final String value;
  const ChatMemberStatus(this.value);

  factory ChatMemberStatus.fromJson(String value) {
    return ChatMemberStatus.values.firstWhere((e) => e.value == value);
  }

  Map<String, dynamic> toJson() {
    return {
      'value': value,
    };
  }
}
