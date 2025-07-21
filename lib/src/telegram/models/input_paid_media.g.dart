// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_paid_media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$InputPaidMediaPhotoToJson(
        InputPaidMediaPhoto instance) =>
    <String, dynamic>{
      'type': _$InputPaidMediaTypeEnumMap[instance.type]!,
      'media': const InputFileConverter().toJson(instance.media),
      'runtimeType': instance.$type,
    };

const _$InputPaidMediaTypeEnumMap = {
  InputPaidMediaType.photo: 'photo',
  InputPaidMediaType.video: 'video',
};

Map<String, dynamic> _$InputPaidMediaVideoToJson(
        InputPaidMediaVideo instance) =>
    <String, dynamic>{
      'type': _$InputPaidMediaTypeEnumMap[instance.type]!,
      'media': const InputFileConverter().toJson(instance.media),
      if (_$JsonConverterToJson<String, InputFile>(
              instance.thumbnail, const InputFileConverter().toJson)
          case final value?)
        'thumbnail': value,
      if (instance.width case final value?) 'width': value,
      if (instance.height case final value?) 'height': value,
      if (instance.duration case final value?) 'duration': value,
      if (instance.supportsStreaming case final value?)
        'supports_streaming': value,
      if (instance.startTimestamp case final value?) 'start_timestamp': value,
      if (_$JsonConverterToJson<String, InputFile>(
              instance.cover, const InputFileConverter().toJson)
          case final value?)
        'cover': value,
      'runtimeType': instance.$type,
    };

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
