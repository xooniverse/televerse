// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'birthdate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BirthdateImpl _$$BirthdateImplFromJson(Map<String, dynamic> json) =>
    _$BirthdateImpl(
      day: (json['day'] as num).toInt(),
      month: (json['month'] as num).toInt(),
      year: (json['year'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$BirthdateImplToJson(_$BirthdateImpl instance) =>
    <String, dynamic>{
      'day': instance.day,
      'month': instance.month,
      if (instance.year case final value?) 'year': value,
    };
