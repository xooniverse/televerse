// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unique_gift_symbol.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UniqueGiftSymbol _$UniqueGiftSymbolFromJson(Map<String, dynamic> json) =>
    _UniqueGiftSymbol(
      name: json['name'] as String,
      sticker: Sticker.fromJson(json['sticker'] as Map<String, dynamic>),
      rarityPerMille: (json['rarity_per_mille'] as num).toInt(),
    );

Map<String, dynamic> _$UniqueGiftSymbolToJson(_UniqueGiftSymbol instance) =>
    <String, dynamic>{
      'name': instance.name,
      'sticker': instance.sticker,
      'rarity_per_mille': instance.rarityPerMille,
    };
