// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'animation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Animation _$AnimationFromJson(Map<String, dynamic> json) => _Animation(
  fileId: json['file_id'] as String,
  fileUniqueId: json['file_unique_id'] as String,
  width: (json['width'] as num).toInt(),
  height: (json['height'] as num).toInt(),
  duration: (json['duration'] as num).toInt(),
  thumbnail: json['thumbnail'] == null
      ? null
      : PhotoSize.fromJson(json['thumbnail'] as Map<String, dynamic>),
  fileName: json['file_name'] as String?,
  mimeType: json['mime_type'] as String?,
  fileSize: (json['file_size'] as num?)?.toInt(),
);

Map<String, dynamic> _$AnimationToJson(_Animation instance) =>
    <String, dynamic>{
      'file_id': instance.fileId,
      'file_unique_id': instance.fileUniqueId,
      'width': instance.width,
      'height': instance.height,
      'duration': instance.duration,
      'thumbnail': ?instance.thumbnail,
      'file_name': ?instance.fileName,
      'mime_type': ?instance.mimeType,
      'file_size': ?instance.fileSize,
    };
