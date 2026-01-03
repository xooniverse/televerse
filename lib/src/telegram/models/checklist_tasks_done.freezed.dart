// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checklist_tasks_done.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChecklistTasksDone {
  /// Optional. Message containing the checklist whose tasks were marked as
  /// done or not done. Note that the Message object in this field will not
  /// contain the reply_to_message field even if it itself is a reply.
  @JsonKey(name: 'checklist_message')
  Message? get checklistMessage;

  /// Optional. Identifiers of the tasks that were marked as done
  @JsonKey(name: 'marked_as_done_task_ids')
  List<int>? get markedAsDoneTaskIds;

  /// Optional. Identifiers of the tasks that were marked as not done
  @JsonKey(name: 'marked_as_not_done_task_ids')
  List<int>? get markedAsNotDoneTaskIds;

  /// Create a copy of ChecklistTasksDone
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChecklistTasksDoneCopyWith<ChecklistTasksDone> get copyWith =>
      _$ChecklistTasksDoneCopyWithImpl<ChecklistTasksDone>(
        this as ChecklistTasksDone,
        _$identity,
      );

  /// Serializes this ChecklistTasksDone to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'ChecklistTasksDone(checklistMessage: $checklistMessage, markedAsDoneTaskIds: $markedAsDoneTaskIds, markedAsNotDoneTaskIds: $markedAsNotDoneTaskIds)';
  }
}

/// @nodoc
abstract mixin class $ChecklistTasksDoneCopyWith<$Res> {
  factory $ChecklistTasksDoneCopyWith(
    ChecklistTasksDone value,
    $Res Function(ChecklistTasksDone) _then,
  ) = _$ChecklistTasksDoneCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'checklist_message') Message? checklistMessage,
    @JsonKey(name: 'marked_as_done_task_ids') List<int>? markedAsDoneTaskIds,
    @JsonKey(name: 'marked_as_not_done_task_ids')
    List<int>? markedAsNotDoneTaskIds,
  });
}

