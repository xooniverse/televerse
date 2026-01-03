// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_opening_hours.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BusinessOpeningHours _$BusinessOpeningHoursFromJson(
  Map<String, dynamic> json,
) => _BusinessOpeningHours(
  timeZoneName: json['time_zone_name'] as String,
  openingHours: (json['opening_hours'] as List<dynamic>)
      .map(
        (e) => BusinessOpeningHoursInterval.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
);

Map<String, dynamic> _$BusinessOpeningHoursToJson(
  _BusinessOpeningHours instance,
) => <String, dynamic>{
  'time_zone_name': instance.timeZoneName,
  'opening_hours': instance.openingHours,
};
