// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'callback_query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CallbackQuery _$CallbackQueryFromJson(Map<String, dynamic> json) =>
    _CallbackQuery(
      id: json['id'] as String,
      from: User.fromJson(json['from'] as Map<String, dynamic>),
      message: json['message'] == null
          ? null
          : MaybeInaccessibleMessage.fromJson(
              json['message'] as Map<String, dynamic>,
            ),
      inlineMessageId: json['inline_message_id'] as String?,
      chatInstance: json['chat_instance'] as String,
      data: json['data'] as String?,
      gameShortName: json['game_short_name'] as String?,
    );

Map<String, dynamic> _$CallbackQueryToJson(_CallbackQuery instance) =>
    <String, dynamic>{
      'id': instance.id,
      'from': instance.from,
      'message': ?instance.message,
      'inline_message_id': ?instance.inlineMessageId,
      'chat_instance': instance.chatInstance,
      'data': ?instance.data,
      'game_short_name': ?instance.gameShortName,
    };
