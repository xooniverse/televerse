// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_paid_media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$InputPaidMediaPhotoToJson(
  InputPaidMediaPhoto instance,
) => <String, dynamic>{
  'type': _$InputPaidMediaTypeEnumMap[instance.type]!,
  'media': ?const InputFileConverter().toJson(instance.media),
};

const _$InputPaidMediaTypeEnumMap = {
  InputPaidMediaType.photo: 'photo',
  InputPaidMediaType.video: 'video',
};

Map<String, dynamic> _$InputPaidMediaVideoToJson(
  InputPaidMediaVideo instance,
) => <String, dynamic>{
  'type': _$InputPaidMediaTypeEnumMap[instance.type]!,
  'media': ?const InputFileConverter().toJson(instance.media),
  'thumbnail': ?_$JsonConverterToJson<String?, InputFile>(
    instance.thumbnail,
    const InputFileConverter().toJson,
  ),
  'width': ?instance.width,
  'height': ?instance.height,
  'duration': ?instance.duration,
  'supports_streaming': ?instance.supportsStreaming,
  'start_timestamp': ?instance.startTimestamp,
  'cover': ?_$JsonConverterToJson<String?, InputFile>(
    instance.cover,
    const InputFileConverter().toJson,
  ),
};

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
