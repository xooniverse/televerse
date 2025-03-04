// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatLocationImpl _$$ChatLocationImplFromJson(Map<String, dynamic> json) =>
    _$ChatLocationImpl(
      location: Location.fromJson(json['location'] as Map<String, dynamic>),
      address: json['address'] as String,
    );

Map<String, dynamic> _$$ChatLocationImplToJson(_$ChatLocationImpl instance) =>
    <String, dynamic>{
      'location': instance.location,
      'address': instance.address,
    };
