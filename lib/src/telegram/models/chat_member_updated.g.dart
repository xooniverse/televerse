// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_member_updated.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatMemberUpdatedImpl _$$ChatMemberUpdatedImplFromJson(
        Map<String, dynamic> json) =>
    _$ChatMemberUpdatedImpl(
      chat: Chat.fromJson(json['chat'] as Map<String, dynamic>),
      from: User.fromJson(json['from'] as Map<String, dynamic>),
      date: (json['date'] as num).toInt(),
      oldChatMember:
          ChatMember.fromJson(json['old_chat_member'] as Map<String, dynamic>),
      newChatMember:
          ChatMember.fromJson(json['new_chat_member'] as Map<String, dynamic>),
      inviteLink: json['invite_link'] == null
          ? null
          : ChatInviteLink.fromJson(
              json['invite_link'] as Map<String, dynamic>),
      viaChatFolderInviteLink: json['via_chat_folder_invite_link'] as bool?,
      viaJoinRequest: json['via_join_request'] as bool?,
    );

Map<String, dynamic> _$$ChatMemberUpdatedImplToJson(
        _$ChatMemberUpdatedImpl instance) =>
    <String, dynamic>{
      'chat': instance.chat,
      'from': instance.from,
      'date': instance.date,
      'old_chat_member': instance.oldChatMember,
      'new_chat_member': instance.newChatMember,
      if (instance.inviteLink case final value?) 'invite_link': value,
      if (instance.viaChatFolderInviteLink case final value?)
        'via_chat_folder_invite_link': value,
      if (instance.viaJoinRequest case final value?) 'via_join_request': value,
    };
