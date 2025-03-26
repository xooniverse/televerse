// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipping_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ShippingAddress _$ShippingAddressFromJson(Map<String, dynamic> json) =>
    _ShippingAddress(
      countryCode: json['country_code'] as String,
      state: json['state'] as String,
      city: json['city'] as String,
      streetLine1: json['street_line1'] as String,
      streetLine2: json['street_line2'] as String,
      postCode: json['post_code'] as String,
    );

Map<String, dynamic> _$ShippingAddressToJson(_ShippingAddress instance) =>
    <String, dynamic>{
      'country_code': instance.countryCode,
      'state': instance.state,
      'city': instance.city,
      'street_line1': instance.streetLine1,
      'street_line2': instance.streetLine2,
      'post_code': instance.postCode,
    };
