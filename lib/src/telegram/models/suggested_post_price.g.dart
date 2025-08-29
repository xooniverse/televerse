// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'suggested_post_price.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SuggestedPostPrice _$SuggestedPostPriceFromJson(Map<String, dynamic> json) =>
    _SuggestedPostPrice(
      currency: json['currency'] as String,
      amount: (json['amount'] as num).toInt(),
    );

Map<String, dynamic> _$SuggestedPostPriceToJson(_SuggestedPostPrice instance) =>
    <String, dynamic>{
      'currency': instance.currency,
      'amount': instance.amount,
    };
