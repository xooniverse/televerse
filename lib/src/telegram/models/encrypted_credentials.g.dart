// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'encrypted_credentials.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EncryptedCredentialsImpl _$$EncryptedCredentialsImplFromJson(
        Map<String, dynamic> json) =>
    _$EncryptedCredentialsImpl(
      data: json['data'] as String,
      hash: json['hash'] as String,
      secret: json['secret'] as String,
    );

Map<String, dynamic> _$$EncryptedCredentialsImplToJson(
        _$EncryptedCredentialsImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'hash': instance.hash,
      'secret': instance.secret,
    };
