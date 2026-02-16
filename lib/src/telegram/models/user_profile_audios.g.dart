// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_audios.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserProfileAudios _$UserProfileAudiosFromJson(Map<String, dynamic> json) =>
    _UserProfileAudios(
      totalCount: (json['total_count'] as num).toInt(),
      audios: (json['audios'] as List<dynamic>)
          .map((e) => Audio.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UserProfileAudiosToJson(_UserProfileAudios instance) =>
    <String, dynamic>{
      'total_count': instance.totalCount,
      'audios': instance.audios,
    };
