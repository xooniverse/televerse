// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inline_query_result_document.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InlineQueryResultDocument _$InlineQueryResultDocumentFromJson(
  Map<String, dynamic> json,
) => _InlineQueryResultDocument(
  id: json['id'] as String,
  type:
      $enumDecodeNullable(_$InlineQueryResultTypeEnumMap, json['type']) ??
      InlineQueryResultType.document,
  title: json['title'] as String,
  documentUrl: json['document_url'] as String,
  mimeType: json['mime_type'] as String,
  caption: json['caption'] as String?,
  parseMode: $enumDecodeNullable(_$ParseModeEnumMap, json['parse_mode']),
  captionEntities: (json['caption_entities'] as List<dynamic>?)
      ?.map((e) => MessageEntity.fromJson(e as Map<String, dynamic>))
      .toList(),
  description: json['description'] as String?,
  replyMarkup: json['reply_markup'] == null
      ? null
      : InlineKeyboardMarkup.fromJson(
          json['reply_markup'] as Map<String, dynamic>,
        ),
  inputMessageContent:
      _$JsonConverterFromJson<Map<String, Object>, InputMessageContent>(
        json['input_message_content'],
        const InputMessageContentConverter().fromJson,
      ),
  thumbnailUrl: json['thumbnail_url'] as String?,
  thumbnailWidth: (json['thumbnail_width'] as num?)?.toInt(),
  thumbnailHeight: (json['thumbnail_height'] as num?)?.toInt(),
);

Map<String, dynamic> _$InlineQueryResultDocumentToJson(
  _InlineQueryResultDocument instance,
) => <String, dynamic>{
  'id': instance.id,
  'type': _$InlineQueryResultTypeEnumMap[instance.type]!,
  'title': instance.title,
  'document_url': instance.documentUrl,
  'mime_type': instance.mimeType,
  'caption': ?instance.caption,
  'parse_mode': ?instance.parseMode,
  'caption_entities': ?instance.captionEntities,
  'description': ?instance.description,
  'reply_markup': ?instance.replyMarkup,
  'input_message_content':
      ?_$JsonConverterToJson<Map<String, Object>, InputMessageContent>(
        instance.inputMessageContent,
        const InputMessageContentConverter().toJson,
      ),
  'thumbnail_url': ?instance.thumbnailUrl,
  'thumbnail_width': ?instance.thumbnailWidth,
  'thumbnail_height': ?instance.thumbnailHeight,
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
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
