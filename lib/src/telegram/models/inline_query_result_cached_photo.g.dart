// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inline_query_result_cached_photo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InlineQueryResultCachedPhoto _$InlineQueryResultCachedPhotoFromJson(
  Map<String, dynamic> json,
) => _InlineQueryResultCachedPhoto(
  id: json['id'] as String,
  photoFileId: json['photo_file_id'] as String,
  type:
      $enumDecodeNullable(_$InlineQueryResultTypeEnumMap, json['type']) ??
      InlineQueryResultType.photo,
  title: json['title'] as String?,
  description: json['description'] as String?,
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

Map<String, dynamic> _$InlineQueryResultCachedPhotoToJson(
  _InlineQueryResultCachedPhoto instance,
) => <String, dynamic>{
  'id': instance.id,
  'photo_file_id': instance.photoFileId,
  'type': _$InlineQueryResultTypeEnumMap[instance.type]!,
  'title': ?instance.title,
  'description': ?instance.description,
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
