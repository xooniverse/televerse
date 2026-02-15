// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Video _$VideoFromJson(Map<String, dynamic> json) => _Video(
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
  startTimestamp: (json['start_timestamp'] as num?)?.toInt(),
  cover: (json['cover'] as List<dynamic>?)
      ?.map((e) => PhotoSize.fromJson(e as Map<String, dynamic>))
      .toList(),
  qualities: (json['qualities'] as List<dynamic>?)
      ?.map((e) => VideoQuality.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$VideoToJson(_Video instance) => <String, dynamic>{
  'file_id': instance.fileId,
  'file_unique_id': instance.fileUniqueId,
  'width': instance.width,
  'height': instance.height,
  'duration': instance.duration,
  'thumbnail': ?instance.thumbnail,
  'file_name': ?instance.fileName,
  'mime_type': ?instance.mimeType,
  'file_size': ?instance.fileSize,
  'start_timestamp': ?instance.startTimestamp,
  'cover': ?instance.cover,
  'qualities': ?instance.qualities,
};
