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
      if (_$JsonConverterToJson<dynamic, ID>(
              instance.chatId, const IDConverter().toJson)
          case final value?)
        'chat_id': value,
      if (instance.allowSendingWithoutReply case final value?)
        'allow_sending_without_reply': value,
      if (instance.quote case final value?) 'quote': value,
      if (instance.quoteParseMode case final value?) 'quote_parse_mode': value,
      if (instance.quoteEntities case final value?) 'quote_entities': value,
      if (instance.quotePosition case final value?) 'quote_position': value,
      if (instance.checklistTaskId case final value?)
        'checklist_task_id': value,
    };

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
