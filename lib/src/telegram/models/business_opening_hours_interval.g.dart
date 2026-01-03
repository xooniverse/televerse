// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_opening_hours_interval.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BusinessOpeningHoursInterval _$BusinessOpeningHoursIntervalFromJson(
  Map<String, dynamic> json,
) => _BusinessOpeningHoursInterval(
  openingMinute: (json['opening_minute'] as num).toInt(),
  closingMinute: (json['closing_minute'] as num).toInt(),
);

Map<String, dynamic> _$BusinessOpeningHoursIntervalToJson(
  _BusinessOpeningHoursInterval instance,
) => <String, dynamic>{
  'opening_minute': instance.openingMinute,
  'closing_minute': instance.closingMinute,
};
