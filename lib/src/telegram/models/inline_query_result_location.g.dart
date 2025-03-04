// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inline_query_result_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InlineQueryResultLocationImpl _$$InlineQueryResultLocationImplFromJson(
        Map<String, dynamic> json) =>
    _$InlineQueryResultLocationImpl(
      type: $enumDecodeNullable(_$InlineQueryResultTypeEnumMap, json['type']) ??
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
              json['reply_markup'] as Map<String, dynamic>),
      inputMessageContent:
          _$JsonConverterFromJson<Map<String, Object>, InputMessageContent>(
              json['input_message_content'],
              const InputMessageContentConverter().fromJson),
      thumbnailUrl: json['thumbnail_url'] as String?,
      thumbnailWidth: (json['thumbnail_width'] as num?)?.toInt(),
      thumbnailHeight: (json['thumbnail_height'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$InlineQueryResultLocationImplToJson(
        _$InlineQueryResultLocationImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'title': instance.title,
      if (instance.horizontalAccuracy case final value?)
        'horizontal_accuracy': value,
      if (instance.livePeriod case final value?) 'live_period': value,
      if (instance.heading case final value?) 'heading': value,
      if (instance.proximityAlertRadius case final value?)
        'proximity_alert_radius': value,
      if (instance.replyMarkup case final value?) 'reply_markup': value,
      if (_$JsonConverterToJson<Map<String, Object>, InputMessageContent>(
              instance.inputMessageContent,
              const InputMessageContentConverter().toJson)
          case final value?)
        'input_message_content': value,
      if (instance.thumbnailUrl case final value?) 'thumbnail_url': value,
      if (instance.thumbnailWidth case final value?) 'thumbnail_width': value,
      if (instance.thumbnailHeight case final value?) 'thumbnail_height': value,
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
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
