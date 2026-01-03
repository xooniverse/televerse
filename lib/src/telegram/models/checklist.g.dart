// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checklist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Checklist _$ChecklistFromJson(Map<String, dynamic> json) => _Checklist(
  title: json['title'] as String,
  titleEntities: (json['title_entities'] as List<dynamic>?)
      ?.map((e) => MessageEntity.fromJson(e as Map<String, dynamic>))
      .toList(),
  tasks: (json['tasks'] as List<dynamic>)
      .map((e) => ChecklistTask.fromJson(e as Map<String, dynamic>))
      .toList(),
  othersCanAddTasks: json['others_can_add_tasks'] as bool?,
  othersCanMarkTasksAsDone: json['others_can_mark_tasks_as_done'] as bool?,
);

Map<String, dynamic> _$ChecklistToJson(_Checklist instance) =>
    <String, dynamic>{
      'title': instance.title,
      'title_entities': ?instance.titleEntities,
      'tasks': instance.tasks,
      'others_can_add_tasks': ?instance.othersCanAddTasks,
      'others_can_mark_tasks_as_done': ?instance.othersCanMarkTasksAsDone,
    };
