// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BusinessLocationImpl _$$BusinessLocationImplFromJson(
        Map<String, dynamic> json) =>
    _$BusinessLocationImpl(
      address: json['address'] as String,
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BusinessLocationImplToJson(
        _$BusinessLocationImpl instance) =>
    <String, dynamic>{
      'address': instance.address,
      if (instance.location case final value?) 'location': value,
    };
