// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inline_keyboard_button.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InlineKeyboardButton _$InlineKeyboardButtonFromJson(
        Map<String, dynamic> json) =>
    _InlineKeyboardButton(
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
          : CallbackGame.fromJson(
              json['callback_game'] as Map<String, dynamic>),
      pay: json['pay'] as bool?,
      webApp: json['web_app'] == null
          ? null
          : WebAppInfo.fromJson(json['web_app'] as Map<String, dynamic>),
      switchInlineQueryChosenChat: json['switch_inline_query_chosen_chat'] ==
              null
          ? null
          : SwitchInlineQueryChosenChat.fromJson(
              json['switch_inline_query_chosen_chat'] as Map<String, dynamic>),
      copyText: json['copy_text'] == null
          ? null
          : CopyTextButton.fromJson(json['copy_text'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InlineKeyboardButtonToJson(
        _InlineKeyboardButton instance) =>
    <String, dynamic>{
      'text': instance.text,
      if (instance.url case final value?) 'url': value,
      if (instance.loginUrl case final value?) 'login_url': value,
      if (instance.callbackData case final value?) 'callback_data': value,
      if (instance.switchInlineQuery case final value?)
        'switch_inline_query': value,
      if (instance.switchInlineQueryCurrentChat case final value?)
        'switch_inline_query_current_chat': value,
      if (instance.callbackGame case final value?) 'callback_game': value,
      if (instance.pay case final value?) 'pay': value,
      if (instance.webApp case final value?) 'web_app': value,
      if (instance.switchInlineQueryChosenChat case final value?)
        'switch_inline_query_chosen_chat': value,
      if (instance.copyText case final value?) 'copy_text': value,
    };
