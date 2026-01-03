// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inline_query_result_article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InlineQueryResultArticle _$InlineQueryResultArticleFromJson(
  Map<String, dynamic> json,
) => _InlineQueryResultArticle(
  id: json['id'] as String,
  title: json['title'] as String,
  inputMessageContent: const InputMessageContentConverter().fromJson(
    json['input_message_content'] as Map<String, Object>,
  ),
  replyMarkup: json['reply_markup'] == null
      ? null
      : InlineKeyboardMarkup.fromJson(
          json['reply_markup'] as Map<String, dynamic>,
        ),
  url: json['url'] as String?,
  description: json['description'] as String?,
  thumbnailUrl: json['thumbnail_url'] as String?,
  thumbnailWidth: (json['thumbnail_width'] as num?)?.toInt(),
  thumbnailHeight: (json['thumbnail_height'] as num?)?.toInt(),
  type:
      $enumDecodeNullable(_$InlineQueryResultTypeEnumMap, json['type']) ??
      InlineQueryResultType.article,
);

Map<String, dynamic> _$InlineQueryResultArticleToJson(
  _InlineQueryResultArticle instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'input_message_content': const InputMessageContentConverter().toJson(
    instance.inputMessageContent,
  ),
  'reply_markup': ?instance.replyMarkup,
  'url': ?instance.url,
  'description': ?instance.description,
  'thumbnail_url': ?instance.thumbnailUrl,
  'thumbnail_width': ?instance.thumbnailWidth,
  'thumbnail_height': ?instance.thumbnailHeight,
  'type': _$InlineQueryResultTypeEnumMap[instance.type]!,
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
