// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'voice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Voice _$VoiceFromJson(Map<String, dynamic> json) => _Voice(
  fileId: json['file_id'] as String,
  fileUniqueId: json['file_unique_id'] as String,
  duration: (json['duration'] as num).toInt(),
  mimeType: json['mime_type'] as String?,
  fileSize: (json['file_size'] as num?)?.toInt(),
);

Map<String, dynamic> _$VoiceToJson(_Voice instance) => <String, dynamic>{
  'file_id': instance.fileId,
  'file_unique_id': instance.fileUniqueId,
  'duration': instance.duration,
  'mime_type': ?instance.mimeType,
  'file_size': ?instance.fileSize,
};
