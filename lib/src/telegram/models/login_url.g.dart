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
      if (instance.forwardText case final value?) 'forward_text': value,
      if (instance.botUsername case final value?) 'bot_username': value,
      if (instance.requestWriteAccess case final value?)
        'request_write_access': value,
    };
