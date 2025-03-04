// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_join_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatJoinRequestImpl _$$ChatJoinRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ChatJoinRequestImpl(
      chat: Chat.fromJson(json['chat'] as Map<String, dynamic>),
      from: User.fromJson(json['from'] as Map<String, dynamic>),
      date: (json['date'] as num).toInt(),
      bio: json['bio'] as String?,
      inviteLink: json['invite_link'] == null
          ? null
          : ChatInviteLink.fromJson(
              json['invite_link'] as Map<String, dynamic>),
      userChatId: (json['user_chat_id'] as num).toInt(),
    );

Map<String, dynamic> _$$ChatJoinRequestImplToJson(
        _$ChatJoinRequestImpl instance) =>
    <String, dynamic>{
      'chat': instance.chat,
      'from': instance.from,
      'date': instance.date,
      if (instance.bio case final value?) 'bio': value,
      if (instance.inviteLink case final value?) 'invite_link': value,
      'user_chat_id': instance.userChatId,
    };
