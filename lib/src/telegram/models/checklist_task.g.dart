// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checklist_task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChecklistTask _$ChecklistTaskFromJson(Map<String, dynamic> json) =>
    _ChecklistTask(
      id: (json['id'] as num).toInt(),
      text: json['text'] as String,
      textEntities: (json['text_entities'] as List<dynamic>?)
          ?.map((e) => MessageEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      completedByUser: json['completed_by_user'] == null
          ? null
          : User.fromJson(json['completed_by_user'] as Map<String, dynamic>),
      completionDate: (json['completion_date'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ChecklistTaskToJson(_ChecklistTask instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'text_entities': ?instance.textEntities,
      'completed_by_user': ?instance.completedByUser,
      'completion_date': ?instance.completionDate,
    };
