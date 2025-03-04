// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_photo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatPhotoImpl _$$ChatPhotoImplFromJson(Map<String, dynamic> json) =>
    _$ChatPhotoImpl(
      smallFileId: json['small_file_id'] as String,
      smallFileUniqueId: json['small_file_unique_id'] as String,
      bigFileId: json['big_file_id'] as String,
      bigFileUniqueId: json['big_file_unique_id'] as String,
    );

Map<String, dynamic> _$$ChatPhotoImplToJson(_$ChatPhotoImpl instance) =>
    <String, dynamic>{
      'small_file_id': instance.smallFileId,
      'small_file_unique_id': instance.smallFileUniqueId,
      'big_file_id': instance.bigFileId,
      'big_file_unique_id': instance.bigFileUniqueId,
    };
