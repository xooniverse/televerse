part of '../models.dart';

/// This object contains information about one member of a chat.
abstract class ChatMember implements WithUser {
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
    return switch (ChatMemberStatus.fromJson(json['status'])) {
      ChatMemberStatus.creator => ChatMemberOwner.fromJson(json),
      ChatMemberStatus.administrator => ChatMemberAdministrator.fromJson(json),
      ChatMemberStatus.member => ChatMemberMember.fromJson(json),
      ChatMemberStatus.restricted => ChatMemberRestricted.fromJson(json),
      ChatMemberStatus.left => ChatMemberLeft.fromJson(json),
      ChatMemberStatus.kicked => ChatMemberBanned.fromJson(json),
    };
  }

  /// Converts a [ChatMember] to a [Map] for JSON encoding.
  Map<String, dynamic> toJson() {
    return {
      'status': status.value,
      'user': user.toJson(),
    }..removeWhere(_nullFilter);
  }

  /// Information about the user
  @override
  User get from => user;
}
