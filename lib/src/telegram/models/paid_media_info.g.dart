// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paid_media_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaidMediaInfoImpl _$$PaidMediaInfoImplFromJson(Map<String, dynamic> json) =>
    _$PaidMediaInfoImpl(
      starCount: (json['star_count'] as num).toInt(),
      paidMedia: (json['paid_media'] as List<dynamic>)
          .map((e) => PaidMedia.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PaidMediaInfoImplToJson(_$PaidMediaInfoImpl instance) =>
    <String, dynamic>{
      'star_count': instance.starCount,
      'paid_media': instance.paidMedia,
    };
