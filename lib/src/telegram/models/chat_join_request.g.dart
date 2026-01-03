// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_join_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatJoinRequest _$ChatJoinRequestFromJson(Map<String, dynamic> json) =>
    _ChatJoinRequest(
      chat: Chat.fromJson(json['chat'] as Map<String, dynamic>),
      from: User.fromJson(json['from'] as Map<String, dynamic>),
      date: (json['date'] as num).toInt(),
      bio: json['bio'] as String?,
      inviteLink: json['invite_link'] == null
          ? null
          : ChatInviteLink.fromJson(
              json['invite_link'] as Map<String, dynamic>,
            ),
      userChatId: (json['user_chat_id'] as num).toInt(),
    );

Map<String, dynamic> _$ChatJoinRequestToJson(_ChatJoinRequest instance) =>
    <String, dynamic>{
      'chat': instance.chat,
      'from': instance.from,
      'date': instance.date,
      'bio': ?instance.bio,
      'invite_link': ?instance.inviteLink,
      'user_chat_id': instance.userChatId,
    };
