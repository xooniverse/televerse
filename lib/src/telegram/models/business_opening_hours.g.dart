// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_opening_hours.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BusinessOpeningHoursImpl _$$BusinessOpeningHoursImplFromJson(
        Map<String, dynamic> json) =>
    _$BusinessOpeningHoursImpl(
      timeZoneName: json['time_zone_name'] as String,
      openingHours: (json['opening_hours'] as List<dynamic>)
          .map((e) =>
              BusinessOpeningHoursInterval.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BusinessOpeningHoursImplToJson(
        _$BusinessOpeningHoursImpl instance) =>
    <String, dynamic>{
      'time_zone_name': instance.timeZoneName,
      'opening_hours': instance.openingHours,
    };
