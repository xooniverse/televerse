// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_photo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatPhoto _$ChatPhotoFromJson(Map<String, dynamic> json) => _ChatPhoto(
  smallFileId: json['small_file_id'] as String,
  smallFileUniqueId: json['small_file_unique_id'] as String,
  bigFileId: json['big_file_id'] as String,
  bigFileUniqueId: json['big_file_unique_id'] as String,
);

Map<String, dynamic> _$ChatPhotoToJson(_ChatPhoto instance) =>
    <String, dynamic>{
      'small_file_id': instance.smallFileId,
      'small_file_unique_id': instance.smallFileUniqueId,
      'big_file_id': instance.bigFileId,
      'big_file_unique_id': instance.bigFileUniqueId,
    };
