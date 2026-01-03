// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inline_query_result_gif.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InlineQueryResultGif _$InlineQueryResultGifFromJson(
  Map<String, dynamic> json,
) => _InlineQueryResultGif(
  type:
      $enumDecodeNullable(_$InlineQueryResultTypeEnumMap, json['type']) ??
      InlineQueryResultType.gif,
  id: json['id'] as String,
  gifUrl: json['gif_url'] as String,
  thumbnailUrl: json['thumbnail_url'] as String,
  gifWidth: (json['gif_width'] as num?)?.toInt(),
  gifHeight: (json['gif_height'] as num?)?.toInt(),
  gifDuration: (json['gif_duration'] as num?)?.toInt(),
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
          json['reply_markup'] as Map<String, dynamic>,
        ),
  inputMessageContent:
      _$JsonConverterFromJson<Map<String, Object>, InputMessageContent>(
        json['input_message_content'],
        const InputMessageContentConverter().fromJson,
      ),
  showCaptionAboveMedia: json['show_caption_above_media'] as bool?,
);

Map<String, dynamic> _$InlineQueryResultGifToJson(
  _InlineQueryResultGif instance,
) => <String, dynamic>{
  'type': _$InlineQueryResultTypeEnumMap[instance.type]!,
  'id': instance.id,
  'gif_url': instance.gifUrl,
  'thumbnail_url': instance.thumbnailUrl,
  'gif_width': ?instance.gifWidth,
  'gif_height': ?instance.gifHeight,
  'gif_duration': ?instance.gifDuration,
  'thumbnail_mime_type': ?instance.thumbnailMimeType,
  'title': ?instance.title,
  'caption': ?instance.caption,
  'parse_mode': ?instance.parseMode,
  'caption_entities': ?instance.captionEntities,
  'reply_markup': ?instance.replyMarkup,
  'input_message_content':
      ?_$JsonConverterToJson<Map<String, Object>, InputMessageContent>(
        instance.inputMessageContent,
        const InputMessageContentConverter().toJson,
      ),
  'show_caption_above_media': ?instance.showCaptionAboveMedia,
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
