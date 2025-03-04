// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageEntityImpl _$$MessageEntityImplFromJson(Map<String, dynamic> json) =>
    _$MessageEntityImpl(
      type: $enumDecode(_$MessageEntityTypeEnumMap, json['type']),
      offset: (json['offset'] as num).toInt(),
      length: (json['length'] as num).toInt(),
      url: json['url'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      language: json['language'] as String?,
      customEmojiId: json['custom_emoji_id'] as String?,
    );

Map<String, dynamic> _$$MessageEntityImplToJson(_$MessageEntityImpl instance) =>
    <String, dynamic>{
      'type': _$MessageEntityTypeEnumMap[instance.type]!,
      'offset': instance.offset,
      'length': instance.length,
      if (instance.url case final value?) 'url': value,
      if (instance.user case final value?) 'user': value,
      if (instance.language case final value?) 'language': value,
      if (instance.customEmojiId case final value?) 'custom_emoji_id': value,
    };

const _$MessageEntityTypeEnumMap = {
  MessageEntityType.mention: 'mention',
  MessageEntityType.hashtag: 'hashtag',
  MessageEntityType.cashtag: 'cashtag',
  MessageEntityType.botCommand: 'bot_command',
  MessageEntityType.url: 'url',
  MessageEntityType.email: 'email',
  MessageEntityType.phoneNumber: 'phone_number',
  MessageEntityType.bold: 'bold',
  MessageEntityType.italic: 'italic',
  MessageEntityType.underline: 'underline',
  MessageEntityType.strikethrough: 'strikethrough',
  MessageEntityType.spoiler: 'spoiler',
  MessageEntityType.code: 'code',
  MessageEntityType.pre: 'pre',
  MessageEntityType.textLink: 'text_link',
  MessageEntityType.textMention: 'text_mention',
  MessageEntityType.customEmoji: 'custom_emoji',
  MessageEntityType.blockquote: 'blockquote',
  MessageEntityType.expandableBlockquote: 'expandable_blockquote',
};
