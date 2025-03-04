// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'keyboard_button.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KeyboardButtonImpl _$$KeyboardButtonImplFromJson(Map<String, dynamic> json) =>
    _$KeyboardButtonImpl(
      text: json['text'] as String,
      requestContact: json['request_contact'] as bool?,
      requestLocation: json['request_location'] as bool?,
      requestPoll: json['request_poll'] == null
          ? null
          : KeyboardButtonPollType.fromJson(
              json['request_poll'] as Map<String, dynamic>),
      webApp: json['web_app'] == null
          ? null
          : WebAppInfo.fromJson(json['web_app'] as Map<String, dynamic>),
      requestUsers: json['request_user'] == null
          ? null
          : KeyboardButtonRequestUsers.fromJson(
              json['request_user'] as Map<String, dynamic>),
      requestChat: json['request_chat'] == null
          ? null
          : KeyboardButtonRequestChat.fromJson(
              json['request_chat'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$KeyboardButtonImplToJson(
        _$KeyboardButtonImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      if (instance.requestContact case final value?) 'request_contact': value,
      if (instance.requestLocation case final value?) 'request_location': value,
      if (instance.requestPoll case final value?) 'request_poll': value,
      if (instance.webApp case final value?) 'web_app': value,
      if (instance.requestUsers case final value?) 'request_user': value,
      if (instance.requestChat case final value?) 'request_chat': value,
    };
