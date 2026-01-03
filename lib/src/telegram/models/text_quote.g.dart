// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_quote.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TextQuote _$TextQuoteFromJson(Map<String, dynamic> json) => _TextQuote(
  text: json['text'] as String,
  entities: (json['entities'] as List<dynamic>?)
      ?.map((e) => MessageEntity.fromJson(e as Map<String, dynamic>))
      .toList(),
  position: (json['position'] as num).toInt(),
  isManual: json['is_manual'] as bool?,
);

Map<String, dynamic> _$TextQuoteToJson(_TextQuote instance) =>
    <String, dynamic>{
      'text': instance.text,
      'entities': ?instance.entities,
      'position': instance.position,
      'is_manual': ?instance.isManual,
    };
