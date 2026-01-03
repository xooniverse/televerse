// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'passport_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PassportData _$PassportDataFromJson(Map<String, dynamic> json) =>
    _PassportData(
      data: (json['data'] as List<dynamic>)
          .map(
            (e) => EncryptedPassportElement.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
      credentials: EncryptedCredentials.fromJson(
        json['credentials'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$PassportDataToJson(_PassportData instance) =>
    <String, dynamic>{
      'data': instance.data,
      'credentials': instance.credentials,
    };
