part of '../models.dart';

/// This object contains information about one member of a chat.
abstract class ChatMember {
  /// The member's status
  final ChatMemberStatus status;

  /// Information about the user
  final User user;

  /// Creates a new [ChatMember] object.
  ///
  /// [status] is the member's status.
  ///
  /// [user] is information about the user.
  const ChatMember({
    required this.status,
    required this.user,
  });

  /// Creates a new [ChatMember] object from a JSON object.
  /// This method decides which [ChatMember] subclass to use based on the [status] field.
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
        throw TeleverseException(
          'Unknown ChatMember status: ${json['status']}',
        );
    }
  }

  /// Converts a [ChatMember] to a [Map] for JSON encoding.
  Map<String, dynamic> toJson() {
    return {
      'status': status.value,
      'user': user.toJson(),
    }..removeWhere((key, value) => value == null);
  }
}
