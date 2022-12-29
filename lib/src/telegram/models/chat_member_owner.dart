import 'package:televerse/src/types/chat_member_status.dart';

import 'abstracts/chat_member.dart';
import 'user.dart';

/// Represents a chat member that owns the chat and has all administrator privileges.
class ChatMemberOwner implements ChatMember {
  /// The member's status in the chat, always “creator”

  @override
  ChatMemberStatus status = ChatMemberStatus.creator;

  /// Information about the user
  @override
  User user;

  /// True, if the user's presence in the chat is hidden
  bool isAnonymous;

  /// Custom title for this user
  String? customTitle;

  ChatMemberOwner({
    required this.user,
    required this.isAnonymous,
    this.customTitle,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'status': status.value,
      'user': user.toJson(),
      'is_anonymous': isAnonymous,
      'custom_title': customTitle
    };
  }

  factory ChatMemberOwner.fromJson(Map<String, dynamic> json) {
    return ChatMemberOwner(
      user: User.fromJson(json['user']),
      isAnonymous: json['is_anonymous'],
      customTitle: json['custom_title'],
    );
  }
}
