part of models;

class ChatMemberLeft implements ChatMember {
  /// The member's status in the chat, always “left”
  @override
  final ChatMemberStatus status = ChatMemberStatus.left;

  /// Information about the user
  @override
  final User user;

  const ChatMemberLeft({
    required this.user,
  });

  factory ChatMemberLeft.fromJson(Map<String, dynamic> json) {
    return ChatMemberLeft(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'user': user.toJson(),
      'status': status.value,
    };
  }
}
