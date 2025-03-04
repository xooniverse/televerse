// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reaction_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReactionTypeEmojiImpl _$$ReactionTypeEmojiImplFromJson(
        Map<String, dynamic> json) =>
    _$ReactionTypeEmojiImpl(
      type: $enumDecodeNullable(_$ReactionTypeTypeEnumMap, json['type']) ??
          ReactionTypeType.emoji,
      emoji: json['emoji'] as String,
    );

Map<String, dynamic> _$$ReactionTypeEmojiImplToJson(
        _$ReactionTypeEmojiImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'emoji': instance.emoji,
    };

const _$ReactionTypeTypeEnumMap = {
  ReactionTypeType.emoji: 'emoji',
  ReactionTypeType.customEmoji: 'custom_emoji',
  ReactionTypeType.paid: 'paid',
};

_$ReactionTypeCustomEmojiImpl _$$ReactionTypeCustomEmojiImplFromJson(
        Map<String, dynamic> json) =>
    _$ReactionTypeCustomEmojiImpl(
      type: $enumDecodeNullable(_$ReactionTypeTypeEnumMap, json['type']) ??
          ReactionTypeType.customEmoji,
      customEmojiId: json['custom_emoji_id'] as String,
    );

Map<String, dynamic> _$$ReactionTypeCustomEmojiImplToJson(
        _$ReactionTypeCustomEmojiImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'custom_emoji_id': instance.customEmojiId,
    };

_$ReactionTypePaidImpl _$$ReactionTypePaidImplFromJson(
        Map<String, dynamic> json) =>
    _$ReactionTypePaidImpl(
      type: $enumDecodeNullable(_$ReactionTypeTypeEnumMap, json['type']) ??
          ReactionTypeType.paid,
    );

Map<String, dynamic> _$$ReactionTypePaidImplToJson(
        _$ReactionTypePaidImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
    };
