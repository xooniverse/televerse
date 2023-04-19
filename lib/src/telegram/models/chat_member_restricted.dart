part of models;

/// Represents a chat member that is under certain restrictions in the chat. Supergroups only.
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

  /// True, if the user is allowed to send audios
  ///
  /// Since Bot API 6.5
  final bool canSendAudios;

  /// True, if the user is allowed to send documents
  final bool canSendDocuments;

  /// True, if the user is allowed to send photos
  final bool canSendPhotos;

  /// True, if the user is allowed to send videos
  final bool canSendVideos;

  /// True, if the user is allowed to send video notes
  final bool canSendVideoNotes;

  /// True, if the user is allowed to send voice notes
  final bool canSendVoiceNotes;

  /// Creates a new [ChatMemberRestricted] object.
  const ChatMemberRestricted({
    required this.user,
    required this.isMember,
    required this.canChangeInfo,
    required this.canInviteUsers,
    required this.canPinMessages,
    required this.canSendMessages,
    required this.canSendPolls,
    required this.canSendOtherMessages,
    required this.canAddWebPagePreviews,
    required this.untilDate,
    required this.canManageTopics,
    required this.canSendAudios,
    required this.canSendDocuments,
    required this.canSendPhotos,
    required this.canSendVideos,
    required this.canSendVideoNotes,
    required this.canSendVoiceNotes,
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

  /// Converts a [ChatMemberRestricted] to a [Map] for JSON encoding.
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
      'can_send_polls': canSendPolls,
      'can_send_other_messages': canSendOtherMessages,
      'can_add_web_page_previews': canAddWebPagePreviews,
      'until_date': untilDate,
      'can_send_audios': canSendAudios,
      'can_send_documents': canSendDocuments,
      'can_send_photos': canSendPhotos,
      'can_send_videos': canSendVideos,
      'can_send_video_notes': canSendVideoNotes,
      'can_send_voice_notes': canSendVoiceNotes,
    }..removeWhere((key, value) => value == null);
  }

  /// Creates a [ChatMemberRestricted] object from a [Map] of JSON data.
  factory ChatMemberRestricted.fromJson(Map<String, dynamic> json) {
    return ChatMemberRestricted(
      user: User.fromJson(json['user']),
      isMember: json['is_member'],
      canChangeInfo: json['can_change_info'],
      canInviteUsers: json['can_invite_users'],
      canPinMessages: json['can_pin_messages'],
      canManageTopics: json['can_manage_topics'],
      canSendMessages: json['can_send_messages'],
      canSendPolls: json['can_send_polls'],
      canSendOtherMessages: json['can_send_other_messages'],
      canAddWebPagePreviews: json['can_add_web_page_previews'],
      untilDate: json['until_date'],
      canSendAudios: json['can_send_audios'],
      canSendDocuments: json['can_send_documents'],
      canSendPhotos: json['can_send_photos'],
      canSendVideos: json['can_send_videos'],
      canSendVideoNotes: json['can_send_video_notes'],
      canSendVoiceNotes: json['can_send_voice_notes'],
    );
  }
}
