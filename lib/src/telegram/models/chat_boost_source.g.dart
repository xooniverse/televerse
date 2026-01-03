// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_boost_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatBoostSourcePremium _$ChatBoostSourcePremiumFromJson(
  Map<String, dynamic> json,
) => ChatBoostSourcePremium(
  source:
      $enumDecodeNullable(_$ChatBoostSourceTypeEnumMap, json['source']) ??
      ChatBoostSourceType.premium,
  user: User.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ChatBoostSourcePremiumToJson(
  ChatBoostSourcePremium instance,
) => <String, dynamic>{
  'source': _$ChatBoostSourceTypeEnumMap[instance.source]!,
  'user': instance.user,
};

const _$ChatBoostSourceTypeEnumMap = {
  ChatBoostSourceType.premium: 'premium',
  ChatBoostSourceType.giftCode: 'gift_code',
  ChatBoostSourceType.giveaway: 'giveaway',
};

ChatBoostSourceGiftCode _$ChatBoostSourceGiftCodeFromJson(
  Map<String, dynamic> json,
) => ChatBoostSourceGiftCode(
  source:
      $enumDecodeNullable(_$ChatBoostSourceTypeEnumMap, json['source']) ??
      ChatBoostSourceType.giftCode,
  user: User.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ChatBoostSourceGiftCodeToJson(
  ChatBoostSourceGiftCode instance,
) => <String, dynamic>{
  'source': _$ChatBoostSourceTypeEnumMap[instance.source]!,
  'user': instance.user,
};

ChatBoostSourceGiveaway _$ChatBoostSourceGiveawayFromJson(
  Map<String, dynamic> json,
) => ChatBoostSourceGiveaway(
  source:
      $enumDecodeNullable(_$ChatBoostSourceTypeEnumMap, json['source']) ??
      ChatBoostSourceType.giveaway,
  giveawayMessageId: (json['giveaway_message_id'] as num).toInt(),
  user: json['user'] == null
      ? null
      : User.fromJson(json['user'] as Map<String, dynamic>),
  prizeStarCount: (json['prize_star_count'] as num?)?.toInt(),
  isUnclaimed: json['is_unclaimed'] as bool?,
);

Map<String, dynamic> _$ChatBoostSourceGiveawayToJson(
  ChatBoostSourceGiveaway instance,
) => <String, dynamic>{
  'source': _$ChatBoostSourceTypeEnumMap[instance.source]!,
  'giveaway_message_id': instance.giveawayMessageId,
  'user': ?instance.user,
  'prize_star_count': ?instance.prizeStarCount,
  'is_unclaimed': ?instance.isUnclaimed,
};
