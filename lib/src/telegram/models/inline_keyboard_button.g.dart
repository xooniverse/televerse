// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inline_keyboard_button.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InlineKeyboardButton _$InlineKeyboardButtonFromJson(
  Map<String, dynamic> json,
) => _InlineKeyboardButton(
  text: json['text'] as String,
  url: json['url'] as String?,
  loginUrl: json['login_url'] == null
      ? null
      : LoginURL.fromJson(json['login_url'] as Map<String, dynamic>),
  callbackData: json['callback_data'] as String?,
  switchInlineQuery: json['switch_inline_query'] as String?,
  switchInlineQueryCurrentChat:
      json['switch_inline_query_current_chat'] as String?,
  callbackGame: json['callback_game'] == null
      ? null
      : CallbackGame.fromJson(json['callback_game'] as Map<String, dynamic>),
  pay: json['pay'] as bool?,
  webApp: json['web_app'] == null
      ? null
      : WebAppInfo.fromJson(json['web_app'] as Map<String, dynamic>),
  switchInlineQueryChosenChat: json['switch_inline_query_chosen_chat'] == null
      ? null
      : SwitchInlineQueryChosenChat.fromJson(
          json['switch_inline_query_chosen_chat'] as Map<String, dynamic>,
        ),
  copyText: json['copy_text'] == null
      ? null
      : CopyTextButton.fromJson(json['copy_text'] as Map<String, dynamic>),
);

Map<String, dynamic> _$InlineKeyboardButtonToJson(
  _InlineKeyboardButton instance,
) => <String, dynamic>{
  'text': instance.text,
  'url': ?instance.url,
  'login_url': ?instance.loginUrl,
  'callback_data': ?instance.callbackData,
  'switch_inline_query': ?instance.switchInlineQuery,
  'switch_inline_query_current_chat': ?instance.switchInlineQueryCurrentChat,
  'callback_game': ?instance.callbackGame,
  'pay': ?instance.pay,
  'web_app': ?instance.webApp,
  'switch_inline_query_chosen_chat': ?instance.switchInlineQueryChosenChat,
  'copy_text': ?instance.copyText,
};
