// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'voice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VoiceImpl _$$VoiceImplFromJson(Map<String, dynamic> json) => _$VoiceImpl(
      fileId: json['file_id'] as String,
      fileUniqueId: json['file_unique_id'] as String,
      duration: (json['duration'] as num).toInt(),
      mimeType: json['mime_type'] as String?,
      fileSize: (json['file_size'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$VoiceImplToJson(_$VoiceImpl instance) =>
    <String, dynamic>{
      'file_id': instance.fileId,
      'file_unique_id': instance.fileUniqueId,
      'duration': instance.duration,
      if (instance.mimeType case final value?) 'mime_type': value,
      if (instance.fileSize case final value?) 'file_size': value,
    };
