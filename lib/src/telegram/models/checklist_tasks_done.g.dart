// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checklist_tasks_done.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChecklistTasksDone _$ChecklistTasksDoneFromJson(Map<String, dynamic> json) =>
    _ChecklistTasksDone(
      checklistMessage: json['checklist_message'] == null
          ? null
          : Message.fromJson(json['checklist_message'] as Map<String, dynamic>),
      markedAsDoneTaskIds: (json['marked_as_done_task_ids'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      markedAsNotDoneTaskIds:
          (json['marked_as_not_done_task_ids'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList(),
    );

Map<String, dynamic> _$ChecklistTasksDoneToJson(_ChecklistTasksDone instance) =>
    <String, dynamic>{
      if (instance.checklistMessage case final value?)
        'checklist_message': value,
      if (instance.markedAsDoneTaskIds case final value?)
        'marked_as_done_task_ids': value,
      if (instance.markedAsNotDoneTaskIds case final value?)
        'marked_as_not_done_task_ids': value,
    };
