// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_quality.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VideoQuality _$VideoQualityFromJson(Map<String, dynamic> json) =>
    _VideoQuality(
      fileId: json['file_id'] as String,
      fileUniqueId: json['file_unique_id'] as String,
      width: (json['width'] as num).toInt(),
      height: (json['height'] as num).toInt(),
      codec: json['codec'] as String,
      fileSize: (json['file_size'] as num?)?.toInt(),
    );

Map<String, dynamic> _$VideoQualityToJson(_VideoQuality instance) =>
    <String, dynamic>{
      'file_id': instance.fileId,
      'file_unique_id': instance.fileUniqueId,
      'width': instance.width,
      'height': instance.height,
      'codec': instance.codec,
      'file_size': ?instance.fileSize,
    };
