// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'suggested_post_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SuggestedPostParameters _$SuggestedPostParametersFromJson(
  Map<String, dynamic> json,
) => _SuggestedPostParameters(
  price: json['price'] == null
      ? null
      : SuggestedPostPrice.fromJson(json['price'] as Map<String, dynamic>),
  sendDate: (json['send_date'] as num?)?.toInt(),
);

Map<String, dynamic> _$SuggestedPostParametersToJson(
  _SuggestedPostParameters instance,
) => <String, dynamic>{
  'price': ?instance.price,
  'send_date': ?instance.sendDate,
};
