// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/checklist_task.dart';
import 'package:televerse/src/telegram/models/message_entity.dart';

part 'checklist.freezed.dart';
part 'checklist.g.dart';

/// Describes a checklist.
@freezed
abstract class Checklist with _$Checklist {
  /// Creates a new [Checklist] object.
  const factory Checklist({
    /// Title of the checklist
    @JsonKey(name: 'title') required String title,

    /// Optional. Special entities that appear in the checklist title
    @JsonKey(name: 'title_entities') List<MessageEntity>? titleEntities,

    /// List of tasks in the checklist
    @JsonKey(name: 'tasks') required List<ChecklistTask> tasks,

    /// Optional. True, if users other than the creator of the list can add
    /// tasks to the list
    @JsonKey(name: 'others_can_add_tasks') bool? othersCanAddTasks,

    /// Optional. True, if users other than the creator of the list can mark
    /// tasks as done or not done
    @JsonKey(name: 'others_can_mark_tasks_as_done')
    bool? othersCanMarkTasksAsDone,
  }) = _Checklist;

  /// Creates a new [Checklist] object from a JSON [Map].
  factory Checklist.fromJson(Map<String, dynamic> json) =>
      _$ChecklistFromJson(json);
}