/// @nodoc
class _$ChecklistTasksDoneCopyWithImpl<$Res>
    implements $ChecklistTasksDoneCopyWith<$Res> {
  _$ChecklistTasksDoneCopyWithImpl(this._self, this._then);

  final ChecklistTasksDone _self;
  final $Res Function(ChecklistTasksDone) _then;

  /// Create a copy of ChecklistTasksDone
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checklistMessage = freezed,
    Object? markedAsDoneTaskIds = freezed,
    Object? markedAsNotDoneTaskIds = freezed,
  }) {
    return _then(
      _self.copyWith(
        checklistMessage: freezed == checklistMessage
            ? _self.checklistMessage
            : checklistMessage // ignore: cast_nullable_to_non_nullable
                  as Message?,
        markedAsDoneTaskIds: freezed == markedAsDoneTaskIds
            ? _self.markedAsDoneTaskIds
            : markedAsDoneTaskIds // ignore: cast_nullable_to_non_nullable
                  as List<int>?,
        markedAsNotDoneTaskIds: freezed == markedAsNotDoneTaskIds
            ? _self.markedAsNotDoneTaskIds
            : markedAsNotDoneTaskIds // ignore: cast_nullable_to_non_nullable
                  as List<int>?,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [ChecklistTasksDone].
extension ChecklistTasksDonePatterns on ChecklistTasksDone {
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
    TResult Function(_ChecklistTasksDone value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChecklistTasksDone() when $default != null:
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
    TResult Function(_ChecklistTasksDone value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChecklistTasksDone():
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
    TResult? Function(_ChecklistTasksDone value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChecklistTasksDone() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ChecklistTasksDone implements ChecklistTasksDone {
  const _ChecklistTasksDone({
    @JsonKey(name: 'checklist_message') this.checklistMessage,
    @JsonKey(name: 'marked_as_done_task_ids')
    final List<int>? markedAsDoneTaskIds,
    @JsonKey(name: 'marked_as_not_done_task_ids')
    final List<int>? markedAsNotDoneTaskIds,
  }) : _markedAsDoneTaskIds = markedAsDoneTaskIds,
       _markedAsNotDoneTaskIds = markedAsNotDoneTaskIds;
  factory _ChecklistTasksDone.fromJson(Map<String, dynamic> json) =>
      _$ChecklistTasksDoneFromJson(json);

  /// Optional. Message containing the checklist whose tasks were marked as
  /// done or not done. Note that the Message object in this field will not
  /// contain the reply_to_message field even if it itself is a reply.
  @override
  @JsonKey(name: 'checklist_message')
  final Message? checklistMessage;

  /// Optional. Identifiers of the tasks that were marked as done
  final List<int>? _markedAsDoneTaskIds;

  /// Optional. Identifiers of the tasks that were marked as done
  @override
  @JsonKey(name: 'marked_as_done_task_ids')
  List<int>? get markedAsDoneTaskIds {
    final value = _markedAsDoneTaskIds;
    if (value == null) return null;
    if (_markedAsDoneTaskIds is EqualUnmodifiableListView)
      return _markedAsDoneTaskIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Optional. Identifiers of the tasks that were marked as not done
  final List<int>? _markedAsNotDoneTaskIds;

  /// Optional. Identifiers of the tasks that were marked as not done
  @override
  @JsonKey(name: 'marked_as_not_done_task_ids')
  List<int>? get markedAsNotDoneTaskIds {
    final value = _markedAsNotDoneTaskIds;
    if (value == null) return null;
    if (_markedAsNotDoneTaskIds is EqualUnmodifiableListView)
      return _markedAsNotDoneTaskIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of ChecklistTasksDone
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChecklistTasksDoneCopyWith<_ChecklistTasksDone> get copyWith =>
      __$ChecklistTasksDoneCopyWithImpl<_ChecklistTasksDone>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChecklistTasksDoneToJson(this);
  }

  @override
  String toString() {
    return 'ChecklistTasksDone(checklistMessage: $checklistMessage, markedAsDoneTaskIds: $markedAsDoneTaskIds, markedAsNotDoneTaskIds: $markedAsNotDoneTaskIds)';
  }
}

/// @nodoc
abstract mixin class _$ChecklistTasksDoneCopyWith<$Res>
    implements $ChecklistTasksDoneCopyWith<$Res> {
  factory _$ChecklistTasksDoneCopyWith(
    _ChecklistTasksDone value,
    $Res Function(_ChecklistTasksDone) _then,
  ) = __$ChecklistTasksDoneCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'checklist_message') Message? checklistMessage,
    @JsonKey(name: 'marked_as_done_task_ids') List<int>? markedAsDoneTaskIds,
    @JsonKey(name: 'marked_as_not_done_task_ids')
    List<int>? markedAsNotDoneTaskIds,
  });
}

/// @nodoc
class __$ChecklistTasksDoneCopyWithImpl<$Res>
    implements _$ChecklistTasksDoneCopyWith<$Res> {
  __$ChecklistTasksDoneCopyWithImpl(this._self, this._then);

  final _ChecklistTasksDone _self;
  final $Res Function(_ChecklistTasksDone) _then;

  /// Create a copy of ChecklistTasksDone
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? checklistMessage = freezed,
    Object? markedAsDoneTaskIds = freezed,
    Object? markedAsNotDoneTaskIds = freezed,
  }) {
    return _then(
      _ChecklistTasksDone(
        checklistMessage: freezed == checklistMessage
            ? _self.checklistMessage
            : checklistMessage // ignore: cast_nullable_to_non_nullable
                  as Message?,
        markedAsDoneTaskIds: freezed == markedAsDoneTaskIds
            ? _self._markedAsDoneTaskIds
            : markedAsDoneTaskIds // ignore: cast_nullable_to_non_nullable
                  as List<int>?,
        markedAsNotDoneTaskIds: freezed == markedAsNotDoneTaskIds
            ? _self._markedAsNotDoneTaskIds
            : markedAsNotDoneTaskIds // ignore: cast_nullable_to_non_nullable
                  as List<int>?,
      ),
    );
  }
}
