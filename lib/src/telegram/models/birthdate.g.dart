// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'birthdate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Birthdate _$BirthdateFromJson(Map<String, dynamic> json) => _Birthdate(
  day: (json['day'] as num).toInt(),
  month: (json['month'] as num).toInt(),
  year: (json['year'] as num?)?.toInt(),
);

Map<String, dynamic> _$BirthdateToJson(_Birthdate instance) =>
    <String, dynamic>{
      'day': instance.day,
      'month': instance.month,
      'year': ?instance.year,
    };
