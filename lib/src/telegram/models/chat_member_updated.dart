part of models;

/// This object represents changes in the status of a chat member.
class ChatMemberUpdated {
  /// Chat the user belongs to
  final Chat chat;

  /// Performer of the action, which resulted in the change
  final User from;

  /// Date the change was done in Unix time
  ///
  /// You can use the [dateTime] getter to get a [DateTime] object
  final int date;

  /// Previous information about the chat member
  final ChatMember oldChatMember;

  /// New information about the chat member
  final ChatMember newChatMember;

  /// Optional. Chat invite link, which was used by the user to join the chat; for joining by invite link events only.
  final ChatInviteLink? inviteLink;

  const ChatMemberUpdated({
    required this.chat,
    required this.from,
    required this.date,
    required this.oldChatMember,
    required this.newChatMember,
    this.inviteLink,
  });

  factory ChatMemberUpdated.fromJson(Map<String, dynamic> json) {
    return ChatMemberUpdated(
      chat: Chat.fromJson(json['chat'] as Map<String, dynamic>),
      from: User.fromJson(json['from'] as Map<String, dynamic>),
      date: json['date'] as int,
      oldChatMember:
          ChatMember.fromJson(json['old_chat_member'] as Map<String, dynamic>),
      newChatMember:
          ChatMember.fromJson(json['new_chat_member'] as Map<String, dynamic>),
      inviteLink: json['invite_link'] == null
          ? null
          : ChatInviteLink.fromJson(
              json['invite_link'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'chat': chat.toJson(),
      'from': from.toJson(),
      'date': date,
      'old_chat_member': oldChatMember.toJson(),
      'new_chat_member': newChatMember.toJson(),
      'invite_link': inviteLink?.toJson(),
    };
  }

  /// Returns a [DateTime] object representing the [date] field
  DateTime get dateTime => DateTime.fromMillisecondsSinceEpoch(date * 1000);
}
