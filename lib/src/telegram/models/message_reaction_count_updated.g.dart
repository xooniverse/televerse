// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_reaction_count_updated.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageReactionCountUpdatedImpl _$$MessageReactionCountUpdatedImplFromJson(
        Map<String, dynamic> json) =>
    _$MessageReactionCountUpdatedImpl(
      chat: Chat.fromJson(json['chat'] as Map<String, dynamic>),
      messageId: (json['message_id'] as num).toInt(),
      date: (json['date'] as num).toInt(),
      reactions: (json['reactions'] as List<dynamic>)
          .map((e) => ReactionCount.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MessageReactionCountUpdatedImplToJson(
        _$MessageReactionCountUpdatedImpl instance) =>
    <String, dynamic>{
      'chat': instance.chat,
      'message_id': instance.messageId,
      'date': instance.date,
      'reactions': instance.reactions,
    };
