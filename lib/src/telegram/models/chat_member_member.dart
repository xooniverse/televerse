part of 'models.dart';

/// Represents a chat member that has no additional privileges or restrictions.
class ChatMemberMember implements ChatMember {
  /// The member's status in the chat, always “creator”
  @override
  final ChatMemberStatus status = ChatMemberStatus.member;

  /// Information about the user
  @override
  final User user;

  /// Creates a new [ChatMemberMember] object.
  const ChatMemberMember({
    required this.user,
  });

  /// Converts a [ChatMemberMember] to a [Map] for JSON encoding.
  @override
  Map<String, dynamic> toJson() {
    return {
      'status': status.value,
      'user': user.toJson(),
    };
  }

  /// Creates a new [ChatMemberMember] object from json.
  factory ChatMemberMember.fromJson(Map<String, dynamic> json) {
    return ChatMemberMember(
      user: User.fromJson(json['user']),
    );
  }

  /// Information about the user
  @override
  User get from => user;
}
