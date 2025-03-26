// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ResponseParameters _$ResponseParametersFromJson(Map<String, dynamic> json) =>
    _ResponseParameters(
      migrateToChatId: (json['migrate_to_chat_id'] as num?)?.toInt(),
      retryAfter: (json['retry_after'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ResponseParametersToJson(_ResponseParameters instance) =>
    <String, dynamic>{
      if (instance.migrateToChatId case final value?)
        'migrate_to_chat_id': value,
      if (instance.retryAfter case final value?) 'retry_after': value,
    };
