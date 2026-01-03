// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unique_gift.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UniqueGift _$UniqueGiftFromJson(Map<String, dynamic> json) => _UniqueGift(
  giftId: json['gift_id'] as String,
  baseName: json['base_name'] as String,
  name: json['name'] as String,
  number: (json['number'] as num).toInt(),
  model: UniqueGiftModel.fromJson(json['model'] as Map<String, dynamic>),
  symbol: UniqueGiftSymbol.fromJson(json['symbol'] as Map<String, dynamic>),
  backdrop: UniqueGiftBackdrop.fromJson(
    json['backdrop'] as Map<String, dynamic>,
  ),
  publisherChat: json['publisher_chat'] == null
      ? null
      : Chat.fromJson(json['publisher_chat'] as Map<String, dynamic>),
  isFromBlockchain: json['is_from_blockchain'] as bool?,
  isPremium: json['is_premium'] as bool?,
  colors: json['colors'] == null
      ? null
      : UniqueGiftColors.fromJson(json['colors'] as Map<String, dynamic>),
);

Map<String, dynamic> _$UniqueGiftToJson(_UniqueGift instance) =>
    <String, dynamic>{
      'gift_id': instance.giftId,
      'base_name': instance.baseName,
      'name': instance.name,
      'number': instance.number,
      'model': instance.model,
      'symbol': instance.symbol,
      'backdrop': instance.backdrop,
      'publisher_chat': ?instance.publisherChat,
      'is_from_blockchain': ?instance.isFromBlockchain,
      'is_premium': ?instance.isPremium,
      'colors': ?instance.colors,
    };
