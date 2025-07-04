// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_checklist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InputChecklist {
  /// Title of the checklist; 1-255 characters after entities parsing
  @JsonKey(name: 'title')
  String get title;

  /// Optional. Mode for parsing entities in the title. See formatting options for more details.
  @JsonKey(name: 'parse_mode')
  ParseMode? get parseMode;

  /// Optional. List of special entities that appear in the title, which can be specified instead of parse_mode.
  /// Currently, only bold, italic, underline, strikethrough, spoiler, and custom_emoji entities are allowed.
  @JsonKey(name: 'title_entities')
  List<MessageEntity>? get titleEntities;

  /// List of 1-30 tasks in the checklist
  @JsonKey(name: 'tasks')
  List<InputChecklistTask> get tasks;

  /// Optional. Pass True if other users can add tasks to the checklist
  @JsonKey(name: 'others_can_add_tasks')
  bool? get othersCanAddTasks;

  /// Optional. Pass True if other users can mark tasks as done or not done in the checklist
  @JsonKey(name: 'others_can_mark_tasks_as_done')
  bool? get othersCanMarkTasksAsDone;

  /// Create a copy of InputChecklist
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InputChecklistCopyWith<InputChecklist> get copyWith =>
      _$InputChecklistCopyWithImpl<InputChecklist>(
          this as InputChecklist, _$identity);

  /// Serializes this InputChecklist to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'InputChecklist(title: $title, parseMode: $parseMode, titleEntities: $titleEntities, tasks: $tasks, othersCanAddTasks: $othersCanAddTasks, othersCanMarkTasksAsDone: $othersCanMarkTasksAsDone)';
  }
}

/// @nodoc
abstract mixin class $InputChecklistCopyWith<$Res> {
  factory $InputChecklistCopyWith(
          InputChecklist value, $Res Function(InputChecklist) _then) =
      _$InputChecklistCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'parse_mode') ParseMode? parseMode,
      @JsonKey(name: 'title_entities') List<MessageEntity>? titleEntities,
      @JsonKey(name: 'tasks') List<InputChecklistTask> tasks,
      @JsonKey(name: 'others_can_add_tasks') bool? othersCanAddTasks,
      @JsonKey(name: 'others_can_mark_tasks_as_done')
      bool? othersCanMarkTasksAsDone});
}

