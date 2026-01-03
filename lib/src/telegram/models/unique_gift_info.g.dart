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
      'last_resale_star_count': ?instance.lastResaleStarCount,
      'owned_gift_id': ?instance.ownedGiftId,
      'transfer_star_count': ?instance.transferStarCount,
      'next_transfer_date': ?instance.nextTransferDate,
    };

const _$UniqueGiftOriginTypeEnumMap = {
  UniqueGiftOriginType.upgrade: 'upgrade',
  UniqueGiftOriginType.transfer: 'transfer',
  UniqueGiftOriginType.resale: 'resale',
};
