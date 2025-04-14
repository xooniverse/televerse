// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unique_gift_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UniqueGiftModel _$UniqueGiftModelFromJson(Map<String, dynamic> json) =>
    _UniqueGiftModel(
      name: json['name'] as String,
      sticker: Sticker.fromJson(json['sticker'] as Map<String, dynamic>),
      rarityPerMille: (json['rarity_per_mille'] as num).toInt(),
    );

Map<String, dynamic> _$UniqueGiftModelToJson(_UniqueGiftModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'sticker': instance.sticker,
      'rarity_per_mille': instance.rarityPerMille,
    };
