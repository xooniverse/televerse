// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Location _$LocationFromJson(Map<String, dynamic> json) => _Location(
  longitude: (json['longitude'] as num).toDouble(),
  latitude: (json['latitude'] as num).toDouble(),
  horizontalAccuracy: (json['horizontal_accuracy'] as num?)?.toDouble(),
  livePeriod: (json['live_period'] as num?)?.toInt(),
  heading: (json['heading'] as num?)?.toInt(),
  proximityAlertRadius: (json['proximity_alert_radius'] as num?)?.toInt(),
);

Map<String, dynamic> _$LocationToJson(_Location instance) => <String, dynamic>{
  'longitude': instance.longitude,
  'latitude': instance.latitude,
  'horizontal_accuracy': ?instance.horizontalAccuracy,
  'live_period': ?instance.livePeriod,
  'heading': ?instance.heading,
  'proximity_alert_radius': ?instance.proximityAlertRadius,
};
