// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bot_command_scope.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BotCommandScopeDefaultImpl _$$BotCommandScopeDefaultImplFromJson(
        Map<String, dynamic> json) =>
    _$BotCommandScopeDefaultImpl(
      type: $enumDecodeNullable(_$BotCommandScopeTypeEnumMap, json['type']) ??
          BotCommandScopeType.default_,
    );

Map<String, dynamic> _$$BotCommandScopeDefaultImplToJson(
        _$BotCommandScopeDefaultImpl instance) =>
    <String, dynamic>{
      'type': _$BotCommandScopeTypeEnumMap[instance.type]!,
    };

const _$BotCommandScopeTypeEnumMap = {
  BotCommandScopeType.default_: 'default',
  BotCommandScopeType.allPrivateChats: 'all_private_chats',
  BotCommandScopeType.allGroupChats: 'all_group_chats',
  BotCommandScopeType.allChatAdministrators: 'all_chat_administrators',
  BotCommandScopeType.chat: 'chat',
  BotCommandScopeType.chatAdministrators: 'chat_administrators',
  BotCommandScopeType.chatMember: 'chat_member',
};

_$BotCommandScopeAllPrivateChatsImpl
    _$$BotCommandScopeAllPrivateChatsImplFromJson(Map<String, dynamic> json) =>
        _$BotCommandScopeAllPrivateChatsImpl(
          type:
              $enumDecodeNullable(_$BotCommandScopeTypeEnumMap, json['type']) ??
                  BotCommandScopeType.allPrivateChats,
        );

Map<String, dynamic> _$$BotCommandScopeAllPrivateChatsImplToJson(
        _$BotCommandScopeAllPrivateChatsImpl instance) =>
    <String, dynamic>{
      'type': _$BotCommandScopeTypeEnumMap[instance.type]!,
    };

_$BotCommandScopeAllGroupChatsImpl _$$BotCommandScopeAllGroupChatsImplFromJson(
        Map<String, dynamic> json) =>
    _$BotCommandScopeAllGroupChatsImpl(
      type: $enumDecodeNullable(_$BotCommandScopeTypeEnumMap, json['type']) ??
          BotCommandScopeType.allGroupChats,
    );

Map<String, dynamic> _$$BotCommandScopeAllGroupChatsImplToJson(
        _$BotCommandScopeAllGroupChatsImpl instance) =>
    <String, dynamic>{
      'type': _$BotCommandScopeTypeEnumMap[instance.type]!,
    };

_$BotCommandScopeAllChatAdministratorsImpl
    _$$BotCommandScopeAllChatAdministratorsImplFromJson(
            Map<String, dynamic> json) =>
        _$BotCommandScopeAllChatAdministratorsImpl(
          type:
              $enumDecodeNullable(_$BotCommandScopeTypeEnumMap, json['type']) ??
                  BotCommandScopeType.allChatAdministrators,
        );

Map<String, dynamic> _$$BotCommandScopeAllChatAdministratorsImplToJson(
        _$BotCommandScopeAllChatAdministratorsImpl instance) =>
    <String, dynamic>{
      'type': _$BotCommandScopeTypeEnumMap[instance.type]!,
    };

_$BotCommandScopeChatImpl _$$BotCommandScopeChatImplFromJson(
        Map<String, dynamic> json) =>
    _$BotCommandScopeChatImpl(
      type: $enumDecodeNullable(_$BotCommandScopeTypeEnumMap, json['type']) ??
          BotCommandScopeType.chat,
      chatId: const IDConverter().fromJson(json['chat_id']),
    );

Map<String, dynamic> _$$BotCommandScopeChatImplToJson(
        _$BotCommandScopeChatImpl instance) =>
    <String, dynamic>{
      'type': _$BotCommandScopeTypeEnumMap[instance.type]!,
      if (const IDConverter().toJson(instance.chatId) case final value?)
        'chat_id': value,
    };

_$BotCommandScopeChatAdministratorsImpl
    _$$BotCommandScopeChatAdministratorsImplFromJson(
            Map<String, dynamic> json) =>
        _$BotCommandScopeChatAdministratorsImpl(
          type:
              $enumDecodeNullable(_$BotCommandScopeTypeEnumMap, json['type']) ??
                  BotCommandScopeType.chatAdministrators,
          chatId: const IDConverter().fromJson(json['chat_id']),
        );

Map<String, dynamic> _$$BotCommandScopeChatAdministratorsImplToJson(
        _$BotCommandScopeChatAdministratorsImpl instance) =>
    <String, dynamic>{
      'type': _$BotCommandScopeTypeEnumMap[instance.type]!,
      if (const IDConverter().toJson(instance.chatId) case final value?)
        'chat_id': value,
    };

_$BotCommandScopeChatMemberImpl _$$BotCommandScopeChatMemberImplFromJson(
        Map<String, dynamic> json) =>
    _$BotCommandScopeChatMemberImpl(
      type: $enumDecodeNullable(_$BotCommandScopeTypeEnumMap, json['type']) ??
          BotCommandScopeType.chatMember,
      chatId: const IDConverter().fromJson(json['chat_id']),
      userId: (json['user_id'] as num).toInt(),
    );

Map<String, dynamic> _$$BotCommandScopeChatMemberImplToJson(
        _$BotCommandScopeChatMemberImpl instance) =>
    <String, dynamic>{
      'type': _$BotCommandScopeTypeEnumMap[instance.type]!,
      if (const IDConverter().toJson(instance.chatId) case final value?)
        'chat_id': value,
      'user_id': instance.userId,
    };
