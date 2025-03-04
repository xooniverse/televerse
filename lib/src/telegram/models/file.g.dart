// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FileImpl _$$FileImplFromJson(Map<String, dynamic> json) => _$FileImpl(
      fileId: json['file_id'] as String,
      fileUniqueId: json['file_unique_id'] as String,
      fileSize: (json['file_size'] as num?)?.toInt(),
      filePath: json['file_path'] as String?,
    );

Map<String, dynamic> _$$FileImplToJson(_$FileImpl instance) =>
    <String, dynamic>{
      'file_id': instance.fileId,
      'file_unique_id': instance.fileUniqueId,
      if (instance.fileSize case final value?) 'file_size': value,
      if (instance.filePath case final value?) 'file_path': value,
    };
