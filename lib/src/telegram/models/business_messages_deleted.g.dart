// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_messages_deleted.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BusinessMessagesDeletedImpl _$$BusinessMessagesDeletedImplFromJson(
        Map<String, dynamic> json) =>
    _$BusinessMessagesDeletedImpl(
      businessConnectionId: json['business_connection_id'] as String,
      chat: Chat.fromJson(json['chat'] as Map<String, dynamic>),
      messageIds: (json['message_ids'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$$BusinessMessagesDeletedImplToJson(
        _$BusinessMessagesDeletedImpl instance) =>
    <String, dynamic>{
      'business_connection_id': instance.businessConnectionId,
      'chat': instance.chat,
      'message_ids': instance.messageIds,
    };
