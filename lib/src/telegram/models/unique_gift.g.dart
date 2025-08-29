// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unique_gift.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UniqueGift _$UniqueGiftFromJson(Map<String, dynamic> json) => _UniqueGift(
      baseName: json['base_name'] as String,
      name: json['name'] as String,
      number: (json['number'] as num).toInt(),
      model: UniqueGiftModel.fromJson(json['model'] as Map<String, dynamic>),
      symbol: UniqueGiftSymbol.fromJson(json['symbol'] as Map<String, dynamic>),
      backdrop:
          UniqueGiftBackdrop.fromJson(json['backdrop'] as Map<String, dynamic>),
      publisherChat: json['publisher_chat'] == null
          ? null
          : Chat.fromJson(json['publisher_chat'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UniqueGiftToJson(_UniqueGift instance) =>
    <String, dynamic>{
      'base_name': instance.baseName,
      'name': instance.name,
      'number': instance.number,
      'model': instance.model,
      'symbol': instance.symbol,
      'backdrop': instance.backdrop,
      if (instance.publisherChat case final value?) 'publisher_chat': value,
    };
