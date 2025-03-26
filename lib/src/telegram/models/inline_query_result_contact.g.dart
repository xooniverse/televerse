// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inline_query_result_contact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InlineQueryResultContact _$InlineQueryResultContactFromJson(
        Map<String, dynamic> json) =>
    _InlineQueryResultContact(
      id: json['id'] as String,
      type: $enumDecodeNullable(_$InlineQueryResultTypeEnumMap, json['type']) ??
          InlineQueryResultType.contact,
      phoneNumber: json['phone_number'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String?,
      vcard: json['vcard'] as String?,
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

Map<String, dynamic> _$InlineQueryResultContactToJson(
        _InlineQueryResultContact instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'phone_number': instance.phoneNumber,
      'first_name': instance.firstName,
      if (instance.lastName case final value?) 'last_name': value,
      if (instance.vcard case final value?) 'vcard': value,
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
