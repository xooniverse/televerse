// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bot_command_scope.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BotCommandScopeDefault _$BotCommandScopeDefaultFromJson(
  Map<String, dynamic> json,
) => BotCommandScopeDefault(
  type:
      $enumDecodeNullable(_$BotCommandScopeTypeEnumMap, json['type']) ??
      BotCommandScopeType.default_,
);

Map<String, dynamic> _$BotCommandScopeDefaultToJson(
  BotCommandScopeDefault instance,
) => <String, dynamic>{'type': _$BotCommandScopeTypeEnumMap[instance.type]!};

const _$BotCommandScopeTypeEnumMap = {
  BotCommandScopeType.default_: 'default',
  BotCommandScopeType.allPrivateChats: 'all_private_chats',
  BotCommandScopeType.allGroupChats: 'all_group_chats',
  BotCommandScopeType.allChatAdministrators: 'all_chat_administrators',
  BotCommandScopeType.chat: 'chat',
  BotCommandScopeType.chatAdministrators: 'chat_administrators',
  BotCommandScopeType.chatMember: 'chat_member',
};

BotCommandScopeAllPrivateChats _$BotCommandScopeAllPrivateChatsFromJson(
  Map<String, dynamic> json,
) => BotCommandScopeAllPrivateChats(
  type:
      $enumDecodeNullable(_$BotCommandScopeTypeEnumMap, json['type']) ??
      BotCommandScopeType.allPrivateChats,
);

Map<String, dynamic> _$BotCommandScopeAllPrivateChatsToJson(
  BotCommandScopeAllPrivateChats instance,
) => <String, dynamic>{'type': _$BotCommandScopeTypeEnumMap[instance.type]!};

BotCommandScopeAllGroupChats _$BotCommandScopeAllGroupChatsFromJson(
  Map<String, dynamic> json,
) => BotCommandScopeAllGroupChats(
  type:
      $enumDecodeNullable(_$BotCommandScopeTypeEnumMap, json['type']) ??
      BotCommandScopeType.allGroupChats,
);

Map<String, dynamic> _$BotCommandScopeAllGroupChatsToJson(
  BotCommandScopeAllGroupChats instance,
) => <String, dynamic>{'type': _$BotCommandScopeTypeEnumMap[instance.type]!};

BotCommandScopeAllChatAdministrators
_$BotCommandScopeAllChatAdministratorsFromJson(Map<String, dynamic> json) =>
    BotCommandScopeAllChatAdministrators(
      type:
          $enumDecodeNullable(_$BotCommandScopeTypeEnumMap, json['type']) ??
          BotCommandScopeType.allChatAdministrators,
    );

Map<String, dynamic> _$BotCommandScopeAllChatAdministratorsToJson(
  BotCommandScopeAllChatAdministrators instance,
) => <String, dynamic>{'type': _$BotCommandScopeTypeEnumMap[instance.type]!};

BotCommandScopeChat _$BotCommandScopeChatFromJson(Map<String, dynamic> json) =>
    BotCommandScopeChat(
      type:
          $enumDecodeNullable(_$BotCommandScopeTypeEnumMap, json['type']) ??
          BotCommandScopeType.chat,
      chatId: const IDConverter().fromJson(json['chat_id']),
    );

Map<String, dynamic> _$BotCommandScopeChatToJson(
  BotCommandScopeChat instance,
) => <String, dynamic>{
  'type': _$BotCommandScopeTypeEnumMap[instance.type]!,
  'chat_id': ?const IDConverter().toJson(instance.chatId),
};

BotCommandScopeChatAdministrators _$BotCommandScopeChatAdministratorsFromJson(
  Map<String, dynamic> json,
) => BotCommandScopeChatAdministrators(
  type:
      $enumDecodeNullable(_$BotCommandScopeTypeEnumMap, json['type']) ??
      BotCommandScopeType.chatAdministrators,
  chatId: const IDConverter().fromJson(json['chat_id']),
);

Map<String, dynamic> _$BotCommandScopeChatAdministratorsToJson(
  BotCommandScopeChatAdministrators instance,
) => <String, dynamic>{
  'type': _$BotCommandScopeTypeEnumMap[instance.type]!,
  'chat_id': ?const IDConverter().toJson(instance.chatId),
};

BotCommandScopeChatMember _$BotCommandScopeChatMemberFromJson(
  Map<String, dynamic> json,
) => BotCommandScopeChatMember(
  type:
      $enumDecodeNullable(_$BotCommandScopeTypeEnumMap, json['type']) ??
      BotCommandScopeType.chatMember,
  chatId: const IDConverter().fromJson(json['chat_id']),
  userId: (json['user_id'] as num).toInt(),
);

Map<String, dynamic> _$BotCommandScopeChatMemberToJson(
  BotCommandScopeChatMember instance,
) => <String, dynamic>{
  'type': _$BotCommandScopeTypeEnumMap[instance.type]!,
  'chat_id': ?const IDConverter().toJson(instance.chatId),
  'user_id': instance.userId,
};
