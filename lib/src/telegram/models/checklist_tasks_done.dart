// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/message.dart';

part 'checklist_tasks_done.freezed.dart';
part 'checklist_tasks_done.g.dart';

/// Describes a service message about checklist tasks marked as done or not done.
@freezed
abstract class ChecklistTasksDone with _$ChecklistTasksDone {
  /// Creates a new [ChecklistTasksDone] object.
  const factory ChecklistTasksDone({
    /// Optional. Message containing the checklist whose tasks were marked as
    /// done or not done. Note that the Message object in this field will not
    /// contain the reply_to_message field even if it itself is a reply.
    @JsonKey(name: 'checklist_message') Message? checklistMessage,

    /// Optional. Identifiers of the tasks that were marked as done
    @JsonKey(name: 'marked_as_done_task_ids') List<int>? markedAsDoneTaskIds,

    /// Optional. Identifiers of the tasks that were marked as not done
    @JsonKey(name: 'marked_as_not_done_task_ids')
    List<int>? markedAsNotDoneTaskIds,
  }) = _ChecklistTasksDone;

  /// Creates a new [ChecklistTasksDone] object from a JSON [Map].
  factory ChecklistTasksDone.fromJson(Map<String, dynamic> json) =>
      _$ChecklistTasksDoneFromJson(json);
}