/// @nodoc
class _$InputChecklistCopyWithImpl<$Res>
    implements $InputChecklistCopyWith<$Res> {
  _$InputChecklistCopyWithImpl(this._self, this._then);

  final InputChecklist _self;
  final $Res Function(InputChecklist) _then;

  /// Create a copy of InputChecklist
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? parseMode = freezed,
    Object? titleEntities = freezed,
    Object? tasks = null,
    Object? othersCanAddTasks = freezed,
    Object? othersCanMarkTasksAsDone = freezed,
  }) {
    return _then(_self.copyWith(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      parseMode: freezed == parseMode
          ? _self.parseMode
          : parseMode // ignore: cast_nullable_to_non_nullable
              as ParseMode?,
      titleEntities: freezed == titleEntities
          ? _self.titleEntities
          : titleEntities // ignore: cast_nullable_to_non_nullable
              as List<MessageEntity>?,
      tasks: null == tasks
          ? _self.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<InputChecklistTask>,
      othersCanAddTasks: freezed == othersCanAddTasks
          ? _self.othersCanAddTasks
          : othersCanAddTasks // ignore: cast_nullable_to_non_nullable
              as bool?,
      othersCanMarkTasksAsDone: freezed == othersCanMarkTasksAsDone
          ? _self.othersCanMarkTasksAsDone
          : othersCanMarkTasksAsDone // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _InputChecklist implements InputChecklist {
  const _InputChecklist(
      {@JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'parse_mode') this.parseMode,
      @JsonKey(name: 'title_entities') final List<MessageEntity>? titleEntities,
      @JsonKey(name: 'tasks') required final List<InputChecklistTask> tasks,
      @JsonKey(name: 'others_can_add_tasks') this.othersCanAddTasks,
      @JsonKey(name: 'others_can_mark_tasks_as_done')
      this.othersCanMarkTasksAsDone})
      : _titleEntities = titleEntities,
        _tasks = tasks;
  factory _InputChecklist.fromJson(Map<String, dynamic> json) =>
      _$InputChecklistFromJson(json);

  /// Title of the checklist; 1-255 characters after entities parsing
  @override
  @JsonKey(name: 'title')
  final String title;

  /// Optional. Mode for parsing entities in the title. See formatting options for more details.
  @override
  @JsonKey(name: 'parse_mode')
  final ParseMode? parseMode;

  /// Optional. List of special entities that appear in the title, which can be specified instead of parse_mode.
  /// Currently, only bold, italic, underline, strikethrough, spoiler, and custom_emoji entities are allowed.
  final List<MessageEntity>? _titleEntities;

  /// Optional. List of special entities that appear in the title, which can be specified instead of parse_mode.
  /// Currently, only bold, italic, underline, strikethrough, spoiler, and custom_emoji entities are allowed.
  @override
  @JsonKey(name: 'title_entities')
  List<MessageEntity>? get titleEntities {
    final value = _titleEntities;
    if (value == null) return null;
    if (_titleEntities is EqualUnmodifiableListView) return _titleEntities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// List of 1-30 tasks in the checklist
  final List<InputChecklistTask> _tasks;

  /// List of 1-30 tasks in the checklist
  @override
  @JsonKey(name: 'tasks')
  List<InputChecklistTask> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  /// Optional. Pass True if other users can add tasks to the checklist
  @override
  @JsonKey(name: 'others_can_add_tasks')
  final bool? othersCanAddTasks;

  /// Optional. Pass True if other users can mark tasks as done or not done in the checklist
  @override
  @JsonKey(name: 'others_can_mark_tasks_as_done')
  final bool? othersCanMarkTasksAsDone;

  /// Create a copy of InputChecklist
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InputChecklistCopyWith<_InputChecklist> get copyWith =>
      __$InputChecklistCopyWithImpl<_InputChecklist>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$InputChecklistToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'InputChecklist(title: $title, parseMode: $parseMode, titleEntities: $titleEntities, tasks: $tasks, othersCanAddTasks: $othersCanAddTasks, othersCanMarkTasksAsDone: $othersCanMarkTasksAsDone)';
  }
}

/// @nodoc
abstract mixin class _$InputChecklistCopyWith<$Res>
    implements $InputChecklistCopyWith<$Res> {
  factory _$InputChecklistCopyWith(
          _InputChecklist value, $Res Function(_InputChecklist) _then) =
      __$InputChecklistCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'parse_mode') ParseMode? parseMode,
      @JsonKey(name: 'title_entities') List<MessageEntity>? titleEntities,
      @JsonKey(name: 'tasks') List<InputChecklistTask> tasks,
      @JsonKey(name: 'others_can_add_tasks') bool? othersCanAddTasks,
      @JsonKey(name: 'others_can_mark_tasks_as_done')
      bool? othersCanMarkTasksAsDone});
}

/// @nodoc
class __$InputChecklistCopyWithImpl<$Res>
    implements _$InputChecklistCopyWith<$Res> {
  __$InputChecklistCopyWithImpl(this._self, this._then);

  final _InputChecklist _self;
  final $Res Function(_InputChecklist) _then;

  /// Create a copy of InputChecklist
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? title = null,
    Object? parseMode = freezed,
    Object? titleEntities = freezed,
    Object? tasks = null,
    Object? othersCanAddTasks = freezed,
    Object? othersCanMarkTasksAsDone = freezed,
  }) {
    return _then(_InputChecklist(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      parseMode: freezed == parseMode
          ? _self.parseMode
          : parseMode // ignore: cast_nullable_to_non_nullable
              as ParseMode?,
      titleEntities: freezed == titleEntities
          ? _self._titleEntities
          : titleEntities // ignore: cast_nullable_to_non_nullable
              as List<MessageEntity>?,
      tasks: null == tasks
          ? _self._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<InputChecklistTask>,
      othersCanAddTasks: freezed == othersCanAddTasks
          ? _self.othersCanAddTasks
          : othersCanAddTasks // ignore: cast_nullable_to_non_nullable
              as bool?,
      othersCanMarkTasksAsDone: freezed == othersCanMarkTasksAsDone
          ? _self.othersCanMarkTasksAsDone
          : othersCanMarkTasksAsDone // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}
