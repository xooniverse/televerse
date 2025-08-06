// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/message_entity.dart';
import 'package:televerse/src/telegram/models/user.dart';

part 'checklist_task.freezed.dart';
part 'checklist_task.g.dart';

/// Describes a task in a checklist.
@freezed
abstract class ChecklistTask with _$ChecklistTask {
  /// Creates a new [ChecklistTask] object.
  const factory ChecklistTask({
    /// Unique identifier of the task
    @JsonKey(name: 'id') required int id,

    /// Text of the task
    @JsonKey(name: 'text') required String text,

    /// Optional. Special entities that appear in the task text
    @JsonKey(name: 'text_entities') List<MessageEntity>? textEntities,

    /// Optional. User that completed the task; omitted if the task wasn't completed
    @JsonKey(name: 'completed_by_user') User? completedByUser,

    /// Optional. Point in time (Unix timestamp) when the task was completed; 0 if the task wasn't completed
    @JsonKey(name: 'completion_date') int? completionDate,
  }) = _ChecklistTask;

  /// Creates a new [ChecklistTask] object from a JSON [Map].
  factory ChecklistTask.fromJson(Map<String, dynamic> json) =>
      _$ChecklistTaskFromJson(json);
}

/// Extension for ChecklistTask to add convenient getters
extension ChecklistTaskExt on ChecklistTask {
  /// Returns true if the task is completed
  bool get isCompleted => completedByUser != null;

  /// Returns the completion date as a [DateTime] object if the task is completed
  DateTime? get completionDateTime {
    if (completionDate == null || completionDate == 0) return null;
    return DateTime.fromMillisecondsSinceEpoch(completionDate! * 1000);
  }
}
