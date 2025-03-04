// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paid_media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaidMediaPreviewImpl _$$PaidMediaPreviewImplFromJson(
        Map<String, dynamic> json) =>
    _$PaidMediaPreviewImpl(
      type: $enumDecodeNullable(_$PaidMediaTypeEnumMap, json['type']) ??
          PaidMediaType.preview,
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      duration: (json['duration'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PaidMediaPreviewImplToJson(
        _$PaidMediaPreviewImpl instance) =>
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

_$PaidMediaPhotoImpl _$$PaidMediaPhotoImplFromJson(Map<String, dynamic> json) =>
    _$PaidMediaPhotoImpl(
      type: $enumDecodeNullable(_$PaidMediaTypeEnumMap, json['type']) ??
          PaidMediaType.photo,
      photo: (json['photo'] as List<dynamic>)
          .map((e) => PhotoSize.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PaidMediaPhotoImplToJson(
        _$PaidMediaPhotoImpl instance) =>
    <String, dynamic>{
      'type': _$PaidMediaTypeEnumMap[instance.type]!,
      'photo': instance.photo,
    };

_$PaidMediaVideoImpl _$$PaidMediaVideoImplFromJson(Map<String, dynamic> json) =>
    _$PaidMediaVideoImpl(
      type: $enumDecodeNullable(_$PaidMediaTypeEnumMap, json['type']) ??
          PaidMediaType.video,
      video: Video.fromJson(json['video'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PaidMediaVideoImplToJson(
        _$PaidMediaVideoImpl instance) =>
    <String, dynamic>{
      'type': _$PaidMediaTypeEnumMap[instance.type]!,
      'video': instance.video,
    };
