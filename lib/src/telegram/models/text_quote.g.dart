// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_quote.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TextQuoteImpl _$$TextQuoteImplFromJson(Map<String, dynamic> json) =>
    _$TextQuoteImpl(
      text: json['text'] as String,
      entities: (json['entities'] as List<dynamic>?)
          ?.map((e) => MessageEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      position: (json['position'] as num).toInt(),
      isManual: json['is_manual'] as bool?,
    );

Map<String, dynamic> _$$TextQuoteImplToJson(_$TextQuoteImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      if (instance.entities case final value?) 'entities': value,
      'position': instance.position,
      if (instance.isManual case final value?) 'is_manual': value,
    };
