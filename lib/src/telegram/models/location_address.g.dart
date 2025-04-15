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
      if (instance.state case final value?) 'state': value,
      if (instance.city case final value?) 'city': value,
      if (instance.street case final value?) 'street': value,
    };
