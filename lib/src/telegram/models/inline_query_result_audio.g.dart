// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inline_query_result_audio.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InlineQueryResultAudio _$InlineQueryResultAudioFromJson(
        Map<String, dynamic> json) =>
    _InlineQueryResultAudio(
      id: json['id'] as String,
      audioUrl: json['audio_url'] as String,
      title: json['title'] as String,
      caption: json['caption'] as String?,
      parseMode: $enumDecodeNullable(_$ParseModeEnumMap, json['parse_mode']),
      captionEntities: (json['caption_entities'] as List<dynamic>?)
          ?.map((e) => MessageEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      performer: json['performer'] as String?,
      audioDuration: (json['audio_duration'] as num?)?.toInt(),
      replyMarkup: json['reply_markup'] == null
          ? null
          : InlineKeyboardMarkup.fromJson(
              json['reply_markup'] as Map<String, dynamic>),
      inputMessageContent:
          _$JsonConverterFromJson<Map<String, Object>, InputMessageContent>(
              json['input_message_content'],
              const InputMessageContentConverter().fromJson),
      type: $enumDecodeNullable(_$InlineQueryResultTypeEnumMap, json['type']) ??
          InlineQueryResultType.audio,
    );

Map<String, dynamic> _$InlineQueryResultAudioToJson(
        _InlineQueryResultAudio instance) =>
    <String, dynamic>{
      'id': instance.id,
      'audio_url': instance.audioUrl,
      'title': instance.title,
      if (instance.caption case final value?) 'caption': value,
      if (instance.parseMode case final value?) 'parse_mode': value,
      if (instance.captionEntities case final value?) 'caption_entities': value,
      if (instance.performer case final value?) 'performer': value,
      if (instance.audioDuration case final value?) 'audio_duration': value,
      if (instance.replyMarkup case final value?) 'reply_markup': value,
      if (_$JsonConverterToJson<Map<String, Object>, InputMessageContent>(
              instance.inputMessageContent,
              const InputMessageContentConverter().toJson)
          case final value?)
        'input_message_content': value,
      'type': _$InlineQueryResultTypeEnumMap[instance.type]!,
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

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
