// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checklist_task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChecklistTask {
  /// Unique identifier of the task
  @JsonKey(name: 'id')
  int get id;

  /// Text of the task
  @JsonKey(name: 'text')
  String get text;

  /// Optional. Special entities that appear in the task text
  @JsonKey(name: 'text_entities')
  List<MessageEntity>? get textEntities;

  /// Optional. User that completed the task; omitted if the task wasn't completed
  @JsonKey(name: 'completed_by_user')
  User? get completedByUser;

  /// Optional. Point in time (Unix timestamp) when the task was completed; 0 if the task wasn't completed
  @JsonKey(name: 'completion_date')
  int? get completionDate;

  /// Optional. Chat that completed the task; omitted if the task wasn't completed by a chat
  @JsonKey(name: 'completed_by_chat')
  Chat? get completedByChat;

  /// Create a copy of ChecklistTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChecklistTaskCopyWith<ChecklistTask> get copyWith =>
      _$ChecklistTaskCopyWithImpl<ChecklistTask>(
        this as ChecklistTask,
        _$identity,
      );

  /// Serializes this ChecklistTask to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'ChecklistTask(id: $id, text: $text, textEntities: $textEntities, completedByUser: $completedByUser, completionDate: $completionDate, completedByChat: $completedByChat)';
  }
}

/// @nodoc
abstract mixin class $ChecklistTaskCopyWith<$Res> {
  factory $ChecklistTaskCopyWith(
    ChecklistTask value,
    $Res Function(ChecklistTask) _then,
  ) = _$ChecklistTaskCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'text') String text,
    @JsonKey(name: 'text_entities') List<MessageEntity>? textEntities,
    @JsonKey(name: 'completed_by_user') User? completedByUser,
    @JsonKey(name: 'completion_date') int? completionDate,
    @JsonKey(name: 'completed_by_chat') Chat? completedByChat,
  });

  $UserCopyWith<$Res>? get completedByUser;
  $ChatCopyWith<$Res>? get completedByChat;
}

