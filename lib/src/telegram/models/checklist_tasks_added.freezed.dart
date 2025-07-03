// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checklist_tasks_added.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChecklistTasksAdded {
  /// Optional. Message containing the checklist to which the tasks were added.
  /// Note that the Message object in this field will not contain the
  /// reply_to_message field even if it itself is a reply.
  @JsonKey(name: 'checklist_message')
  Message? get checklistMessage;

  /// List of tasks added to the checklist
  @JsonKey(name: 'tasks')
  List<ChecklistTask> get tasks;

  /// Create a copy of ChecklistTasksAdded
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChecklistTasksAddedCopyWith<ChecklistTasksAdded> get copyWith =>
      _$ChecklistTasksAddedCopyWithImpl<ChecklistTasksAdded>(
          this as ChecklistTasksAdded, _$identity);

  /// Serializes this ChecklistTasksAdded to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'ChecklistTasksAdded(checklistMessage: $checklistMessage, tasks: $tasks)';
  }
}

/// @nodoc
abstract mixin class $ChecklistTasksAddedCopyWith<$Res> {
  factory $ChecklistTasksAddedCopyWith(
          ChecklistTasksAdded value, $Res Function(ChecklistTasksAdded) _then) =
      _$ChecklistTasksAddedCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'checklist_message') Message? checklistMessage,
      @JsonKey(name: 'tasks') List<ChecklistTask> tasks});
}

/// @nodoc
class _$ChecklistTasksAddedCopyWithImpl<$Res>
    implements $ChecklistTasksAddedCopyWith<$Res> {
  _$ChecklistTasksAddedCopyWithImpl(this._self, this._then);

  final ChecklistTasksAdded _self;
  final $Res Function(ChecklistTasksAdded) _then;

  /// Create a copy of ChecklistTasksAdded
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checklistMessage = freezed,
    Object? tasks = null,
  }) {
    return _then(_self.copyWith(
      checklistMessage: freezed == checklistMessage
          ? _self.checklistMessage
          : checklistMessage // ignore: cast_nullable_to_non_nullable
              as Message?,
      tasks: null == tasks
          ? _self.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<ChecklistTask>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ChecklistTasksAdded implements ChecklistTasksAdded {
  const _ChecklistTasksAdded(
      {@JsonKey(name: 'checklist_message') this.checklistMessage,
      @JsonKey(name: 'tasks') required final List<ChecklistTask> tasks})
      : _tasks = tasks;
  factory _ChecklistTasksAdded.fromJson(Map<String, dynamic> json) =>
      _$ChecklistTasksAddedFromJson(json);

  /// Optional. Message containing the checklist to which the tasks were added.
  /// Note that the Message object in this field will not contain the
  /// reply_to_message field even if it itself is a reply.
  @override
  @JsonKey(name: 'checklist_message')
  final Message? checklistMessage;

  /// List of tasks added to the checklist
  final List<ChecklistTask> _tasks;

  /// List of tasks added to the checklist
  @override
  @JsonKey(name: 'tasks')
  List<ChecklistTask> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  /// Create a copy of ChecklistTasksAdded
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChecklistTasksAddedCopyWith<_ChecklistTasksAdded> get copyWith =>
      __$ChecklistTasksAddedCopyWithImpl<_ChecklistTasksAdded>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChecklistTasksAddedToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'ChecklistTasksAdded(checklistMessage: $checklistMessage, tasks: $tasks)';
  }
}

/// @nodoc
abstract mixin class _$ChecklistTasksAddedCopyWith<$Res>
    implements $ChecklistTasksAddedCopyWith<$Res> {
  factory _$ChecklistTasksAddedCopyWith(_ChecklistTasksAdded value,
          $Res Function(_ChecklistTasksAdded) _then) =
      __$ChecklistTasksAddedCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'checklist_message') Message? checklistMessage,
      @JsonKey(name: 'tasks') List<ChecklistTask> tasks});
}

/// @nodoc
class __$ChecklistTasksAddedCopyWithImpl<$Res>
    implements _$ChecklistTasksAddedCopyWith<$Res> {
  __$ChecklistTasksAddedCopyWithImpl(this._self, this._then);

  final _ChecklistTasksAdded _self;
  final $Res Function(_ChecklistTasksAdded) _then;

  /// Create a copy of ChecklistTasksAdded
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? checklistMessage = freezed,
    Object? tasks = null,
  }) {
    return _then(_ChecklistTasksAdded(
      checklistMessage: freezed == checklistMessage
          ? _self.checklistMessage
          : checklistMessage // ignore: cast_nullable_to_non_nullable
              as Message?,
      tasks: null == tasks
          ? _self._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<ChecklistTask>,
    ));
  }
}
