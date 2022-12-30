part of models;

class ChatMemberRestricted implements ChatMember {
  /// The member's status in the chat, always “creator”

  @override
  final ChatMemberStatus status = ChatMemberStatus.restricted;

  /// Information about the user
  @override
  final User user;

  /// True, if the user is a member of the chat at the moment of the request
  final bool isMember;

  /// True, if the user is allowed to change the chat title, photo and other settings
  final bool canChangeInfo;

  /// True, if the user is allowed to invite new users to the chat
  final bool canInviteUsers;

  /// True, if the user is allowed to pin messages; groups and supergroups only
  final bool canPinMessages;

  /// True, if the user is allowed to create forum topics
  final bool canManageTopics;

  /// True, if the user is allowed to send text messages, contacts, locations and venues
  final bool canSendMessages;

  /// True, if the user is allowed to send audios, documents, photos, videos, video notes and voice notes, implies can_send_messages
  final bool canSendMediaMessages;

  /// True, if the user is allowed to send polls, implies can_send_messages
  final bool canSendPolls;

  /// True, if the user is allowed to send animations, games, stickers and use inline bots, implies can_send_media_messages
  final bool canSendOtherMessages;

  /// True, if the user is allowed to add web page previews to their messages, implies can_send_media_messages
  final bool canAddWebPagePreviews;

  /// Date when restrictions will be lifted for this user; unix time. If 0, then the user is restricted forever
  ///
  /// You can also use [untilDateTime] to get the date as a [DateTime] object
  final int untilDate;

  const ChatMemberRestricted({
    required this.user,
    required this.isMember,
    required this.canChangeInfo,
    required this.canInviteUsers,
    required this.canPinMessages,
    required this.canSendMessages,
    required this.canSendMediaMessages,
    required this.canSendPolls,
    required this.canSendOtherMessages,
    required this.canAddWebPagePreviews,
    required this.untilDate,
    required this.canManageTopics,
  });

  /// Date when restrictions will be lifted for this user; unix time. If 0, then the user is restricted forever
  ///
  /// You can also use [untilDate] to get the date as an [int] object
  ///
  /// Note: This returns null if the restriction is forever. You can check if the restriction is forever by [isForever]
  DateTime? get untilDateTime {
    if (isForever) return null;
    return DateTime.fromMillisecondsSinceEpoch(untilDate * 1000);
  }

  /// True if the restriction is forever
  bool get isForever => untilDate == 0;

  @override
  Map<String, dynamic> toJson() {
    return {
      'status': status.value,
      'user': user.toJson(),
      'is_member': isMember,
      'can_change_info': canChangeInfo,
      'can_invite_users': canInviteUsers,
      'can_pin_messages': canPinMessages,
      'can_manage_topics': canManageTopics,
      'can_send_messages': canSendMessages,
      'can_send_media_messages': canSendMediaMessages,
      'can_send_polls': canSendPolls,
      'can_send_other_messages': canSendOtherMessages,
      'can_add_web_page_previews': canAddWebPagePreviews,
      'until_date': untilDate,
    };
  }

  factory ChatMemberRestricted.fromJson(Map<String, dynamic> json) {
    return ChatMemberRestricted(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      isMember: json['is_member'] as bool,
      canChangeInfo: json['can_change_info'] as bool,
      canInviteUsers: json['can_invite_users'] as bool,
      canPinMessages: json['can_pin_messages'] as bool,
      canManageTopics: json['can_manage_topics'] as bool,
      canSendMessages: json['can_send_messages'] as bool,
      canSendMediaMessages: json['can_send_media_messages'] as bool,
      canSendPolls: json['can_send_polls'] as bool,
      canSendOtherMessages: json['can_send_other_messages'] as bool,
      canAddWebPagePreviews: json['can_add_web_page_previews'] as bool,
      untilDate: json['until_date'] as int,
    );
  }
}
