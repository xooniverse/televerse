// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inline_query_result_video.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InlineQueryResultVideoImpl _$$InlineQueryResultVideoImplFromJson(
        Map<String, dynamic> json) =>
    _$InlineQueryResultVideoImpl(
      type: $enumDecodeNullable(_$InlineQueryResultTypeEnumMap, json['type']) ??
          InlineQueryResultType.video,
      id: json['id'] as String,
      videoUrl: json['video_url'] as String,
      mimeType: json['mime_type'] as String,
      thumbnailUrl: json['thumbnail_url'] as String,
      title: json['title'] as String,
      caption: json['caption'] as String?,
      parseMode: $enumDecodeNullable(_$ParseModeEnumMap, json['parse_mode']),
      captionEntities: (json['caption_entities'] as List<dynamic>?)
          ?.map((e) => MessageEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      videoWidth: (json['video_width'] as num?)?.toInt(),
      videoHeight: (json['video_height'] as num?)?.toInt(),
      videoDuration: (json['video_duration'] as num?)?.toInt(),
      description: json['description'] as String?,
      replyMarkup: json['reply_markup'] == null
          ? null
          : InlineKeyboardMarkup.fromJson(
              json['reply_markup'] as Map<String, dynamic>),
      inputMessageContent:
          _$JsonConverterFromJson<Map<String, Object>, InputMessageContent>(
              json['input_message_content'],
              const InputMessageContentConverter().fromJson),
      showCaptionAboveMedia: json['show_caption_above_media'] as bool?,
    );

Map<String, dynamic> _$$InlineQueryResultVideoImplToJson(
        _$InlineQueryResultVideoImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
      'video_url': instance.videoUrl,
      'mime_type': instance.mimeType,
      'thumbnail_url': instance.thumbnailUrl,
      'title': instance.title,
      if (instance.caption case final value?) 'caption': value,
      if (instance.parseMode case final value?) 'parse_mode': value,
      if (instance.captionEntities case final value?) 'caption_entities': value,
      if (instance.videoWidth case final value?) 'video_width': value,
      if (instance.videoHeight case final value?) 'video_height': value,
      if (instance.videoDuration case final value?) 'video_duration': value,
      if (instance.description case final value?) 'description': value,
      if (instance.replyMarkup case final value?) 'reply_markup': value,
      if (_$JsonConverterToJson<Map<String, Object>, InputMessageContent>(
              instance.inputMessageContent,
              const InputMessageContentConverter().toJson)
          case final value?)
        'input_message_content': value,
      if (instance.showCaptionAboveMedia case final value?)
        'show_caption_above_media': value,
    };

const _$InlineQueryResultTypeEnumMap = {
  InlineQueryResultType.article: 'article',
  InlineQueryResultType.photo: 'photo',
  InlineQueryResultType.gif: 'gif',
  InlineQueryResultType.mpeg4Gif: 'mpeg4_gif',
  InlineQueryResultType.video: 'video',
  InlineQueryResultType.audio: 'audio',
  InlineQueryResultType.voice: 'voice',
  InlineQueryResultType.document: 'document',
  InlineQueryResultType.location: 'location',
  InlineQueryResultType.venue: 'venue',
  InlineQueryResultType.contact: 'contact',
  InlineQueryResultType.game: 'game',
  InlineQueryResultType.sticker: 'sticker',
};

const _$ParseModeEnumMap = {
  ParseMode.markdown: 'Markdown',
  ParseMode.html: 'HTML',
  ParseMode.markdownV2: 'MarkdownV2',
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
