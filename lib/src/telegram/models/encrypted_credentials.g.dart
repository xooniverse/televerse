// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'encrypted_credentials.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EncryptedCredentials _$EncryptedCredentialsFromJson(
        Map<String, dynamic> json) =>
    _EncryptedCredentials(
      data: json['data'] as String,
      hash: json['hash'] as String,
      secret: json['secret'] as String,
    );

Map<String, dynamic> _$EncryptedCredentialsToJson(
        _EncryptedCredentials instance) =>
    <String, dynamic>{
      'data': instance.data,
      'hash': instance.hash,
      'secret': instance.secret,
    };
