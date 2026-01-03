// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inline_query_results_button.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InlineQueryResultsButton _$InlineQueryResultsButtonFromJson(
  Map<String, dynamic> json,
) => _InlineQueryResultsButton(
  text: json['text'] as String,
  webApp: json['web_app'] == null
      ? null
      : WebAppInfo.fromJson(json['web_app'] as Map<String, dynamic>),
  startParameter: json['start_parameter'] as String?,
);

Map<String, dynamic> _$InlineQueryResultsButtonToJson(
  _InlineQueryResultsButton instance,
) => <String, dynamic>{
  'text': instance.text,
  'web_app': ?instance.webApp,
  'start_parameter': ?instance.startParameter,
};
