// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_permissions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatPermissions _$ChatPermissionsFromJson(Map<String, dynamic> json) =>
    _ChatPermissions(
      canSendMessages: json['can_send_messages'] as bool?,
      canSendPolls: json['can_send_polls'] as bool?,
      canSendOtherMessages: json['can_send_other_messages'] as bool?,
      canAddWebPagePreviews: json['can_add_web_page_previews'] as bool?,
      canChangeInfo: json['can_change_info'] as bool?,
      canInviteUsers: json['can_invite_users'] as bool?,
      canPinMessages: json['can_pin_messages'] as bool?,
      canManageTopics: json['can_manage_topics'] as bool?,
      canSendAudios: json['can_send_audios'] as bool?,
      canSendDocuments: json['can_send_documents'] as bool?,
      canSendPhotos: json['can_send_photos'] as bool?,
      canSendVideos: json['can_send_videos'] as bool?,
      canSendVideoNotes: json['can_send_video_notes'] as bool?,
      canSendVoiceNotes: json['can_send_voice_notes'] as bool?,
    );

Map<String, dynamic> _$ChatPermissionsToJson(_ChatPermissions instance) =>
    <String, dynamic>{
      'can_send_messages': ?instance.canSendMessages,
      'can_send_polls': ?instance.canSendPolls,
      'can_send_other_messages': ?instance.canSendOtherMessages,
      'can_add_web_page_previews': ?instance.canAddWebPagePreviews,
      'can_change_info': ?instance.canChangeInfo,
      'can_invite_users': ?instance.canInviteUsers,
      'can_pin_messages': ?instance.canPinMessages,
      'can_manage_topics': ?instance.canManageTopics,
      'can_send_audios': ?instance.canSendAudios,
      'can_send_documents': ?instance.canSendDocuments,
      'can_send_photos': ?instance.canSendPhotos,
      'can_send_videos': ?instance.canSendVideos,
      'can_send_video_notes': ?instance.canSendVideoNotes,
      'can_send_voice_notes': ?instance.canSendVoiceNotes,
    };
