// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forum_topic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ForumTopic _$ForumTopicFromJson(Map<String, dynamic> json) => _ForumTopic(
      messageThreadId: (json['message_thread_id'] as num).toInt(),
      name: json['name'] as String,
      iconColor: (json['icon_color'] as num).toInt(),
      iconCustomEmojiId: json['icon_custom_emoji_id'] as String?,
    );

Map<String, dynamic> _$ForumTopicToJson(_ForumTopic instance) =>
    <String, dynamic>{
      'message_thread_id': instance.messageThreadId,
      'name': instance.name,
      'icon_color': instance.iconColor,
      if (instance.iconCustomEmojiId case final value?)
        'icon_custom_emoji_id': value,
    };
