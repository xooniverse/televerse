// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
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

  /// Create a copy of ChecklistTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChecklistTaskCopyWith<ChecklistTask> get copyWith =>
      _$ChecklistTaskCopyWithImpl<ChecklistTask>(
          this as ChecklistTask, _$identity);

  /// Serializes this ChecklistTask to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'ChecklistTask(id: $id, text: $text, textEntities: $textEntities, completedByUser: $completedByUser, completionDate: $completionDate)';
  }
}

/// @nodoc
abstract mixin class $ChecklistTaskCopyWith<$Res> {
  factory $ChecklistTaskCopyWith(
          ChecklistTask value, $Res Function(ChecklistTask) _then) =
      _$ChecklistTaskCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'text') String text,
      @JsonKey(name: 'text_entities') List<MessageEntity>? textEntities,
      @JsonKey(name: 'completed_by_user') User? completedByUser,
      @JsonKey(name: 'completion_date') int? completionDate});

  $UserCopyWith<$Res>? get completedByUser;
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
  }) {
    return _then(_self.copyWith(
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
    ));
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
}

/// @nodoc
@JsonSerializable()
class _ChecklistTask implements ChecklistTask {
  const _ChecklistTask(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'text') required this.text,
      @JsonKey(name: 'text_entities') final List<MessageEntity>? textEntities,
      @JsonKey(name: 'completed_by_user') this.completedByUser,
      @JsonKey(name: 'completion_date') this.completionDate})
      : _textEntities = textEntities;
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

  /// Create a copy of ChecklistTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChecklistTaskCopyWith<_ChecklistTask> get copyWith =>
      __$ChecklistTaskCopyWithImpl<_ChecklistTask>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChecklistTaskToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'ChecklistTask(id: $id, text: $text, textEntities: $textEntities, completedByUser: $completedByUser, completionDate: $completionDate)';
  }
}

/// @nodoc
abstract mixin class _$ChecklistTaskCopyWith<$Res>
    implements $ChecklistTaskCopyWith<$Res> {
  factory _$ChecklistTaskCopyWith(
          _ChecklistTask value, $Res Function(_ChecklistTask) _then) =
      __$ChecklistTaskCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'text') String text,
      @JsonKey(name: 'text_entities') List<MessageEntity>? textEntities,
      @JsonKey(name: 'completed_by_user') User? completedByUser,
      @JsonKey(name: 'completion_date') int? completionDate});

  @override
  $UserCopyWith<$Res>? get completedByUser;
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
  }) {
    return _then(_ChecklistTask(
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
    ));
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
}
