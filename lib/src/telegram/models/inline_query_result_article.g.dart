// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inline_query_result_article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InlineQueryResultArticleImpl _$$InlineQueryResultArticleImplFromJson(
        Map<String, dynamic> json) =>
    _$InlineQueryResultArticleImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      inputMessageContent: const InputMessageContentConverter()
          .fromJson(json['inputMessageContent'] as Map<String, Object>),
      replyMarkup: json['reply_markup'] == null
          ? null
          : InlineKeyboardMarkup.fromJson(
              json['reply_markup'] as Map<String, dynamic>),
      url: json['url'] as String?,
      description: json['description'] as String?,
      thumbnailUrl: json['thumbnail_url'] as String?,
      thumbnailWidth: (json['thumbnail_width'] as num?)?.toInt(),
      thumbnailHeight: (json['thumbnail_height'] as num?)?.toInt(),
      type: $enumDecodeNullable(_$InlineQueryResultTypeEnumMap, json['type']) ??
          InlineQueryResultType.article,
    );

Map<String, dynamic> _$$InlineQueryResultArticleImplToJson(
        _$InlineQueryResultArticleImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'inputMessageContent': const InputMessageContentConverter()
          .toJson(instance.inputMessageContent),
      if (instance.replyMarkup case final value?) 'reply_markup': value,
      if (instance.url case final value?) 'url': value,
      if (instance.description case final value?) 'description': value,
      if (instance.thumbnailUrl case final value?) 'thumbnail_url': value,
      if (instance.thumbnailWidth case final value?) 'thumbnail_width': value,
      if (instance.thumbnailHeight case final value?) 'thumbnail_height': value,
      'type': instance.type,
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
