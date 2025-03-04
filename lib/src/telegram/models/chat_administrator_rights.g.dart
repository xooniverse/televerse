// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_administrator_rights.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatAdministratorRightsImpl _$$ChatAdministratorRightsImplFromJson(
        Map<String, dynamic> json) =>
    _$ChatAdministratorRightsImpl(
      isAnonymous: json['is_anonymous'] as bool,
      canManageChat: json['can_manage_chat'] as bool,
      canDeleteMessages: json['can_delete_messages'] as bool,
      canManageVideoChats: json['can_manage_video_chats'] as bool,
      canRestrictMembers: json['can_restrict_members'] as bool,
      canPromoteMembers: json['can_promote_members'] as bool,
      canChangeInfo: json['can_change_info'] as bool,
      canInviteUsers: json['can_invite_users'] as bool,
      canPostMessages: json['can_post_messages'] as bool?,
      canEditMessages: json['can_edit_messages'] as bool?,
      canPinMessages: json['can_pin_messages'] as bool?,
      canManageForum: json['can_manage_forum'] as bool?,
      canPostStories: json['can_post_stories'] as bool?,
      canEditStories: json['can_edit_stories'] as bool?,
      canDeleteStories: json['can_delete_stories'] as bool?,
    );

Map<String, dynamic> _$$ChatAdministratorRightsImplToJson(
        _$ChatAdministratorRightsImpl instance) =>
    <String, dynamic>{
      'is_anonymous': instance.isAnonymous,
      'can_manage_chat': instance.canManageChat,
      'can_delete_messages': instance.canDeleteMessages,
      'can_manage_video_chats': instance.canManageVideoChats,
      'can_restrict_members': instance.canRestrictMembers,
      'can_promote_members': instance.canPromoteMembers,
      'can_change_info': instance.canChangeInfo,
      'can_invite_users': instance.canInviteUsers,
      if (instance.canPostMessages case final value?)
        'can_post_messages': value,
      if (instance.canEditMessages case final value?)
        'can_edit_messages': value,
      if (instance.canPinMessages case final value?) 'can_pin_messages': value,
      if (instance.canManageForum case final value?) 'can_manage_forum': value,
      if (instance.canPostStories case final value?) 'can_post_stories': value,
      if (instance.canEditStories case final value?) 'can_edit_stories': value,
      if (instance.canDeleteStories case final value?)
        'can_delete_stories': value,
    };
