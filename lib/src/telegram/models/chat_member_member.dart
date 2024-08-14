part of 'models.dart';

/// Represents a chat member that has no additional privileges or restrictions.
class ChatMemberMember implements ChatMember {
  /// The member's status in the chat, always “creator”
  @override
  final ChatMemberStatus status = ChatMemberStatus.member;

  /// Information about the user
  @override
  final User user;

  /// Optional. Date when the user's subscription will expire; Unix time
  final int? untilDate;

  /// Creates a new [ChatMemberMember] object.
  const ChatMemberMember({
    required this.user,
    this.untilDate,
  });

  /// Converts a [ChatMemberMember] to a [Map] for JSON encoding.
  @override
  Map<String, dynamic> toJson() {
    return {
      'status': status.value,
      'user': user.toJson(),
      'until_date': untilDate,
    }..removeWhere(_nullFilter);
  }

  /// Creates a new [ChatMemberMember] object from json.
  factory ChatMemberMember.fromJson(Map<String, dynamic> json) {
    return ChatMemberMember(
      user: User.fromJson(json['user']),
      untilDate: json['until_date'],
    );
  }

  /// Information about the user
  @override
  User get from => user;
}
