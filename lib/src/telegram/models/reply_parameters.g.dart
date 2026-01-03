// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reply_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReplyParameters _$ReplyParametersFromJson(Map<String, dynamic> json) =>
    _ReplyParameters(
      messageId: (json['message_id'] as num).toInt(),
      chatId: const IDConverter().fromJson(json['chat_id']),
      allowSendingWithoutReply: json['allow_sending_without_reply'] as bool?,
      quote: json['quote'] as String?,
      quoteParseMode: json['quote_parse_mode'] as String?,
      quoteEntities: (json['quote_entities'] as List<dynamic>?)
          ?.map((e) => MessageEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      quotePosition: (json['quote_position'] as num?)?.toInt(),
      checklistTaskId: (json['checklist_task_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ReplyParametersToJson(_ReplyParameters instance) =>
    <String, dynamic>{
      'message_id': instance.messageId,
      'chat_id': ?_$JsonConverterToJson<dynamic, ID>(
        instance.chatId,
        const IDConverter().toJson,
      ),
      'allow_sending_without_reply': ?instance.allowSendingWithoutReply,
      'quote': ?instance.quote,
      'quote_parse_mode': ?instance.quoteParseMode,
      'quote_entities': ?instance.quoteEntities,
      'quote_position': ?instance.quotePosition,
      'checklist_task_id': ?instance.checklistTaskId,
    };

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
