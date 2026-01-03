// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_origin.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageOriginUser _$MessageOriginUserFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['date']);
  return MessageOriginUser(
    type:
        $enumDecodeNullable(_$MessageOriginTypeEnumMap, json['type']) ??
        MessageOriginType.user,
    date: (json['date'] as num).toInt(),
    senderUser: User.fromJson(json['sender_user'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MessageOriginUserToJson(MessageOriginUser instance) =>
    <String, dynamic>{
      'type': _$MessageOriginTypeEnumMap[instance.type]!,
      'date': instance.date,
      'sender_user': instance.senderUser,
    };

const _$MessageOriginTypeEnumMap = {
  MessageOriginType.user: 'user',
  MessageOriginType.hiddenUser: 'hidden_user',
  MessageOriginType.chat: 'chat',
  MessageOriginType.channel: 'channel',
};

MessageOriginHiddenUser _$MessageOriginHiddenUserFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(json, requiredKeys: const ['date']);
  return MessageOriginHiddenUser(
    type:
        $enumDecodeNullable(_$MessageOriginTypeEnumMap, json['type']) ??
        MessageOriginType.hiddenUser,
    date: (json['date'] as num).toInt(),
    senderUserName: json['sender_user_name'] as String,
  );
}

Map<String, dynamic> _$MessageOriginHiddenUserToJson(
  MessageOriginHiddenUser instance,
) => <String, dynamic>{
  'type': _$MessageOriginTypeEnumMap[instance.type]!,
  'date': instance.date,
  'sender_user_name': instance.senderUserName,
};

MessageOriginChat _$MessageOriginChatFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['date']);
  return MessageOriginChat(
    type:
        $enumDecodeNullable(_$MessageOriginTypeEnumMap, json['type']) ??
        MessageOriginType.chat,
    date: (json['date'] as num).toInt(),
    senderChat: Chat.fromJson(json['sender_chat'] as Map<String, dynamic>),
    authorSignature: json['author_signature'] as String?,
  );
}

Map<String, dynamic> _$MessageOriginChatToJson(MessageOriginChat instance) =>
    <String, dynamic>{
      'type': _$MessageOriginTypeEnumMap[instance.type]!,
      'date': instance.date,
      'sender_chat': instance.senderChat,
      'author_signature': ?instance.authorSignature,
    };

MessageOriginChannel _$MessageOriginChannelFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['date']);
  return MessageOriginChannel(
    type:
        $enumDecodeNullable(_$MessageOriginTypeEnumMap, json['type']) ??
        MessageOriginType.channel,
    date: (json['date'] as num).toInt(),
    chat: Chat.fromJson(json['chat'] as Map<String, dynamic>),
    messageId: (json['message_id'] as num).toInt(),
    authorSignature: json['author_signature'] as String?,
  );
}

Map<String, dynamic> _$MessageOriginChannelToJson(
  MessageOriginChannel instance,
) => <String, dynamic>{
  'type': _$MessageOriginTypeEnumMap[instance.type]!,
  'date': instance.date,
  'chat': instance.chat,
  'message_id': instance.messageId,
  'author_signature': ?instance.authorSignature,
};
