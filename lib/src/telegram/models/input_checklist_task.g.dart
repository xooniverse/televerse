// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_checklist_task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InputChecklistTask _$InputChecklistTaskFromJson(Map<String, dynamic> json) =>
    _InputChecklistTask(
      id: (json['id'] as num).toInt(),
      text: json['text'] as String,
      parseMode: $enumDecodeNullable(_$ParseModeEnumMap, json['parse_mode']),
      textEntities: (json['text_entities'] as List<dynamic>?)
          ?.map((e) => MessageEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$InputChecklistTaskToJson(_InputChecklistTask instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      if (instance.parseMode case final value?) 'parse_mode': value,
      if (instance.textEntities case final value?) 'text_entities': value,
    };

const _$ParseModeEnumMap = {
  ParseMode.markdown: 'Markdown',
  ParseMode.html: 'HTML',
  ParseMode.markdownV2: 'MarkdownV2',
};
