// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$InputMediaPhotoToJson(InputMediaPhoto instance) =>
    <String, dynamic>{
      'type': _$InputMediaTypeEnumMap[instance.type]!,
      'media': const InputFileConverter().toJson(instance.media),
      'caption': ?instance.caption,
      'parse_mode': ?instance.parseMode,
      'caption_entities': ?instance.captionEntities,
      'has_spoiler': ?instance.hasSpoiler,
      'show_caption_above_media': ?instance.showCaptionAboveMedia,
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
      'thumbnail': ?_$JsonConverterToJson<String, InputFile>(
        instance.thumbnail,
        const InputFileConverter().toJson,
      ),
      'caption': ?instance.caption,
      'parse_mode': ?instance.parseMode,
      'caption_entities': ?instance.captionEntities,
      'disable_content_type_detection': ?instance.disableContentTypeDetection,
      'runtimeType': instance.$type,
    };

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);

Map<String, dynamic> _$InputMediaAnimationToJson(
  InputMediaAnimation instance,
) => <String, dynamic>{
  'type': _$InputMediaTypeEnumMap[instance.type]!,
  'media': const InputFileConverter().toJson(instance.media),
  'thumbnail': ?_$JsonConverterToJson<String, InputFile>(
    instance.thumbnail,
    const InputFileConverter().toJson,
  ),
  'caption': ?instance.caption,
  'parse_mode': ?instance.parseMode,
  'caption_entities': ?instance.captionEntities,
  'width': ?instance.width,
  'height': ?instance.height,
  'duration': ?instance.duration,
  'has_spoiler': ?instance.hasSpoiler,
  'show_caption_above_media': ?instance.showCaptionAboveMedia,
  'runtimeType': instance.$type,
};

Map<String, dynamic> _$InputMediaAudioToJson(InputMediaAudio instance) =>
    <String, dynamic>{
      'type': _$InputMediaTypeEnumMap[instance.type]!,
      'media': const InputFileConverter().toJson(instance.media),
      'thumbnail': ?_$JsonConverterToJson<String, InputFile>(
        instance.thumbnail,
        const InputFileConverter().toJson,
      ),
      'caption': ?instance.caption,
      'parse_mode': ?instance.parseMode,
      'caption_entities': ?instance.captionEntities,
      'duration': ?instance.duration,
      'performer': ?instance.performer,
      'title': ?instance.title,
      'runtimeType': instance.$type,
    };

Map<String, dynamic> _$InputMediaVideoToJson(InputMediaVideo instance) =>
    <String, dynamic>{
      'type': _$InputMediaTypeEnumMap[instance.type]!,
      'media': const InputFileConverter().toJson(instance.media),
      'thumbnail': ?_$JsonConverterToJson<String, InputFile>(
        instance.thumbnail,
        const InputFileConverter().toJson,
      ),
      'caption': ?instance.caption,
      'parse_mode': ?instance.parseMode,
      'caption_entities': ?instance.captionEntities,
      'width': ?instance.width,
      'height': ?instance.height,
      'duration': ?instance.duration,
      'supports_streaming': ?instance.supportsStreaming,
      'has_spoiler': ?instance.hasSpoiler,
      'show_caption_above_media': ?instance.showCaptionAboveMedia,
      'start_timestamp': ?instance.startTimestamp,
      'cover': ?_$JsonConverterToJson<String, InputFile>(
        instance.cover,
        const InputFileConverter().toJson,
      ),
      'runtimeType': instance.$type,
    };
