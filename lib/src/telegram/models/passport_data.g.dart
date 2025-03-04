// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'passport_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PassportDataImpl _$$PassportDataImplFromJson(Map<String, dynamic> json) =>
    _$PassportDataImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) =>
              EncryptedPassportElement.fromJson(e as Map<String, dynamic>))
          .toList(),
      credentials: EncryptedCredentials.fromJson(
          json['credentials'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PassportDataImplToJson(_$PassportDataImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'credentials': instance.credentials,
    };
