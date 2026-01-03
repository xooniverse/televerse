// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inline_query_result_video.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InlineQueryResultVideo _$InlineQueryResultVideoFromJson(
  Map<String, dynamic> json,
) => _InlineQueryResultVideo(
  type:
      $enumDecodeNullable(_$InlineQueryResultTypeEnumMap, json['type']) ??
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
          json['reply_markup'] as Map<String, dynamic>,
        ),
  inputMessageContent:
      _$JsonConverterFromJson<Map<String, Object>, InputMessageContent>(
        json['input_message_content'],
        const InputMessageContentConverter().fromJson,
      ),
  showCaptionAboveMedia: json['show_caption_above_media'] as bool?,
);

Map<String, dynamic> _$InlineQueryResultVideoToJson(
  _InlineQueryResultVideo instance,
) => <String, dynamic>{
  'type': _$InlineQueryResultTypeEnumMap[instance.type]!,
  'id': instance.id,
  'video_url': instance.videoUrl,
  'mime_type': instance.mimeType,
  'thumbnail_url': instance.thumbnailUrl,
  'title': instance.title,
  'caption': ?instance.caption,
  'parse_mode': ?instance.parseMode,
  'caption_entities': ?instance.captionEntities,
  'video_width': ?instance.videoWidth,
  'video_height': ?instance.videoHeight,
  'video_duration': ?instance.videoDuration,
  'description': ?instance.description,
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
