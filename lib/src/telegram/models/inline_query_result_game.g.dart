// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inline_query_result_game.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InlineQueryResultGame _$InlineQueryResultGameFromJson(
        Map<String, dynamic> json) =>
    _InlineQueryResultGame(
      type: $enumDecodeNullable(_$InlineQueryResultTypeEnumMap, json['type']) ??
          InlineQueryResultType.game,
      id: json['id'] as String,
      gameShortName: json['game_short_name'] as String,
      replyMarkup: json['reply_markup'] == null
          ? null
          : InlineKeyboardMarkup.fromJson(
              json['reply_markup'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InlineQueryResultGameToJson(
        _InlineQueryResultGame instance) =>
    <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
      'game_short_name': instance.gameShortName,
      if (instance.replyMarkup case final value?) 'reply_markup': value,
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
