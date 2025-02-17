// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forum_topic_created.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ForumTopicCreatedImpl _$$ForumTopicCreatedImplFromJson(
        Map<String, dynamic> json) =>
    _$ForumTopicCreatedImpl(
      name: json['name'] as String,
      color: (json['icon_color'] as num).toInt(),
      iconCustomEmojiId: json['icon_custom_emoji_id'] as String?,
    );

Map<String, dynamic> _$$ForumTopicCreatedImplToJson(
        _$ForumTopicCreatedImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'icon_color': instance.color,
      if (instance.iconCustomEmojiId case final value?)
        'icon_custom_emoji_id': value,
    };
