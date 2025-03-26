// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'story.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Story _$StoryFromJson(Map<String, dynamic> json) => _Story(
      chat: Chat.fromJson(json['chat'] as Map<String, dynamic>),
      id: (json['id'] as num).toInt(),
    );

Map<String, dynamic> _$StoryToJson(_Story instance) => <String, dynamic>{
      'chat': instance.chat,
      'id': instance.id,
    };
