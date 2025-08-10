// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/message.dart';
import 'package:televerse/src/telegram/models/checklist_task.dart';

part 'checklist_tasks_added.freezed.dart';
part 'checklist_tasks_added.g.dart';

/// Describes a service message about tasks added to a checklist.
@freezed
abstract class ChecklistTasksAdded with _$ChecklistTasksAdded {
  /// Creates a new [ChecklistTasksAdded] object.
  const factory ChecklistTasksAdded({
    /// Optional. Message containing the checklist to which the tasks were added.
    /// Note that the Message object in this field will not contain the
    /// reply_to_message field even if it itself is a reply.
    @JsonKey(name: 'checklist_message') Message? checklistMessage,

    /// List of tasks added to the checklist
    @JsonKey(name: 'tasks') required List<ChecklistTask> tasks,
  }) = _ChecklistTasksAdded;

  /// Creates a new [ChecklistTasksAdded] object from a JSON [Map].
  factory ChecklistTasksAdded.fromJson(Map<String, dynamic> json) =>
      _$ChecklistTasksAddedFromJson(json);
}
