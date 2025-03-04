// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_opening_hours_interval.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BusinessOpeningHoursIntervalImpl _$$BusinessOpeningHoursIntervalImplFromJson(
        Map<String, dynamic> json) =>
    _$BusinessOpeningHoursIntervalImpl(
      openingMinute: (json['opening_minute'] as num).toInt(),
      closingMinute: (json['closing_minute'] as num).toInt(),
    );

Map<String, dynamic> _$$BusinessOpeningHoursIntervalImplToJson(
        _$BusinessOpeningHoursIntervalImpl instance) =>
    <String, dynamic>{
      'opening_minute': instance.openingMinute,
      'closing_minute': instance.closingMinute,
    };
