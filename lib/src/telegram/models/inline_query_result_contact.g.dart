// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inline_query_result_contact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InlineQueryResultContact _$InlineQueryResultContactFromJson(
  Map<String, dynamic> json,
) => _InlineQueryResultContact(
  id: json['id'] as String,
  type:
      $enumDecodeNullable(_$InlineQueryResultTypeEnumMap, json['type']) ??
      InlineQueryResultType.contact,
  phoneNumber: json['phone_number'] as String,
  firstName: json['first_name'] as String,
  lastName: json['last_name'] as String?,
  vcard: json['vcard'] as String?,
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

Map<String, dynamic> _$InlineQueryResultContactToJson(
  _InlineQueryResultContact instance,
) => <String, dynamic>{
  'id': instance.id,
  'type': _$InlineQueryResultTypeEnumMap[instance.type]!,
  'phone_number': instance.phoneNumber,
  'first_name': instance.firstName,
  'last_name': ?instance.lastName,
  'vcard': ?instance.vcard,
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
