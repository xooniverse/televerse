// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unique_gift_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UniqueGiftInfo _$UniqueGiftInfoFromJson(Map<String, dynamic> json) =>
    _UniqueGiftInfo(
      gift: UniqueGift.fromJson(json['gift'] as Map<String, dynamic>),
      origin: $enumDecode(_$UniqueGiftOriginTypeEnumMap, json['origin']),
      lastResaleStarCount: (json['last_resale_star_count'] as num?)?.toInt(),
      ownedGiftId: json['owned_gift_id'] as String?,
      transferStarCount: (json['transfer_star_count'] as num?)?.toInt(),
      nextTransferDate: (json['next_transfer_date'] as num?)?.toInt(),
    );

Map<String, dynamic> _$UniqueGiftInfoToJson(_UniqueGiftInfo instance) =>
    <String, dynamic>{
      'gift': instance.gift,
      'origin': _$UniqueGiftOriginTypeEnumMap[instance.origin]!,
      if (instance.lastResaleStarCount case final value?)
        'last_resale_star_count': value,
      if (instance.ownedGiftId case final value?) 'owned_gift_id': value,
      if (instance.transferStarCount case final value?)
        'transfer_star_count': value,
      if (instance.nextTransferDate case final value?)
        'next_transfer_date': value,
    };

const _$UniqueGiftOriginTypeEnumMap = {
  UniqueGiftOriginType.upgrade: 'upgrade',
  UniqueGiftOriginType.transfer: 'transfer',
  UniqueGiftOriginType.resale: 'resale',
};
