// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DiceImpl _$$DiceImplFromJson(Map<String, dynamic> json) => _$DiceImpl(
      emoji: $enumDecode(_$DiceEmojiEnumMap, json['emoji']),
      value: (json['value'] as num).toInt(),
    );

Map<String, dynamic> _$$DiceImplToJson(_$DiceImpl instance) =>
    <String, dynamic>{
      'emoji': instance.emoji,
      'value': instance.value,
    };

const _$DiceEmojiEnumMap = {
  DiceEmoji.dice: '🎲',
  DiceEmoji.dart: '🎯',
  DiceEmoji.basketball: '🏀',
  DiceEmoji.football: '⚽',
  DiceEmoji.bowling: '🎳',
  DiceEmoji.slotMachine: '🎰',
};
