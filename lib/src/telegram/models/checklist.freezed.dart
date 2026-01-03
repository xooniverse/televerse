// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checklist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Checklist {
  /// Title of the checklist
  @JsonKey(name: 'title')
  String get title;

  /// Optional. Special entities that appear in the checklist title
  @JsonKey(name: 'title_entities')
  List<MessageEntity>? get titleEntities;

  /// List of tasks in the checklist
  @JsonKey(name: 'tasks')
  List<ChecklistTask> get tasks;

  /// Optional. True, if users other than the creator of the list can add
  /// tasks to the list
  @JsonKey(name: 'others_can_add_tasks')
  bool? get othersCanAddTasks;

  /// Optional. True, if users other than the creator of the list can mark
  /// tasks as done or not done
  @JsonKey(name: 'others_can_mark_tasks_as_done')
  bool? get othersCanMarkTasksAsDone;

  /// Create a copy of Checklist
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChecklistCopyWith<Checklist> get copyWith =>
      _$ChecklistCopyWithImpl<Checklist>(this as Checklist, _$identity);

  /// Serializes this Checklist to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'Checklist(title: $title, titleEntities: $titleEntities, tasks: $tasks, othersCanAddTasks: $othersCanAddTasks, othersCanMarkTasksAsDone: $othersCanMarkTasksAsDone)';
  }
}

/// @nodoc
abstract mixin class $ChecklistCopyWith<$Res> {
  factory $ChecklistCopyWith(Checklist value, $Res Function(Checklist) _then) =
      _$ChecklistCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'title') String title,
    @JsonKey(name: 'title_entities') List<MessageEntity>? titleEntities,
    @JsonKey(name: 'tasks') List<ChecklistTask> tasks,
    @JsonKey(name: 'others_can_add_tasks') bool? othersCanAddTasks,
    @JsonKey(name: 'others_can_mark_tasks_as_done')
    bool? othersCanMarkTasksAsDone,
  });
}

/// @nodoc
class _$ChecklistCopyWithImpl<$Res> implements $ChecklistCopyWith<$Res> {
  _$ChecklistCopyWithImpl(this._self, this._then);

  final Checklist _self;
  final $Res Function(Checklist) _then;

  /// Create a copy of Checklist
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? titleEntities = freezed,
    Object? tasks = null,
    Object? othersCanAddTasks = freezed,
    Object? othersCanMarkTasksAsDone = freezed,
  }) {
    return _then(
      _self.copyWith(
        title: null == title
            ? _self.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        titleEntities: freezed == titleEntities
            ? _self.titleEntities
            : titleEntities // ignore: cast_nullable_to_non_nullable
                  as List<MessageEntity>?,
        tasks: null == tasks
            ? _self.tasks
            : tasks // ignore: cast_nullable_to_non_nullable
                  as List<ChecklistTask>,
        othersCanAddTasks: freezed == othersCanAddTasks
            ? _self.othersCanAddTasks
            : othersCanAddTasks // ignore: cast_nullable_to_non_nullable
                  as bool?,
        othersCanMarkTasksAsDone: freezed == othersCanMarkTasksAsDone
            ? _self.othersCanMarkTasksAsDone
            : othersCanMarkTasksAsDone // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [Checklist].
extension ChecklistPatterns on Checklist {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Checklist value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Checklist() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Checklist value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Checklist():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Checklist value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Checklist() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Checklist implements Checklist {
  const _Checklist({
    @JsonKey(name: 'title') required this.title,
    @JsonKey(name: 'title_entities') final List<MessageEntity>? titleEntities,
    @JsonKey(name: 'tasks') required final List<ChecklistTask> tasks,
    @JsonKey(name: 'others_can_add_tasks') this.othersCanAddTasks,
    @JsonKey(name: 'others_can_mark_tasks_as_done')
    this.othersCanMarkTasksAsDone,
  }) : _titleEntities = titleEntities,
       _tasks = tasks;
  factory _Checklist.fromJson(Map<String, dynamic> json) =>
      _$ChecklistFromJson(json);

  /// Title of the checklist
  @override
  @JsonKey(name: 'title')
  final String title;

  /// Optional. Special entities that appear in the checklist title
  final List<MessageEntity>? _titleEntities;

  /// Optional. Special entities that appear in the checklist title
  @override
  @JsonKey(name: 'title_entities')
  List<MessageEntity>? get titleEntities {
    final value = _titleEntities;
    if (value == null) return null;
    if (_titleEntities is EqualUnmodifiableListView) return _titleEntities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// List of tasks in the checklist
  final List<ChecklistTask> _tasks;

  /// List of tasks in the checklist
  @override
  @JsonKey(name: 'tasks')
  List<ChecklistTask> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  /// Optional. True, if users other than the creator of the list can add
  /// tasks to the list
  @override
  @JsonKey(name: 'others_can_add_tasks')
  final bool? othersCanAddTasks;

  /// Optional. True, if users other than the creator of the list can mark
  /// tasks as done or not done
  @override
  @JsonKey(name: 'others_can_mark_tasks_as_done')
  final bool? othersCanMarkTasksAsDone;

  /// Create a copy of Checklist
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChecklistCopyWith<_Checklist> get copyWith =>
      __$ChecklistCopyWithImpl<_Checklist>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChecklistToJson(this);
  }

  @override
  String toString() {
    return 'Checklist(title: $title, titleEntities: $titleEntities, tasks: $tasks, othersCanAddTasks: $othersCanAddTasks, othersCanMarkTasksAsDone: $othersCanMarkTasksAsDone)';
  }
}

/// @nodoc
abstract mixin class _$ChecklistCopyWith<$Res>
    implements $ChecklistCopyWith<$Res> {
  factory _$ChecklistCopyWith(
    _Checklist value,
    $Res Function(_Checklist) _then,
  ) = __$ChecklistCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'title') String title,
    @JsonKey(name: 'title_entities') List<MessageEntity>? titleEntities,
    @JsonKey(name: 'tasks') List<ChecklistTask> tasks,
    @JsonKey(name: 'others_can_add_tasks') bool? othersCanAddTasks,
    @JsonKey(name: 'others_can_mark_tasks_as_done')
    bool? othersCanMarkTasksAsDone,
  });
}

/// @nodoc
class __$ChecklistCopyWithImpl<$Res> implements _$ChecklistCopyWith<$Res> {
  __$ChecklistCopyWithImpl(this._self, this._then);

  final _Checklist _self;
  final $Res Function(_Checklist) _then;

  /// Create a copy of Checklist
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? title = null,
    Object? titleEntities = freezed,
    Object? tasks = null,
    Object? othersCanAddTasks = freezed,
    Object? othersCanMarkTasksAsDone = freezed,
  }) {
    return _then(
      _Checklist(
        title: null == title
            ? _self.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        titleEntities: freezed == titleEntities
            ? _self._titleEntities
            : titleEntities // ignore: cast_nullable_to_non_nullable
                  as List<MessageEntity>?,
        tasks: null == tasks
            ? _self._tasks
            : tasks // ignore: cast_nullable_to_non_nullable
                  as List<ChecklistTask>,
        othersCanAddTasks: freezed == othersCanAddTasks
            ? _self.othersCanAddTasks
            : othersCanAddTasks // ignore: cast_nullable_to_non_nullable
                  as bool?,
        othersCanMarkTasksAsDone: freezed == othersCanMarkTasksAsDone
            ? _self.othersCanMarkTasksAsDone
            : othersCanMarkTasksAsDone // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}
