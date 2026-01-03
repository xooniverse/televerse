// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'switch_inline_query_chosen_chat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SwitchInlineQueryChosenChat _$SwitchInlineQueryChosenChatFromJson(
  Map<String, dynamic> json,
) => _SwitchInlineQueryChosenChat(
  query: json['query'] as String?,
  allowUserChats: json['allow_user_chats'] as bool?,
  allowBotChats: json['allow_bot_chats'] as bool?,
  allowGroupChats: json['allow_group_chats'] as bool?,
  allowChannelChats: json['allow_channel_chats'] as bool?,
);

Map<String, dynamic> _$SwitchInlineQueryChosenChatToJson(
  _SwitchInlineQueryChosenChat instance,
) => <String, dynamic>{
  'query': ?instance.query,
  'allow_user_chats': ?instance.allowUserChats,
  'allow_bot_chats': ?instance.allowBotChats,
  'allow_group_chats': ?instance.allowGroupChats,
  'allow_channel_chats': ?instance.allowChannelChats,
};
