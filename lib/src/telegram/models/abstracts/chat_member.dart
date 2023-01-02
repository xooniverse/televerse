part of models;

abstract class ChatMember {
  /// The member's status
  final ChatMemberStatus status;

  /// Information about the user
  final User user;

  const ChatMember({
    required this.status,
    required this.user,
  });

  static ChatMember fromJson(Map<String, dynamic> json) {
    switch (json['status'] as String) {
      case 'creator':
        return ChatMemberOwner.fromJson(json);
      case 'administrator':
        return ChatMemberAdministrator.fromJson(json);
      case 'member':
        return ChatMemberMember.fromJson(json);
      case 'restricted':
        return ChatMemberRestricted.fromJson(json);
      case 'left':
        return ChatMemberLeft.fromJson(json);
      case 'kicked':
        return ChatMemberBanned.fromJson(json);
      default:
        throw Exception('Unknown ChatMember status: ${json['status']}');
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'status': status.value,
      'user': user.toJson(),
    };
  }
}
