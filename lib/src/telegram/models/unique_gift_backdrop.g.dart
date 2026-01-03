// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unique_gift_backdrop.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UniqueGiftBackdrop _$UniqueGiftBackdropFromJson(Map<String, dynamic> json) =>
    _UniqueGiftBackdrop(
      name: json['name'] as String,
      colors: UniqueGiftBackdropColors.fromJson(
        json['colors'] as Map<String, dynamic>,
      ),
      rarityPerMille: (json['rarity_per_mille'] as num).toInt(),
    );

Map<String, dynamic> _$UniqueGiftBackdropToJson(_UniqueGiftBackdrop instance) =>
    <String, dynamic>{
      'name': instance.name,
      'colors': instance.colors,
      'rarity_per_mille': instance.rarityPerMille,
    };
