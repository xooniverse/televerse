// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GiftInfo _$GiftInfoFromJson(Map<String, dynamic> json) => _GiftInfo(
      gift: Gift.fromJson(json['gift'] as Map<String, dynamic>),
      ownedGiftId: json['owned_gift_id'] as String?,
      convertStarCount: (json['convert_star_count'] as num?)?.toInt(),
      prepaidUpgradeStarCount:
          (json['prepaid_upgrade_star_count'] as num?)?.toInt(),
      canBeUpgraded: json['can_be_upgraded'] as bool?,
      text: json['text'] as String?,
      entities: (json['entities'] as List<dynamic>?)
          ?.map((e) => MessageEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      isPrivate: json['is_private'] as bool?,
    );

Map<String, dynamic> _$GiftInfoToJson(_GiftInfo instance) => <String, dynamic>{
      'gift': instance.gift,
      if (instance.ownedGiftId case final value?) 'owned_gift_id': value,
      if (instance.convertStarCount case final value?)
        'convert_star_count': value,
      if (instance.prepaidUpgradeStarCount case final value?)
        'prepaid_upgrade_star_count': value,
      if (instance.canBeUpgraded case final value?) 'can_be_upgraded': value,
      if (instance.text case final value?) 'text': value,
      if (instance.entities case final value?) 'entities': value,
      if (instance.isPrivate case final value?) 'is_private': value,
    };
