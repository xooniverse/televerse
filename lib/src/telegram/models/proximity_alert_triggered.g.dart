// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'proximity_alert_triggered.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProximityAlertTriggeredImpl _$$ProximityAlertTriggeredImplFromJson(
        Map<String, dynamic> json) =>
    _$ProximityAlertTriggeredImpl(
      traveler: User.fromJson(json['traveler'] as Map<String, dynamic>),
      watcher: User.fromJson(json['watcher'] as Map<String, dynamic>),
      distance: (json['distance'] as num).toInt(),
    );

Map<String, dynamic> _$$ProximityAlertTriggeredImplToJson(
        _$ProximityAlertTriggeredImpl instance) =>
    <String, dynamic>{
      'traveler': instance.traveler,
      'watcher': instance.watcher,
      'distance': instance.distance,
    };
