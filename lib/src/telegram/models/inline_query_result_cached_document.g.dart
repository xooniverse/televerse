// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inline_query_result_cached_document.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InlineQueryResultCachedDocumentImpl
    _$$InlineQueryResultCachedDocumentImplFromJson(Map<String, dynamic> json) =>
        _$InlineQueryResultCachedDocumentImpl(
          id: json['id'] as String,
          type: $enumDecodeNullable(
                  _$InlineQueryResultTypeEnumMap, json['type']) ??
              InlineQueryResultType.document,
          documentFileId: json['document_file_id'] as String,
          title: json['title'] as String,
          description: json['description'] as String?,
          caption: json['caption'] as String?,
          parseMode:
              $enumDecodeNullable(_$ParseModeEnumMap, json['parse_mode']),
          captionEntities: (json['caption_entities'] as List<dynamic>?)
              ?.map((e) => MessageEntity.fromJson(e as Map<String, dynamic>))
              .toList(),
          replyMarkup: json['reply_markup'] == null
              ? null
              : InlineKeyboardMarkup.fromJson(
                  json['reply_markup'] as Map<String, dynamic>),
          inputMessageContent:
              _$JsonConverterFromJson<Map<String, Object>, InputMessageContent>(
                  json['input_message_content'],
                  const InputMessageContentConverter().fromJson),
        );

Map<String, dynamic> _$$InlineQueryResultCachedDocumentImplToJson(
        _$InlineQueryResultCachedDocumentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'document_file_id': instance.documentFileId,
      'title': instance.title,
      if (instance.description case final value?) 'description': value,
      if (instance.caption case final value?) 'caption': value,
      if (instance.parseMode case final value?) 'parse_mode': value,
      if (instance.captionEntities case final value?) 'caption_entities': value,
      if (instance.replyMarkup case final value?) 'reply_markup': value,
      if (_$JsonConverterToJson<Map<String, Object>, InputMessageContent>(
              instance.inputMessageContent,
              const InputMessageContentConverter().toJson)
          case final value?)
        'input_message_content': value,
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
