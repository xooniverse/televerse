// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chosen_inline_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChosenInlineResultImpl _$$ChosenInlineResultImplFromJson(
        Map<String, dynamic> json) =>
    _$ChosenInlineResultImpl(
      resultId: json['result_id'] as String,
      from: User.fromJson(json['from'] as Map<String, dynamic>),
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      inlineMessageId: json['inline_message_id'] as String?,
      query: json['query'] as String,
    );

Map<String, dynamic> _$$ChosenInlineResultImplToJson(
        _$ChosenInlineResultImpl instance) =>
    <String, dynamic>{
      'result_id': instance.resultId,
      'from': instance.from,
      if (instance.location case final value?) 'location': value,
      if (instance.inlineMessageId case final value?)
        'inline_message_id': value,
      'query': instance.query,
    };
