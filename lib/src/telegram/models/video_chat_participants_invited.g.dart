// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_chat_participants_invited.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VideoChatParticipantsInvitedImpl _$$VideoChatParticipantsInvitedImplFromJson(
        Map<String, dynamic> json) =>
    _$VideoChatParticipantsInvitedImpl(
      users: (json['users'] as List<dynamic>)
          .map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$VideoChatParticipantsInvitedImplToJson(
        _$VideoChatParticipantsInvitedImpl instance) =>
    <String, dynamic>{
      'users': instance.users,
    };
