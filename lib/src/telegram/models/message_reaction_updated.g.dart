// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_reaction_updated.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MessageReactionUpdated _$MessageReactionUpdatedFromJson(
  Map<String, dynamic> json,
) => _MessageReactionUpdated(
  chat: Chat.fromJson(json['chat'] as Map<String, dynamic>),
  messageId: (json['message_id'] as num).toInt(),
  user: json['user'] == null
      ? null
      : User.fromJson(json['user'] as Map<String, dynamic>),
  actorChat: json['actor_chat'] == null
      ? null
      : Chat.fromJson(json['actor_chat'] as Map<String, dynamic>),
  date: (json['date'] as num).toInt(),
  oldReaction: (json['old_reaction'] as List<dynamic>)
      .map((e) => ReactionType.fromJson(e as Map<String, dynamic>))
      .toList(),
  newReaction: (json['new_reaction'] as List<dynamic>)
      .map((e) => ReactionType.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$MessageReactionUpdatedToJson(
  _MessageReactionUpdated instance,
) => <String, dynamic>{
  'chat': instance.chat,
  'message_id': instance.messageId,
  'user': ?instance.user,
  'actor_chat': ?instance.actorChat,
  'date': instance.date,
  'old_reaction': instance.oldReaction,
  'new_reaction': instance.newReaction,
};
