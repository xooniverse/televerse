// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forum_topic_edited.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ForumTopicEdited _$ForumTopicEditedFromJson(Map<String, dynamic> json) =>
    _ForumTopicEdited(
      name: json['name'] as String?,
      iconCustomEmojiId: json['icon_custom_emoji_id'] as String?,
    );

Map<String, dynamic> _$ForumTopicEditedToJson(_ForumTopicEdited instance) =>
    <String, dynamic>{
      if (instance.name case final value?) 'name': value,
      if (instance.iconCustomEmojiId case final value?)
        'icon_custom_emoji_id': value,
    };
