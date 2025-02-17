// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_permissions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatPermissionsImpl _$$ChatPermissionsImplFromJson(
        Map<String, dynamic> json) =>
    _$ChatPermissionsImpl(
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

Map<String, dynamic> _$$ChatPermissionsImplToJson(
        _$ChatPermissionsImpl instance) =>
    <String, dynamic>{
      if (instance.canSendMessages case final value?)
        'can_send_messages': value,
      if (instance.canSendPolls case final value?) 'can_send_polls': value,
      if (instance.canSendOtherMessages case final value?)
        'can_send_other_messages': value,
      if (instance.canAddWebPagePreviews case final value?)
        'can_add_web_page_previews': value,
      if (instance.canChangeInfo case final value?) 'can_change_info': value,
      if (instance.canInviteUsers case final value?) 'can_invite_users': value,
      if (instance.canPinMessages case final value?) 'can_pin_messages': value,
      if (instance.canManageTopics case final value?)
        'can_manage_topics': value,
      if (instance.canSendAudios case final value?) 'can_send_audios': value,
      if (instance.canSendDocuments case final value?)
        'can_send_documents': value,
      if (instance.canSendPhotos case final value?) 'can_send_photos': value,
      if (instance.canSendVideos case final value?) 'can_send_videos': value,
      if (instance.canSendVideoNotes case final value?)
        'can_send_video_notes': value,
      if (instance.canSendVoiceNotes case final value?)
        'can_send_voice_notes': value,
    };
