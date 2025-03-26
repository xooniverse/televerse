// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'passport_file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PassportFile _$PassportFileFromJson(Map<String, dynamic> json) =>
    _PassportFile(
      fileId: json['file_id'] as String,
      fileUniqueId: json['file_unique_id'] as String,
      fileSize: (json['file_size'] as num).toInt(),
      fileDate: (json['file_date'] as num).toInt(),
    );

Map<String, dynamic> _$PassportFileToJson(_PassportFile instance) =>
    <String, dynamic>{
      'file_id': instance.fileId,
      'file_unique_id': instance.fileUniqueId,
      'file_size': instance.fileSize,
      'file_date': instance.fileDate,
    };
