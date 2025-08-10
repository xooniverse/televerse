// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$InputMediaPhotoToJson(InputMediaPhoto instance) =>
    <String, dynamic>{
      'type': _$InputMediaTypeEnumMap[instance.type]!,
      'media': const InputFileConverter().toJson(instance.media),
      if (instance.caption case final value?) 'caption': value,
      if (instance.parseMode case final value?) 'parse_mode': value,
      if (instance.captionEntities case final value?) 'caption_entities': value,
      if (instance.hasSpoiler case final value?) 'has_spoiler': value,
      if (instance.showCaptionAboveMedia case final value?)
        'show_caption_above_media': value,
      'runtimeType': instance.$type,
    };

const _$InputMediaTypeEnumMap = {
  InputMediaType.animation: 'animation',
  InputMediaType.audio: 'audio',
  InputMediaType.document: 'document',
  InputMediaType.photo: 'photo',
  InputMediaType.video: 'video',
};

Map<String, dynamic> _$InputMediaDocumentToJson(InputMediaDocument instance) =>
    <String, dynamic>{
      'type': _$InputMediaTypeEnumMap[instance.type]!,
      'media': const InputFileConverter().toJson(instance.media),
      if (_$JsonConverterToJson<String, InputFile>(
              instance.thumbnail, const InputFileConverter().toJson)
          case final value?)
        'thumbnail': value,
      if (instance.caption case final value?) 'caption': value,
      if (instance.parseMode case final value?) 'parse_mode': value,
      if (instance.captionEntities case final value?) 'caption_entities': value,
      if (instance.disableContentTypeDetection case final value?)
        'disable_content_type_detection': value,
      'runtimeType': instance.$type,
    };

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);

Map<String, dynamic> _$InputMediaAnimationToJson(
        InputMediaAnimation instance) =>
    <String, dynamic>{
      'type': _$InputMediaTypeEnumMap[instance.type]!,
      'media': const InputFileConverter().toJson(instance.media),
      if (_$JsonConverterToJson<String, InputFile>(
              instance.thumbnail, const InputFileConverter().toJson)
          case final value?)
        'thumbnail': value,
      if (instance.caption case final value?) 'caption': value,
      if (instance.parseMode case final value?) 'parse_mode': value,
      if (instance.captionEntities case final value?) 'caption_entities': value,
      if (instance.width case final value?) 'width': value,
      if (instance.height case final value?) 'height': value,
      if (instance.duration case final value?) 'duration': value,
      if (instance.hasSpoiler case final value?) 'has_spoiler': value,
      if (instance.showCaptionAboveMedia case final value?)
        'show_caption_above_media': value,
      'runtimeType': instance.$type,
    };

Map<String, dynamic> _$InputMediaAudioToJson(InputMediaAudio instance) =>
    <String, dynamic>{
      'type': _$InputMediaTypeEnumMap[instance.type]!,
      'media': const InputFileConverter().toJson(instance.media),
      if (_$JsonConverterToJson<String, InputFile>(
              instance.thumbnail, const InputFileConverter().toJson)
          case final value?)
        'thumbnail': value,
      if (instance.caption case final value?) 'caption': value,
      if (instance.parseMode case final value?) 'parse_mode': value,
      if (instance.captionEntities case final value?) 'caption_entities': value,
      if (instance.duration case final value?) 'duration': value,
      if (instance.performer case final value?) 'performer': value,
      if (instance.title case final value?) 'title': value,
      'runtimeType': instance.$type,
    };

Map<String, dynamic> _$InputMediaVideoToJson(InputMediaVideo instance) =>
    <String, dynamic>{
      'type': _$InputMediaTypeEnumMap[instance.type]!,
      'media': const InputFileConverter().toJson(instance.media),
      if (_$JsonConverterToJson<String, InputFile>(
              instance.thumbnail, const InputFileConverter().toJson)
          case final value?)
        'thumbnail': value,
      if (instance.caption case final value?) 'caption': value,
      if (instance.parseMode case final value?) 'parse_mode': value,
      if (instance.captionEntities case final value?) 'caption_entities': value,
      if (instance.width case final value?) 'width': value,
      if (instance.height case final value?) 'height': value,
      if (instance.duration case final value?) 'duration': value,
      if (instance.supportsStreaming case final value?)
        'supports_streaming': value,
      if (instance.hasSpoiler case final value?) 'has_spoiler': value,
      if (instance.showCaptionAboveMedia case final value?)
        'show_caption_above_media': value,
      if (instance.startTimestamp case final value?) 'start_timestamp': value,
      if (_$JsonConverterToJson<String, InputFile>(
              instance.cover, const InputFileConverter().toJson)
          case final value?)
        'cover': value,
      'runtimeType': instance.$type,
    };
