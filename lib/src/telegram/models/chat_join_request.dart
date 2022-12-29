import 'chat.dart';
import 'chat_invite_link.dart';
import 'user.dart';

/// Represents a join request sent to a chat.
class ChatJoinRequest {
  /// Chat to which the request was sent
  final Chat chat;

  /// User that sent the join request
  final User user;

  /// Date the request was sent in Unix time
  ///
  /// You can use the [dateTime] getter to get a [DateTime] object
  final int date;

  /// Optional. Bio of the user.
  final String? bio;

  /// Optional. Chat invite link that was used by the user to send the join request
  final ChatInviteLink? inviteLink;

  ChatJoinRequest({
    required this.chat,
    required this.user,
    required this.date,
    this.bio,
    this.inviteLink,
  });

  factory ChatJoinRequest.fromJson(Map<String, dynamic> json) {
    return ChatJoinRequest(
      chat: Chat.fromJson(json['chat'] as Map<String, dynamic>),
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      date: json['date'] as int,
      bio: json['bio'] as String?,
      inviteLink: json['invite_link'] == null
          ? null
          : ChatInviteLink.fromJson(
              json['invite_link'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'chat': chat.toJson(),
      'user': user.toJson(),
      'date': date,
      'bio': bio,
      'invite_link': inviteLink?.toJson(),
    };
  }

  /// Returns a [DateTime] object representing the [date] field
  DateTime get dateTime => DateTime.fromMillisecondsSinceEpoch(date * 1000);
}
