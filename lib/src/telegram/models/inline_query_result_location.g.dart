// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inline_query_result_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InlineQueryResultLocation _$InlineQueryResultLocationFromJson(
  Map<String, dynamic> json,
) => _InlineQueryResultLocation(
  type:
      $enumDecodeNullable(_$InlineQueryResultTypeEnumMap, json['type']) ??
      InlineQueryResultType.location,
  id: json['id'] as String,
  latitude: (json['latitude'] as num).toDouble(),
  longitude: (json['longitude'] as num).toDouble(),
  title: json['title'] as String,
  horizontalAccuracy: (json['horizontal_accuracy'] as num?)?.toInt(),
  livePeriod: (json['live_period'] as num?)?.toInt(),
  heading: (json['heading'] as num?)?.toInt(),
  proximityAlertRadius: (json['proximity_alert_radius'] as num?)?.toInt(),
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

Map<String, dynamic> _$InlineQueryResultLocationToJson(
  _InlineQueryResultLocation instance,
) => <String, dynamic>{
  'type': _$InlineQueryResultTypeEnumMap[instance.type]!,
  'id': instance.id,
  'latitude': instance.latitude,
  'longitude': instance.longitude,
  'title': instance.title,
  'horizontal_accuracy': ?instance.horizontalAccuracy,
  'live_period': ?instance.livePeriod,
  'heading': ?instance.heading,
  'proximity_alert_radius': ?instance.proximityAlertRadius,
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

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
