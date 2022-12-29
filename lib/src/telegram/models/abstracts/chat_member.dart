import 'package:televerse/src/telegram/models/chat_member_owner.dart';
import 'package:televerse/src/types/chat_member_status.dart';

import '../chat_member_administrator.dart';
import '../chat_member_banned.dart';
import '../chat_member_left.dart';
import '../chat_member_member.dart';
import '../chat_member_restricted.dart';
import '../user.dart';

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
