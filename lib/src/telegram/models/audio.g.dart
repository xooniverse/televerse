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
      if (instance.performer case final value?) 'performer': value,
      if (instance.title case final value?) 'title': value,
      if (instance.fileName case final value?) 'file_name': value,
      if (instance.mimeType case final value?) 'mime_type': value,
      if (instance.fileSize case final value?) 'file_size': value,
      if (instance.thumbnail case final value?) 'thumbnail': value,
    };
