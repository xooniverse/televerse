// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseParametersImpl _$$ResponseParametersImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseParametersImpl(
      migrateToChatId: (json['migrate_to_chat_id'] as num?)?.toInt(),
      retryAfter: (json['retry_after'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ResponseParametersImplToJson(
        _$ResponseParametersImpl instance) =>
    <String, dynamic>{
      if (instance.migrateToChatId case final value?)
        'migrate_to_chat_id': value,
      if (instance.retryAfter case final value?) 'retry_after': value,
    };
