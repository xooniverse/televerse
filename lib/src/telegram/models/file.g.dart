// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_File _$FileFromJson(Map<String, dynamic> json) => _File(
      fileId: json['file_id'] as String,
      fileUniqueId: json['file_unique_id'] as String,
      fileSize: (json['file_size'] as num?)?.toInt(),
      filePath: json['file_path'] as String?,
    );

Map<String, dynamic> _$FileToJson(_File instance) => <String, dynamic>{
      'file_id': instance.fileId,
      'file_unique_id': instance.fileUniqueId,
      if (instance.fileSize case final value?) 'file_size': value,
      if (instance.filePath case final value?) 'file_path': value,
    };
