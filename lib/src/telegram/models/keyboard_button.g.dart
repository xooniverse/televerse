// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'keyboard_button.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_KeyboardButton _$KeyboardButtonFromJson(Map<String, dynamic> json) =>
    _KeyboardButton(
      text: json['text'] as String,
      requestContact: json['request_contact'] as bool?,
      requestLocation: json['request_location'] as bool?,
      requestPoll: json['request_poll'] == null
          ? null
          : KeyboardButtonPollType.fromJson(
              json['request_poll'] as Map<String, dynamic>,
            ),
      webApp: json['web_app'] == null
          ? null
          : WebAppInfo.fromJson(json['web_app'] as Map<String, dynamic>),
      requestUsers: json['request_user'] == null
          ? null
          : KeyboardButtonRequestUsers.fromJson(
              json['request_user'] as Map<String, dynamic>,
            ),
      requestChat: json['request_chat'] == null
          ? null
          : KeyboardButtonRequestChat.fromJson(
              json['request_chat'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$KeyboardButtonToJson(_KeyboardButton instance) =>
    <String, dynamic>{
      'text': instance.text,
      'request_contact': ?instance.requestContact,
      'request_location': ?instance.requestLocation,
      'request_poll': ?instance.requestPoll,
      'web_app': ?instance.webApp,
      'request_user': ?instance.requestUsers,
      'request_chat': ?instance.requestChat,
    };
