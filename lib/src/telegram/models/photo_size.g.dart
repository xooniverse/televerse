// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_size.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PhotoSizeImpl _$$PhotoSizeImplFromJson(Map<String, dynamic> json) =>
    _$PhotoSizeImpl(
      fileId: json['file_id'] as String,
      fileUniqueId: json['file_unique_id'] as String,
      width: (json['width'] as num).toInt(),
      height: (json['height'] as num).toInt(),
      fileSize: (json['file_size'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PhotoSizeImplToJson(_$PhotoSizeImpl instance) =>
    <String, dynamic>{
      'file_id': instance.fileId,
      'file_unique_id': instance.fileUniqueId,
      'width': instance.width,
      'height': instance.height,
      if (instance.fileSize case final value?) 'file_size': value,
    };
