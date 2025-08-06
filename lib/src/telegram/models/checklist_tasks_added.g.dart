// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checklist_tasks_added.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChecklistTasksAdded _$ChecklistTasksAddedFromJson(Map<String, dynamic> json) =>
    _ChecklistTasksAdded(
      checklistMessage: json['checklist_message'] == null
          ? null
          : Message.fromJson(json['checklist_message'] as Map<String, dynamic>),
      tasks: (json['tasks'] as List<dynamic>)
          .map((e) => ChecklistTask.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ChecklistTasksAddedToJson(
        _ChecklistTasksAdded instance) =>
    <String, dynamic>{
      if (instance.checklistMessage case final value?)
        'checklist_message': value,
      'tasks': instance.tasks,
    };
