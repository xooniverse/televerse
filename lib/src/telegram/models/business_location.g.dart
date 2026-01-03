// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BusinessLocation _$BusinessLocationFromJson(Map<String, dynamic> json) =>
    _BusinessLocation(
      address: json['address'] as String,
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BusinessLocationToJson(_BusinessLocation instance) =>
    <String, dynamic>{
      'address': instance.address,
      'location': ?instance.location,
    };
