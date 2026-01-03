// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LocationAddress _$LocationAddressFromJson(Map<String, dynamic> json) =>
    _LocationAddress(
      countryCode: json['country_code'] as String,
      state: json['state'] as String?,
      city: json['city'] as String?,
      street: json['street'] as String?,
    );

Map<String, dynamic> _$LocationAddressToJson(_LocationAddress instance) =>
    <String, dynamic>{
      'country_code': instance.countryCode,
      'state': ?instance.state,
      'city': ?instance.city,
      'street': ?instance.street,
    };
