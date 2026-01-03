// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accepted_gift_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AcceptedGiftTypes _$AcceptedGiftTypesFromJson(Map<String, dynamic> json) =>
    _AcceptedGiftTypes(
      unlimitedGifts: json['unlimited_gifts'] as bool?,
      limitedGifts: json['limited_gifts'] as bool?,
      uniqueGifts: json['unique_gifts'] as bool?,
      premiumSubscription: json['premium_subscription'] as bool?,
      giftsFromChannels: json['gifts_from_channels'] as bool?,
    );

Map<String, dynamic> _$AcceptedGiftTypesToJson(_AcceptedGiftTypes instance) =>
    <String, dynamic>{
      'unlimited_gifts': ?instance.unlimitedGifts,
      'limited_gifts': ?instance.limitedGifts,
      'unique_gifts': ?instance.uniqueGifts,
      'premium_subscription': ?instance.premiumSubscription,
      'gifts_from_channels': ?instance.giftsFromChannels,
    };
