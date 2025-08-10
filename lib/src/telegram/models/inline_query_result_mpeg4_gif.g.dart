// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inline_query_result_mpeg4_gif.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InlineQueryResultMpeg4Gif _$InlineQueryResultMpeg4GifFromJson(
        Map<String, dynamic> json) =>
    _InlineQueryResultMpeg4Gif(
      type: $enumDecodeNullable(_$InlineQueryResultTypeEnumMap, json['type']) ??
          InlineQueryResultType.mpeg4Gif,
      id: json['id'] as String,
      mpeg4Url: json['mpeg4_url'] as String,
      thumbnailUrl: json['thumbnail_url'] as String,
      mpeg4Width: (json['mpeg4_width'] as num?)?.toInt(),
      mpeg4Height: (json['mpeg4_height'] as num?)?.toInt(),
      mpeg4Duration: (json['mpeg4_duration'] as num?)?.toInt(),
      thumbnailMimeType: json['thumbnail_mime_type'] as String?,
      title: json['title'] as String?,
      caption: json['caption'] as String?,
      parseMode: $enumDecodeNullable(_$ParseModeEnumMap, json['parse_mode']),
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
      showCaptionAboveMedia: json['show_caption_above_media'] as bool?,
    );

Map<String, dynamic> _$InlineQueryResultMpeg4GifToJson(
        _InlineQueryResultMpeg4Gif instance) =>
    <String, dynamic>{
      'type': _$InlineQueryResultTypeEnumMap[instance.type]!,
      'id': instance.id,
      'mpeg4_url': instance.mpeg4Url,
      'thumbnail_url': instance.thumbnailUrl,
      if (instance.mpeg4Width case final value?) 'mpeg4_width': value,
      if (instance.mpeg4Height case final value?) 'mpeg4_height': value,
      if (instance.mpeg4Duration case final value?) 'mpeg4_duration': value,
      if (instance.thumbnailMimeType case final value?)
        'thumbnail_mime_type': value,
      if (instance.title case final value?) 'title': value,
      if (instance.caption case final value?) 'caption': value,
      if (instance.parseMode case final value?) 'parse_mode': value,
      if (instance.captionEntities case final value?) 'caption_entities': value,
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
