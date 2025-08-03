// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/telegram.dart';

part 'input_checklist.freezed.dart';
part 'input_checklist.g.dart';

/// Describes a checklist to create.
@freezed
abstract class InputChecklist with _$InputChecklist {
  /// Creates a new [InputChecklist] object.
  const factory InputChecklist({
    /// Title of the checklist; 1-255 characters after entities parsing
    @JsonKey(name: 'title') required String title,

    /// Optional. Mode for parsing entities in the title. See formatting options for more details.
    @JsonKey(name: 'parse_mode') ParseMode? parseMode,

    /// Optional. List of special entities that appear in the title, which can be specified instead of parse_mode.
    /// Currently, only bold, italic, underline, strikethrough, spoiler, and custom_emoji entities are allowed.
    @JsonKey(name: 'title_entities') List<MessageEntity>? titleEntities,

    /// List of 1-30 tasks in the checklist
    @JsonKey(name: 'tasks') required List<InputChecklistTask> tasks,

    /// Optional. Pass True if other users can add tasks to the checklist
    @JsonKey(name: 'others_can_add_tasks') bool? othersCanAddTasks,

    /// Optional. Pass True if other users can mark tasks as done or not done in the checklist
    @JsonKey(name: 'others_can_mark_tasks_as_done')
    bool? othersCanMarkTasksAsDone,
  }) = _InputChecklist;

  /// Creates a new [InputChecklist] object from a JSON [Map].
  factory InputChecklist.fromJson(Map<String, dynamic> json) =>
      _$InputChecklistFromJson(json);
}
