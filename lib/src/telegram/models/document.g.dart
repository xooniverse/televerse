// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Document _$DocumentFromJson(Map<String, dynamic> json) => _Document(
  fileId: json['file_id'] as String,
  fileUniqueId: json['file_unique_id'] as String,
  thumbnail: json['thumbnail'] == null
      ? null
      : PhotoSize.fromJson(json['thumbnail'] as Map<String, dynamic>),
  fileName: json['file_name'] as String?,
  mimeType: json['mime_type'] as String?,
  fileSize: (json['file_size'] as num?)?.toInt(),
);

Map<String, dynamic> _$DocumentToJson(_Document instance) => <String, dynamic>{
  'file_id': instance.fileId,
  'file_unique_id': instance.fileUniqueId,
  'thumbnail': ?instance.thumbnail,
  'file_name': ?instance.fileName,
  'mime_type': ?instance.mimeType,
  'file_size': ?instance.fileSize,
};
