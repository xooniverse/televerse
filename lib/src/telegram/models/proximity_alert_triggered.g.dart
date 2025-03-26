// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'proximity_alert_triggered.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProximityAlertTriggered _$ProximityAlertTriggeredFromJson(
        Map<String, dynamic> json) =>
    _ProximityAlertTriggered(
      traveler: User.fromJson(json['traveler'] as Map<String, dynamic>),
      watcher: User.fromJson(json['watcher'] as Map<String, dynamic>),
      distance: (json['distance'] as num).toInt(),
    );

Map<String, dynamic> _$ProximityAlertTriggeredToJson(
        _ProximityAlertTriggered instance) =>
    <String, dynamic>{
      'traveler': instance.traveler,
      'watcher': instance.watcher,
      'distance': instance.distance,
    };
