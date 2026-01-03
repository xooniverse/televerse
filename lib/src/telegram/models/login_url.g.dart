// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_url.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginURL _$LoginURLFromJson(Map<String, dynamic> json) => _LoginURL(
  url: json['url'] as String,
  forwardText: json['forward_text'] as String?,
  botUsername: json['bot_username'] as String?,
  requestWriteAccess: json['request_write_access'] as bool?,
);

Map<String, dynamic> _$LoginURLToJson(_LoginURL instance) => <String, dynamic>{
  'url': instance.url,
  'forward_text': ?instance.forwardText,
  'bot_username': ?instance.botUsername,
  'request_write_access': ?instance.requestWriteAccess,
};
