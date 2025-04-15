// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unique_gift_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UniqueGiftInfo _$UniqueGiftInfoFromJson(Map<String, dynamic> json) =>
    _UniqueGiftInfo(
      gift: UniqueGift.fromJson(json['gift'] as Map<String, dynamic>),
      origin: json['origin'] as String,
      ownedGiftId: json['owned_gift_id'] as String?,
      transferStarCount: (json['transfer_star_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$UniqueGiftInfoToJson(_UniqueGiftInfo instance) =>
    <String, dynamic>{
      'gift': instance.gift,
      'origin': instance.origin,
      if (instance.ownedGiftId case final value?) 'owned_gift_id': value,
      if (instance.transferStarCount case final value?)
        'transfer_star_count': value,
    };
