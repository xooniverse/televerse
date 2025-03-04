// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'switch_inline_query_chosen_chat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SwitchInlineQueryChosenChatImpl _$$SwitchInlineQueryChosenChatImplFromJson(
        Map<String, dynamic> json) =>
    _$SwitchInlineQueryChosenChatImpl(
      query: json['query'] as String?,
      allowUserChats: json['allow_user_chats'] as bool?,
      allowBotChats: json['allow_bot_chats'] as bool?,
      allowGroupChats: json['allow_group_chats'] as bool?,
      allowChannelChats: json['allow_channel_chats'] as bool?,
    );

Map<String, dynamic> _$$SwitchInlineQueryChosenChatImplToJson(
        _$SwitchInlineQueryChosenChatImpl instance) =>
    <String, dynamic>{
      if (instance.query case final value?) 'query': value,
      if (instance.allowUserChats case final value?) 'allow_user_chats': value,
      if (instance.allowBotChats case final value?) 'allow_bot_chats': value,
      if (instance.allowGroupChats case final value?)
        'allow_group_chats': value,
      if (instance.allowChannelChats case final value?)
        'allow_channel_chats': value,
    };
