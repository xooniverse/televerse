// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_boost_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatBoostSourcePremiumImpl _$$ChatBoostSourcePremiumImplFromJson(
        Map<String, dynamic> json) =>
    _$ChatBoostSourcePremiumImpl(
      source:
          $enumDecodeNullable(_$ChatBoostSourceTypeEnumMap, json['source']) ??
              ChatBoostSourceType.premium,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ChatBoostSourcePremiumImplToJson(
        _$ChatBoostSourcePremiumImpl instance) =>
    <String, dynamic>{
      'source': instance.source,
      'user': instance.user,
    };

const _$ChatBoostSourceTypeEnumMap = {
  ChatBoostSourceType.premium: 'premium',
  ChatBoostSourceType.giftCode: 'gift_code',
  ChatBoostSourceType.giveaway: 'giveaway',
};

_$ChatBoostSourceGiftCodeImpl _$$ChatBoostSourceGiftCodeImplFromJson(
        Map<String, dynamic> json) =>
    _$ChatBoostSourceGiftCodeImpl(
      source:
          $enumDecodeNullable(_$ChatBoostSourceTypeEnumMap, json['source']) ??
              ChatBoostSourceType.giftCode,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ChatBoostSourceGiftCodeImplToJson(
        _$ChatBoostSourceGiftCodeImpl instance) =>
    <String, dynamic>{
      'source': instance.source,
      'user': instance.user,
    };

_$ChatBoostSourceGiveawayImpl _$$ChatBoostSourceGiveawayImplFromJson(
        Map<String, dynamic> json) =>
    _$ChatBoostSourceGiveawayImpl(
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

Map<String, dynamic> _$$ChatBoostSourceGiveawayImplToJson(
        _$ChatBoostSourceGiveawayImpl instance) =>
    <String, dynamic>{
      'source': instance.source,
      'giveaway_message_id': instance.giveawayMessageId,
      if (instance.user case final value?) 'user': value,
      if (instance.prizeStarCount case final value?) 'prize_star_count': value,
      if (instance.isUnclaimed case final value?) 'is_unclaimed': value,
    };
