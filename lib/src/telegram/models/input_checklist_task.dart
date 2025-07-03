// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/message_entity.dart';
import 'package:televerse/src/types/parse_mode.dart';

part 'input_checklist_task.freezed.dart';
part 'input_checklist_task.g.dart';

/// Describes a task to add to a checklist.
@freezed
abstract class InputChecklistTask with _$InputChecklistTask {
  /// Creates a new [InputChecklistTask] object.
  const factory InputChecklistTask({
    /// Unique identifier of the task; must be positive and unique among all
    /// task identifiers currently present in the checklist
    @JsonKey(name: 'id') required int id,

    /// Text of the task; 1-100 characters after entities parsing
    @JsonKey(name: 'text') required String text,

    /// Optional. Mode for parsing entities in the text. See formatting options
    /// for more details.
    @JsonKey(name: 'parse_mode') ParseMode? parseMode,

    /// Optional. List of special entities that appear in the text, which can be
    /// specified instead of parse_mode. Currently, only bold, italic,
    /// underline, strikethrough, spoiler, and custom_emoji entities are allowed.
    @JsonKey(name: 'text_entities') List<MessageEntity>? textEntities,
  }) = _InputChecklistTask;

  /// Creates a new [InputChecklistTask] object from a JSON [Map].
  factory InputChecklistTask.fromJson(Map<String, dynamic> json) =>
      _$InputChecklistTaskFromJson(json);
}
