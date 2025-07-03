// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'owned_gift.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OwnedGiftRegular _$OwnedGiftRegularFromJson(Map<String, dynamic> json) =>
    OwnedGiftRegular(
      type: $enumDecodeNullable(_$OwnedGiftTypeEnumMap, json['type']) ??
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
      prepaidUpgradeStarCount:
          (json['prepaid_upgrade_star_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$OwnedGiftRegularToJson(OwnedGiftRegular instance) =>
    <String, dynamic>{
      'type': instance.type,
      'gift': instance.gift,
      if (instance.ownedGiftId case final value?) 'owned_gift_id': value,
      if (instance.senderUser case final value?) 'sender_user': value,
      'send_date': instance.sendDate,
      if (instance.text case final value?) 'text': value,
      if (instance.entities case final value?) 'entities': value,
      if (instance.isPrivate case final value?) 'is_private': value,
      if (instance.isSaved case final value?) 'is_saved': value,
      if (instance.canBeUpgraded case final value?) 'can_be_upgraded': value,
      if (instance.wasRefunded case final value?) 'was_refunded': value,
      if (instance.convertStarCount case final value?)
        'convert_star_count': value,
      if (instance.prepaidUpgradeStarCount case final value?)
        'prepaid_upgrade_star_count': value,
    };

const _$OwnedGiftTypeEnumMap = {
  OwnedGiftType.regular: 'regular',
  OwnedGiftType.unique: 'unique',
};

OwnedGiftUnique _$OwnedGiftUniqueFromJson(Map<String, dynamic> json) =>
    OwnedGiftUnique(
      type: $enumDecodeNullable(_$OwnedGiftTypeEnumMap, json['type']) ??
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
      'type': instance.type,
      'gift': instance.gift,
      if (instance.ownedGiftId case final value?) 'owned_gift_id': value,
      if (instance.senderUser case final value?) 'sender_user': value,
      'send_date': instance.sendDate,
      if (instance.isSaved case final value?) 'is_saved': value,
      if (instance.canBeTransferred case final value?)
        'can_be_transferred': value,
      if (instance.transferStarCount case final value?)
        'transfer_star_count': value,
      if (instance.nextTransferDate case final value?)
        'next_transfer_date': value,
    };
