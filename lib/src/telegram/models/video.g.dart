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
    );

Map<String, dynamic> _$VideoToJson(_Video instance) => <String, dynamic>{
      'file_id': instance.fileId,
      'file_unique_id': instance.fileUniqueId,
      'width': instance.width,
      'height': instance.height,
      'duration': instance.duration,
      if (instance.thumbnail case final value?) 'thumbnail': value,
      if (instance.fileName case final value?) 'file_name': value,
      if (instance.mimeType case final value?) 'mime_type': value,
      if (instance.fileSize case final value?) 'file_size': value,
      if (instance.startTimestamp case final value?) 'start_timestamp': value,
      if (instance.cover case final value?) 'cover': value,
    };
