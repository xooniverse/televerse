// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_messages_deleted.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BusinessMessagesDeleted _$BusinessMessagesDeletedFromJson(
        Map<String, dynamic> json) =>
    _BusinessMessagesDeleted(
      businessConnectionId: json['business_connection_id'] as String,
      chat: Chat.fromJson(json['chat'] as Map<String, dynamic>),
      messageIds: (json['message_ids'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$BusinessMessagesDeletedToJson(
        _BusinessMessagesDeleted instance) =>
    <String, dynamic>{
      'business_connection_id': instance.businessConnectionId,
      'chat': instance.chat,
      'message_ids': instance.messageIds,
    };
