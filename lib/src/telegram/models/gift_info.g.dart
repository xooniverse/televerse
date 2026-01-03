// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GiftInfo _$GiftInfoFromJson(Map<String, dynamic> json) => _GiftInfo(
  gift: Gift.fromJson(json['gift'] as Map<String, dynamic>),
  ownedGiftId: json['owned_gift_id'] as String?,
  convertStarCount: (json['convert_star_count'] as num?)?.toInt(),
  prepaidUpgradeStarCount: (json['prepaid_upgrade_star_count'] as num?)
      ?.toInt(),
  canBeUpgraded: json['can_be_upgraded'] as bool?,
  text: json['text'] as String?,
  entities: (json['entities'] as List<dynamic>?)
      ?.map((e) => MessageEntity.fromJson(e as Map<String, dynamic>))
      .toList(),
  isPrivate: json['is_private'] as bool?,
  isUpgradeSeparate: json['is_upgrade_separate'] as bool?,
);

Map<String, dynamic> _$GiftInfoToJson(_GiftInfo instance) => <String, dynamic>{
  'gift': instance.gift,
  'owned_gift_id': ?instance.ownedGiftId,
  'convert_star_count': ?instance.convertStarCount,
  'prepaid_upgrade_star_count': ?instance.prepaidUpgradeStarCount,
  'can_be_upgraded': ?instance.canBeUpgraded,
  'text': ?instance.text,
  'entities': ?instance.entities,
  'is_private': ?instance.isPrivate,
  'is_upgrade_separate': ?instance.isUpgradeSeparate,
};
