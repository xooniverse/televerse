// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Dice _$DiceFromJson(Map<String, dynamic> json) => _Dice(
  emoji: $enumDecode(_$DiceEmojiEnumMap, json['emoji']),
  value: (json['value'] as num).toInt(),
);

Map<String, dynamic> _$DiceToJson(_Dice instance) => <String, dynamic>{
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
