// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paid_media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaidMediaPreview _$PaidMediaPreviewFromJson(Map<String, dynamic> json) =>
    PaidMediaPreview(
      type: $enumDecodeNullable(_$PaidMediaTypeEnumMap, json['type']) ??
          PaidMediaType.preview,
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      duration: (json['duration'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PaidMediaPreviewToJson(PaidMediaPreview instance) =>
    <String, dynamic>{
      'type': _$PaidMediaTypeEnumMap[instance.type]!,
      if (instance.width case final value?) 'width': value,
      if (instance.height case final value?) 'height': value,
      if (instance.duration case final value?) 'duration': value,
    };

const _$PaidMediaTypeEnumMap = {
  PaidMediaType.preview: 'preview',
  PaidMediaType.photo: 'photo',
  PaidMediaType.video: 'video',
};

PaidMediaPhoto _$PaidMediaPhotoFromJson(Map<String, dynamic> json) =>
    PaidMediaPhoto(
      type: $enumDecodeNullable(_$PaidMediaTypeEnumMap, json['type']) ??
          PaidMediaType.photo,
      photo: (json['photo'] as List<dynamic>)
          .map((e) => PhotoSize.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PaidMediaPhotoToJson(PaidMediaPhoto instance) =>
    <String, dynamic>{
      'type': _$PaidMediaTypeEnumMap[instance.type]!,
      'photo': instance.photo,
    };

PaidMediaVideo _$PaidMediaVideoFromJson(Map<String, dynamic> json) =>
    PaidMediaVideo(
      type: $enumDecodeNullable(_$PaidMediaTypeEnumMap, json['type']) ??
          PaidMediaType.video,
      video: Video.fromJson(json['video'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PaidMediaVideoToJson(PaidMediaVideo instance) =>
    <String, dynamic>{
      'type': _$PaidMediaTypeEnumMap[instance.type]!,
      'video': instance.video,
    };
