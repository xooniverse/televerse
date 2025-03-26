// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_chat_participants_invited.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VideoChatParticipantsInvited _$VideoChatParticipantsInvitedFromJson(
        Map<String, dynamic> json) =>
    _VideoChatParticipantsInvited(
      users: (json['users'] as List<dynamic>)
          .map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$VideoChatParticipantsInvitedToJson(
        _VideoChatParticipantsInvited instance) =>
    <String, dynamic>{
      'users': instance.users,
    };
