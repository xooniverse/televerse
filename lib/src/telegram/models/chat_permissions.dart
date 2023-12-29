part of 'models.dart';

/// Describes actions that a non-administrator user is allowed to take in a chat.
class ChatPermissions {
  /// Optional. True, if the user is allowed to send text messages, contacts, locations and venues
  final bool? canSendMessages;

  /// Optional. True, if the user is allowed to send polls, implies can_send_messages
  final bool? canSendPolls;

  /// Optional. True, if the user is allowed to send animations, games, stickers and use inline bots, implies can_send_media_messages
  final bool? canSendOtherMessages;

  /// Optional. True, if the user is allowed to add web page previews to their messages, implies can_send_media_messages
  final bool? canAddWebPagePreviews;

  /// Optional. True, if the user is allowed to change the chat title, photo and other settings. Ignored in public supergroups
  final bool? canChangeInfo;

  /// Optional. True, if the user is allowed to invite new users to the chat
  final bool? canInviteUsers;

  /// Optional. True, if the user is allowed to pin messages. Ignored in public supergroups
  final bool? canPinMessages;

  /// Optional. True, if the user is allowed to create forum topics. If omitted defaults to the value of can_pin_messages
  final bool? canManageTopics;

  /// True, if the user is allowed to send audios
  /// Since Bot API 6.5
  final bool? canSendAudios;

  /// True, if the user is allowed to send documents
  final bool? canSendDocuments;

  /// True, if the user is allowed to send photos
  final bool? canSendPhotos;

  /// True, if the user is allowed to send videos
  final bool? canSendVideos;

  /// True, if the user is allowed to send video notes
  final bool? canSendVideoNotes;

  /// True, if the user is allowed to send voice notes
  final bool? canSendVoiceNotes;

  /// Creates a new [ChatPermissions] object.
  const ChatPermissions({
    this.canSendMessages,
    this.canSendPolls,
    this.canSendOtherMessages,
    this.canAddWebPagePreviews,
    this.canChangeInfo,
    this.canInviteUsers,
    this.canPinMessages,
    this.canManageTopics,
    this.canSendAudios,
    this.canSendDocuments,
    this.canSendPhotos,
    this.canSendVideos,
    this.canSendVideoNotes,
    this.canSendVoiceNotes,
  });

  /// Creates a new [ChatPermissions] object from json [String].
  factory ChatPermissions.fromJson(Map<String, dynamic> json) {
    return ChatPermissions(
      canSendMessages: json['can_send_messages'],
      canSendPolls: json['can_send_polls'],
      canSendOtherMessages: json['can_send_other_messages'],
      canAddWebPagePreviews: json['can_add_web_page_previews'],
      canChangeInfo: json['can_change_info'],
      canInviteUsers: json['can_invite_users'],
      canPinMessages: json['can_pin_messages'],
      canManageTopics: json['can_manage_topics'],
      canSendAudios: json['can_send_audios'],
      canSendDocuments: json['can_send_documents'],
      canSendPhotos: json['can_send_photos'],
      canSendVideos: json['can_send_videos'],
      canSendVideoNotes: json['can_send_video_notes'],
      canSendVoiceNotes: json['can_send_voice_notes'],
    );
  }

  /// Converts a [ChatPermissions] to a [Map] for JSON encoding.
  Map<String, dynamic> toJson() {
    return {
      'can_send_messages': canSendMessages,
      'can_send_polls': canSendPolls,
      'can_send_other_messages': canSendOtherMessages,
      'can_add_web_page_previews': canAddWebPagePreviews,
      'can_change_info': canChangeInfo,
      'can_invite_users': canInviteUsers,
      'can_pin_messages': canPinMessages,
      'can_manage_topics': canManageTopics,
      'can_send_audios': canSendAudios,
      'can_send_documents': canSendDocuments,
      'can_send_photos': canSendPhotos,
      'can_send_videos': canSendVideos,
      'can_send_video_notes': canSendVideoNotes,
      'can_send_voice_notes': canSendVoiceNotes,
    }..removeWhere((key, value) => value == null);
  }
}
