// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_origin.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageOriginUserImpl _$$MessageOriginUserImplFromJson(
    Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['date'],
  );
  return _$MessageOriginUserImpl(
    type: $enumDecodeNullable(_$MessageOriginTypeEnumMap, json['type']) ??
        MessageOriginType.user,
    date: (json['date'] as num).toInt(),
    senderUser: User.fromJson(json['sender_user'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$$MessageOriginUserImplToJson(
        _$MessageOriginUserImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'date': instance.date,
      'sender_user': instance.senderUser,
    };

const _$MessageOriginTypeEnumMap = {
  MessageOriginType.user: 'user',
  MessageOriginType.hiddenUser: 'hidden_user',
  MessageOriginType.chat: 'chat',
  MessageOriginType.channel: 'channel',
};

_$MessageOriginHiddenUserImpl _$$MessageOriginHiddenUserImplFromJson(
    Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['date'],
  );
  return _$MessageOriginHiddenUserImpl(
    type: $enumDecodeNullable(_$MessageOriginTypeEnumMap, json['type']) ??
        MessageOriginType.hiddenUser,
    date: (json['date'] as num).toInt(),
    senderUserName: json['sender_user_name'] as String,
  );
}

Map<String, dynamic> _$$MessageOriginHiddenUserImplToJson(
        _$MessageOriginHiddenUserImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'date': instance.date,
      'sender_user_name': instance.senderUserName,
    };

_$MessageOriginChatImpl _$$MessageOriginChatImplFromJson(
    Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['date'],
  );
  return _$MessageOriginChatImpl(
    type: $enumDecodeNullable(_$MessageOriginTypeEnumMap, json['type']) ??
        MessageOriginType.chat,
    date: (json['date'] as num).toInt(),
    senderChat: Chat.fromJson(json['sender_chat'] as Map<String, dynamic>),
    authorSignature: json['author_signature'] as String?,
  );
}

Map<String, dynamic> _$$MessageOriginChatImplToJson(
        _$MessageOriginChatImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'date': instance.date,
      'sender_chat': instance.senderChat,
      if (instance.authorSignature case final value?) 'author_signature': value,
    };

_$MessageOriginChannelImpl _$$MessageOriginChannelImplFromJson(
    Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['date'],
  );
  return _$MessageOriginChannelImpl(
    type: $enumDecodeNullable(_$MessageOriginTypeEnumMap, json['type']) ??
        MessageOriginType.channel,
    date: (json['date'] as num).toInt(),
    chat: Chat.fromJson(json['sender_chat'] as Map<String, dynamic>),
    messageId: (json['message_id'] as num).toInt(),
    authorSignature: json['author_signature'] as String?,
  );
}

Map<String, dynamic> _$$MessageOriginChannelImplToJson(
        _$MessageOriginChannelImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'date': instance.date,
      'sender_chat': instance.chat,
      'message_id': instance.messageId,
      if (instance.authorSignature case final value?) 'author_signature': value,
    };
