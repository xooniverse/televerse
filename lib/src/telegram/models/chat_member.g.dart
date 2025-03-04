// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_member.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatMemberOwnerImpl _$$ChatMemberOwnerImplFromJson(
        Map<String, dynamic> json) =>
    _$ChatMemberOwnerImpl(
      status: $enumDecodeNullable(_$ChatMemberStatusEnumMap, json['status']) ??
          ChatMemberStatus.creator,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      isAnonymous: json['is_anonymous'] as bool,
      customTitle: json['custom_title'] as String?,
    );

Map<String, dynamic> _$$ChatMemberOwnerImplToJson(
        _$ChatMemberOwnerImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'user': instance.user,
      'is_anonymous': instance.isAnonymous,
      if (instance.customTitle case final value?) 'custom_title': value,
    };

const _$ChatMemberStatusEnumMap = {
  ChatMemberStatus.creator: 'creator',
  ChatMemberStatus.administrator: 'administrator',
  ChatMemberStatus.member: 'member',
  ChatMemberStatus.restricted: 'restricted',
  ChatMemberStatus.left: 'left',
  ChatMemberStatus.kicked: 'kicked',
};

_$ChatMemberAdministratorImpl _$$ChatMemberAdministratorImplFromJson(
        Map<String, dynamic> json) =>
    _$ChatMemberAdministratorImpl(
      status: $enumDecodeNullable(_$ChatMemberStatusEnumMap, json['status']) ??
          ChatMemberStatus.administrator,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      canBeEdited: json['can_be_edited'] as bool,
      isAnonymous: json['is_anonymous'] as bool,
      canManageChat: json['can_manage_chat'] as bool,
      canDeleteMessages: json['can_delete_messages'] as bool,
      canManageVideoChats: json['can_manage_video_chats'] as bool,
      canRestrictMembers: json['can_restrict_members'] as bool,
      canPromoteMembers: json['can_promote_members'] as bool,
      canChangeInfo: json['can_change_info'] as bool,
      canInviteUsers: json['can_invite_users'] as bool,
      canPostStories: json['can_post_stories'] as bool,
      canEditStories: json['can_edit_stories'] as bool,
      canDeleteStories: json['can_delete_stories'] as bool,
      canPostMessages: json['can_post_messages'] as bool?,
      canEditMessages: json['can_edit_messages'] as bool?,
      canPinMessages: json['can_pin_messages'] as bool?,
      canManageTopics: json['can_manage_topics'] as bool?,
      customTitle: json['custom_title'] as String?,
    );

Map<String, dynamic> _$$ChatMemberAdministratorImplToJson(
        _$ChatMemberAdministratorImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'user': instance.user,
      'can_be_edited': instance.canBeEdited,
      'is_anonymous': instance.isAnonymous,
      'can_manage_chat': instance.canManageChat,
      'can_delete_messages': instance.canDeleteMessages,
      'can_manage_video_chats': instance.canManageVideoChats,
      'can_restrict_members': instance.canRestrictMembers,
      'can_promote_members': instance.canPromoteMembers,
      'can_change_info': instance.canChangeInfo,
      'can_invite_users': instance.canInviteUsers,
      'can_post_stories': instance.canPostStories,
      'can_edit_stories': instance.canEditStories,
      'can_delete_stories': instance.canDeleteStories,
      if (instance.canPostMessages case final value?)
        'can_post_messages': value,
      if (instance.canEditMessages case final value?)
        'can_edit_messages': value,
      if (instance.canPinMessages case final value?) 'can_pin_messages': value,
      if (instance.canManageTopics case final value?)
        'can_manage_topics': value,
      if (instance.customTitle case final value?) 'custom_title': value,
    };

_$ChatMemberMemberImpl _$$ChatMemberMemberImplFromJson(
        Map<String, dynamic> json) =>
    _$ChatMemberMemberImpl(
      status: $enumDecodeNullable(_$ChatMemberStatusEnumMap, json['status']) ??
          ChatMemberStatus.member,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      untilDate: (json['until_date'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ChatMemberMemberImplToJson(
        _$ChatMemberMemberImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'user': instance.user,
      if (instance.untilDate case final value?) 'until_date': value,
    };

_$ChatMemberRestrictedImpl _$$ChatMemberRestrictedImplFromJson(
        Map<String, dynamic> json) =>
    _$ChatMemberRestrictedImpl(
      status: $enumDecodeNullable(_$ChatMemberStatusEnumMap, json['status']) ??
          ChatMemberStatus.restricted,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      isMember: json['is_member'] as bool,
      canSendMessages: json['can_send_messages'] as bool,
      canSendAudios: json['can_send_audios'] as bool,
      canSendDocuments: json['can_send_documents'] as bool,
      canSendPhotos: json['can_send_photos'] as bool,
      canSendVideos: json['can_send_videos'] as bool,
      canSendVideoNotes: json['can_send_video_notes'] as bool,
      canSendVoiceNotes: json['can_send_voice_notes'] as bool,
      canSendPolls: json['can_send_polls'] as bool,
      canSendOtherMessages: json['can_send_other_messages'] as bool,
      canAddWebPagePreviews: json['can_add_web_page_previews'] as bool,
      canChangeInfo: json['can_change_info'] as bool,
      canInviteUsers: json['can_invite_users'] as bool,
      canPinMessages: json['can_pin_messages'] as bool,
      canManageTopics: json['can_manage_topics'] as bool,
      untilDate: (json['until_date'] as num).toInt(),
    );

Map<String, dynamic> _$$ChatMemberRestrictedImplToJson(
        _$ChatMemberRestrictedImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'user': instance.user,
      'is_member': instance.isMember,
      'can_send_messages': instance.canSendMessages,
      'can_send_audios': instance.canSendAudios,
      'can_send_documents': instance.canSendDocuments,
      'can_send_photos': instance.canSendPhotos,
      'can_send_videos': instance.canSendVideos,
      'can_send_video_notes': instance.canSendVideoNotes,
      'can_send_voice_notes': instance.canSendVoiceNotes,
      'can_send_polls': instance.canSendPolls,
      'can_send_other_messages': instance.canSendOtherMessages,
      'can_add_web_page_previews': instance.canAddWebPagePreviews,
      'can_change_info': instance.canChangeInfo,
      'can_invite_users': instance.canInviteUsers,
      'can_pin_messages': instance.canPinMessages,
      'can_manage_topics': instance.canManageTopics,
      'until_date': instance.untilDate,
    };

_$ChatMemberLeftImpl _$$ChatMemberLeftImplFromJson(Map<String, dynamic> json) =>
    _$ChatMemberLeftImpl(
      status: $enumDecodeNullable(_$ChatMemberStatusEnumMap, json['status']) ??
          ChatMemberStatus.left,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ChatMemberLeftImplToJson(
        _$ChatMemberLeftImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'user': instance.user,
    };

_$ChatMemberBannedImpl _$$ChatMemberBannedImplFromJson(
        Map<String, dynamic> json) =>
    _$ChatMemberBannedImpl(
      status: $enumDecodeNullable(_$ChatMemberStatusEnumMap, json['status']) ??
          ChatMemberStatus.kicked,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      untilDate: (json['until_date'] as num).toInt(),
    );

Map<String, dynamic> _$$ChatMemberBannedImplToJson(
        _$ChatMemberBannedImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'user': instance.user,
      'until_date': instance.untilDate,
    };
