// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'callback_query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CallbackQueryImpl _$$CallbackQueryImplFromJson(Map<String, dynamic> json) =>
    _$CallbackQueryImpl(
      id: json['id'] as String,
      from: User.fromJson(json['from'] as Map<String, dynamic>),
      message: json['message'] == null
          ? null
          : MaybeInaccessibleMessage.fromJson(
              json['message'] as Map<String, dynamic>),
      inlineMessageId: json['inline_message_id'] as String?,
      chatInstance: json['chat_instance'] as String,
      data: json['data'] as String?,
      gameShortName: json['game_short_name'] as String?,
    );

Map<String, dynamic> _$$CallbackQueryImplToJson(_$CallbackQueryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'from': instance.from,
      if (instance.message case final value?) 'message': value,
      if (instance.inlineMessageId case final value?)
        'inline_message_id': value,
      'chat_instance': instance.chatInstance,
      if (instance.data case final value?) 'data': value,
      if (instance.gameShortName case final value?) 'game_short_name': value,
    };
