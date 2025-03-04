// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inline_query_results_button.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InlineQueryResultsButtonImpl _$$InlineQueryResultsButtonImplFromJson(
        Map<String, dynamic> json) =>
    _$InlineQueryResultsButtonImpl(
      text: json['text'] as String,
      webApp: json['web_app'] == null
          ? null
          : WebAppInfo.fromJson(json['web_app'] as Map<String, dynamic>),
      startParameter: json['start_parameter'] as String?,
    );

Map<String, dynamic> _$$InlineQueryResultsButtonImplToJson(
        _$InlineQueryResultsButtonImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      if (instance.webApp case final value?) 'web_app': value,
      if (instance.startParameter case final value?) 'start_parameter': value,
    };
