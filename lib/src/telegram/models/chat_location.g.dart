// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatLocation _$ChatLocationFromJson(Map<String, dynamic> json) =>
    _ChatLocation(
      location: Location.fromJson(json['location'] as Map<String, dynamic>),
      address: json['address'] as String,
    );

Map<String, dynamic> _$ChatLocationToJson(_ChatLocation instance) =>
    <String, dynamic>{
      'location': instance.location,
      'address': instance.address,
    };
