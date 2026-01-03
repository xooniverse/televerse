// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'owned_gift.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OwnedGiftRegular _$OwnedGiftRegularFromJson(Map<String, dynamic> json) =>
    OwnedGiftRegular(
      type:
          $enumDecodeNullable(_$OwnedGiftTypeEnumMap, json['type']) ??
          OwnedGiftType.regular,
      gift: Gift.fromJson(json['gift'] as Map<String, dynamic>),
      ownedGiftId: json['owned_gift_id'] as String?,
      senderUser: json['sender_user'] == null
          ? null
          : User.fromJson(json['sender_user'] as Map<String, dynamic>),
      sendDate: (json['send_date'] as num).toInt(),
      text: json['text'] as String?,
      entities: (json['entities'] as List<dynamic>?)
          ?.map((e) => MessageEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      isPrivate: json['is_private'] as bool?,
      isSaved: json['is_saved'] as bool?,
      canBeUpgraded: json['can_be_upgraded'] as bool?,
      wasRefunded: json['was_refunded'] as bool?,
      convertStarCount: (json['convert_star_count'] as num?)?.toInt(),
      prepaidUpgradeStarCount: (json['prepaid_upgrade_star_count'] as num?)
          ?.toInt(),
      isUpgradeSeparate: json['is_upgrade_separate'] as bool?,
      uniqueGiftNumber: (json['unique_gift_number'] as num?)?.toInt(),
    );

Map<String, dynamic> _$OwnedGiftRegularToJson(OwnedGiftRegular instance) =>
    <String, dynamic>{
      'type': _$OwnedGiftTypeEnumMap[instance.type]!,
      'gift': instance.gift,
      'owned_gift_id': ?instance.ownedGiftId,
      'sender_user': ?instance.senderUser,
      'send_date': instance.sendDate,
      'text': ?instance.text,
      'entities': ?instance.entities,
      'is_private': ?instance.isPrivate,
      'is_saved': ?instance.isSaved,
      'can_be_upgraded': ?instance.canBeUpgraded,
      'was_refunded': ?instance.wasRefunded,
      'convert_star_count': ?instance.convertStarCount,
      'prepaid_upgrade_star_count': ?instance.prepaidUpgradeStarCount,
      'is_upgrade_separate': ?instance.isUpgradeSeparate,
      'unique_gift_number': ?instance.uniqueGiftNumber,
    };

const _$OwnedGiftTypeEnumMap = {
  OwnedGiftType.regular: 'regular',
  OwnedGiftType.unique: 'unique',
};

OwnedGiftUnique _$OwnedGiftUniqueFromJson(Map<String, dynamic> json) =>
    OwnedGiftUnique(
      type:
          $enumDecodeNullable(_$OwnedGiftTypeEnumMap, json['type']) ??
          OwnedGiftType.unique,
      gift: UniqueGift.fromJson(json['gift'] as Map<String, dynamic>),
      ownedGiftId: json['owned_gift_id'] as String?,
      senderUser: json['sender_user'] == null
          ? null
          : User.fromJson(json['sender_user'] as Map<String, dynamic>),
      sendDate: (json['send_date'] as num).toInt(),
      isSaved: json['is_saved'] as bool?,
      canBeTransferred: json['can_be_transferred'] as bool?,
      transferStarCount: (json['transfer_star_count'] as num?)?.toInt(),
      nextTransferDate: (json['next_transfer_date'] as num?)?.toInt(),
    );

Map<String, dynamic> _$OwnedGiftUniqueToJson(OwnedGiftUnique instance) =>
    <String, dynamic>{
      'type': _$OwnedGiftTypeEnumMap[instance.type]!,
      'gift': instance.gift,
      'owned_gift_id': ?instance.ownedGiftId,
      'sender_user': ?instance.senderUser,
      'send_date': instance.sendDate,
      'is_saved': ?instance.isSaved,
      'can_be_transferred': ?instance.canBeTransferred,
      'transfer_star_count': ?instance.transferStarCount,
      'next_transfer_date': ?instance.nextTransferDate,
    };
