// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forum_topic_created.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ForumTopicCreated _$ForumTopicCreatedFromJson(Map<String, dynamic> json) =>
    _ForumTopicCreated(
      name: json['name'] as String,
      iconColor: (json['icon_color'] as num).toInt(),
      iconCustomEmojiId: json['icon_custom_emoji_id'] as String?,
      isNameImplicit: json['is_name_implicit'] as bool?,
    );

Map<String, dynamic> _$ForumTopicCreatedToJson(_ForumTopicCreated instance) =>
    <String, dynamic>{
      'name': instance.name,
      'icon_color': instance.iconColor,
      'icon_custom_emoji_id': ?instance.iconCustomEmojiId,
      'is_name_implicit': ?instance.isNameImplicit,
    };
