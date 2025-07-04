// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_checklist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InputChecklist _$InputChecklistFromJson(Map<String, dynamic> json) =>
    _InputChecklist(
      title: json['title'] as String,
      parseMode: $enumDecodeNullable(_$ParseModeEnumMap, json['parse_mode']),
      titleEntities: (json['title_entities'] as List<dynamic>?)
          ?.map((e) => MessageEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      tasks: (json['tasks'] as List<dynamic>)
          .map((e) => InputChecklistTask.fromJson(e as Map<String, dynamic>))
          .toList(),
      othersCanAddTasks: json['others_can_add_tasks'] as bool?,
      othersCanMarkTasksAsDone: json['others_can_mark_tasks_as_done'] as bool?,
    );

Map<String, dynamic> _$InputChecklistToJson(_InputChecklist instance) =>
    <String, dynamic>{
      'title': instance.title,
      if (instance.parseMode case final value?) 'parse_mode': value,
      if (instance.titleEntities case final value?) 'title_entities': value,
      'tasks': instance.tasks,
      if (instance.othersCanAddTasks case final value?)
        'others_can_add_tasks': value,
      if (instance.othersCanMarkTasksAsDone case final value?)
        'others_can_mark_tasks_as_done': value,
    };

const _$ParseModeEnumMap = {
  ParseMode.markdown: 'Markdown',
  ParseMode.html: 'HTML',
  ParseMode.markdownV2: 'MarkdownV2',
};
