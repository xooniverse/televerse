// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audio.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Audio _$AudioFromJson(Map<String, dynamic> json) => _Audio(
  fileId: json['file_id'] as String,
  fileUniqueId: json['file_unique_id'] as String,
  duration: (json['duration'] as num).toInt(),
  performer: json['performer'] as String?,
  title: json['title'] as String?,
  fileName: json['file_name'] as String?,
  mimeType: json['mime_type'] as String?,
  fileSize: (json['file_size'] as num?)?.toInt(),
  thumbnail: json['thumbnail'] == null
      ? null
      : PhotoSize.fromJson(json['thumbnail'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AudioToJson(_Audio instance) => <String, dynamic>{
  'file_id': instance.fileId,
  'file_unique_id': instance.fileUniqueId,
  'duration': instance.duration,
  'performer': ?instance.performer,
  'title': ?instance.title,
  'file_name': ?instance.fileName,
  'mime_type': ?instance.mimeType,
  'file_size': ?instance.fileSize,
  'thumbnail': ?instance.thumbnail,
};
