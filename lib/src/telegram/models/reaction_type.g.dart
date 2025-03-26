// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reaction_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReactionTypeEmoji _$ReactionTypeEmojiFromJson(Map<String, dynamic> json) =>
    ReactionTypeEmoji(
      type: $enumDecodeNullable(_$ReactionTypeTypeEnumMap, json['type']) ??
          ReactionTypeType.emoji,
      emoji: json['emoji'] as String,
    );

Map<String, dynamic> _$ReactionTypeEmojiToJson(ReactionTypeEmoji instance) =>
    <String, dynamic>{
      'type': instance.type,
      'emoji': instance.emoji,
    };

const _$ReactionTypeTypeEnumMap = {
  ReactionTypeType.emoji: 'emoji',
  ReactionTypeType.customEmoji: 'custom_emoji',
  ReactionTypeType.paid: 'paid',
};

ReactionTypeCustomEmoji _$ReactionTypeCustomEmojiFromJson(
        Map<String, dynamic> json) =>
    ReactionTypeCustomEmoji(
      type: $enumDecodeNullable(_$ReactionTypeTypeEnumMap, json['type']) ??
          ReactionTypeType.customEmoji,
      customEmojiId: json['custom_emoji_id'] as String,
    );

Map<String, dynamic> _$ReactionTypeCustomEmojiToJson(
        ReactionTypeCustomEmoji instance) =>
    <String, dynamic>{
      'type': instance.type,
      'custom_emoji_id': instance.customEmojiId,
    };

ReactionTypePaid _$ReactionTypePaidFromJson(Map<String, dynamic> json) =>
    ReactionTypePaid(
      type: $enumDecodeNullable(_$ReactionTypeTypeEnumMap, json['type']) ??
          ReactionTypeType.paid,
    );

Map<String, dynamic> _$ReactionTypePaidToJson(ReactionTypePaid instance) =>
    <String, dynamic>{
      'type': instance.type,
    };