/// @nodoc
class _$ChecklistTaskCopyWithImpl<$Res>
    implements $ChecklistTaskCopyWith<$Res> {
  _$ChecklistTaskCopyWithImpl(this._self, this._then);

  final ChecklistTask _self;
  final $Res Function(ChecklistTask) _then;

  /// Create a copy of ChecklistTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? textEntities = freezed,
    Object? completedByUser = freezed,
    Object? completionDate = freezed,
    Object? completedByChat = freezed,
  }) {
    return _then(
      _self.copyWith(
        id: null == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        text: null == text
            ? _self.text
            : text // ignore: cast_nullable_to_non_nullable
                  as String,
        textEntities: freezed == textEntities
            ? _self.textEntities
            : textEntities // ignore: cast_nullable_to_non_nullable
                  as List<MessageEntity>?,
        completedByUser: freezed == completedByUser
            ? _self.completedByUser
            : completedByUser // ignore: cast_nullable_to_non_nullable
                  as User?,
        completionDate: freezed == completionDate
            ? _self.completionDate
            : completionDate // ignore: cast_nullable_to_non_nullable
                  as int?,
        completedByChat: freezed == completedByChat
            ? _self.completedByChat
            : completedByChat // ignore: cast_nullable_to_non_nullable
                  as Chat?,
      ),
    );
  }

  /// Create a copy of ChecklistTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get completedByUser {
    if (_self.completedByUser == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_self.completedByUser!, (value) {
      return _then(_self.copyWith(completedByUser: value));
    });
  }

  /// Create a copy of ChecklistTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatCopyWith<$Res>? get completedByChat {
    if (_self.completedByChat == null) {
      return null;
    }

    return $ChatCopyWith<$Res>(_self.completedByChat!, (value) {
      return _then(_self.copyWith(completedByChat: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ChecklistTask].
extension ChecklistTaskPatterns on ChecklistTask {
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
    TResult Function(_ChecklistTask value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChecklistTask() when $default != null:
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
    TResult Function(_ChecklistTask value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChecklistTask():
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
    TResult? Function(_ChecklistTask value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChecklistTask() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ChecklistTask implements ChecklistTask {
  const _ChecklistTask({
    @JsonKey(name: 'id') required this.id,
    @JsonKey(name: 'text') required this.text,
    @JsonKey(name: 'text_entities') final List<MessageEntity>? textEntities,
    @JsonKey(name: 'completed_by_user') this.completedByUser,
    @JsonKey(name: 'completion_date') this.completionDate,
    @JsonKey(name: 'completed_by_chat') this.completedByChat,
  }) : _textEntities = textEntities;
  factory _ChecklistTask.fromJson(Map<String, dynamic> json) =>
      _$ChecklistTaskFromJson(json);

  /// Unique identifier of the task
  @override
  @JsonKey(name: 'id')
  final int id;

  /// Text of the task
  @override
  @JsonKey(name: 'text')
  final String text;

  /// Optional. Special entities that appear in the task text
  final List<MessageEntity>? _textEntities;

  /// Optional. Special entities that appear in the task text
  @override
  @JsonKey(name: 'text_entities')
  List<MessageEntity>? get textEntities {
    final value = _textEntities;
    if (value == null) return null;
    if (_textEntities is EqualUnmodifiableListView) return _textEntities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Optional. User that completed the task; omitted if the task wasn't completed
  @override
  @JsonKey(name: 'completed_by_user')
  final User? completedByUser;

  /// Optional. Point in time (Unix timestamp) when the task was completed; 0 if the task wasn't completed
  @override
  @JsonKey(name: 'completion_date')
  final int? completionDate;

  /// Optional. Chat that completed the task; omitted if the task wasn't completed by a chat
  @override
  @JsonKey(name: 'completed_by_chat')
  final Chat? completedByChat;

  /// Create a copy of ChecklistTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChecklistTaskCopyWith<_ChecklistTask> get copyWith =>
      __$ChecklistTaskCopyWithImpl<_ChecklistTask>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChecklistTaskToJson(this);
  }

  @override
  String toString() {
    return 'ChecklistTask(id: $id, text: $text, textEntities: $textEntities, completedByUser: $completedByUser, completionDate: $completionDate, completedByChat: $completedByChat)';
  }
}

/// @nodoc
abstract mixin class _$ChecklistTaskCopyWith<$Res>
    implements $ChecklistTaskCopyWith<$Res> {
  factory _$ChecklistTaskCopyWith(
    _ChecklistTask value,
    $Res Function(_ChecklistTask) _then,
  ) = __$ChecklistTaskCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'text') String text,
    @JsonKey(name: 'text_entities') List<MessageEntity>? textEntities,
    @JsonKey(name: 'completed_by_user') User? completedByUser,
    @JsonKey(name: 'completion_date') int? completionDate,
    @JsonKey(name: 'completed_by_chat') Chat? completedByChat,
  });

  @override
  $UserCopyWith<$Res>? get completedByUser;
  @override
  $ChatCopyWith<$Res>? get completedByChat;
}

/// @nodoc
class __$ChecklistTaskCopyWithImpl<$Res>
    implements _$ChecklistTaskCopyWith<$Res> {
  __$ChecklistTaskCopyWithImpl(this._self, this._then);

  final _ChecklistTask _self;
  final $Res Function(_ChecklistTask) _then;

  /// Create a copy of ChecklistTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? textEntities = freezed,
    Object? completedByUser = freezed,
    Object? completionDate = freezed,
    Object? completedByChat = freezed,
  }) {
    return _then(
      _ChecklistTask(
        id: null == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        text: null == text
            ? _self.text
            : text // ignore: cast_nullable_to_non_nullable
                  as String,
        textEntities: freezed == textEntities
            ? _self._textEntities
            : textEntities // ignore: cast_nullable_to_non_nullable
                  as List<MessageEntity>?,
        completedByUser: freezed == completedByUser
            ? _self.completedByUser
            : completedByUser // ignore: cast_nullable_to_non_nullable
                  as User?,
        completionDate: freezed == completionDate
            ? _self.completionDate
            : completionDate // ignore: cast_nullable_to_non_nullable
                  as int?,
        completedByChat: freezed == completedByChat
            ? _self.completedByChat
            : completedByChat // ignore: cast_nullable_to_non_nullable
                  as Chat?,
      ),
    );
  }

  /// Create a copy of ChecklistTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get completedByUser {
    if (_self.completedByUser == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_self.completedByUser!, (value) {
      return _then(_self.copyWith(completedByUser: value));
    });
  }

  /// Create a copy of ChecklistTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatCopyWith<$Res>? get completedByChat {
    if (_self.completedByChat == null) {
      return null;
    }

    return $ChatCopyWith<$Res>(_self.completedByChat!, (value) {
      return _then(_self.copyWith(completedByChat: value));
    });
  }
}
