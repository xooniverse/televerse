// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forum_topic_edited.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ForumTopicEditedImpl _$$ForumTopicEditedImplFromJson(
        Map<String, dynamic> json) =>
    _$ForumTopicEditedImpl(
      name: json['name'] as String?,
      iconCustomEmojiId: json['icon_custom_emoji_id'] as String?,
    );

Map<String, dynamic> _$$ForumTopicEditedImplToJson(
        _$ForumTopicEditedImpl instance) =>
    <String, dynamic>{
      if (instance.name case final value?) 'name': value,
      if (instance.iconCustomEmojiId case final value?)
        'icon_custom_emoji_id': value,
    };
