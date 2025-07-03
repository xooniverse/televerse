// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_checklist_task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InputChecklistTask {
  /// Unique identifier of the task; must be positive and unique among all
  /// task identifiers currently present in the checklist
  @JsonKey(name: 'id')
  int get id;

  /// Text of the task; 1-100 characters after entities parsing
  @JsonKey(name: 'text')
  String get text;

  /// Optional. Mode for parsing entities in the text. See formatting options
  /// for more details.
  @JsonKey(name: 'parse_mode')
  ParseMode? get parseMode;

  /// Optional. List of special entities that appear in the text, which can be
  /// specified instead of parse_mode. Currently, only bold, italic,
  /// underline, strikethrough, spoiler, and custom_emoji entities are allowed.
  @JsonKey(name: 'text_entities')
  List<MessageEntity>? get textEntities;

  /// Create a copy of InputChecklistTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InputChecklistTaskCopyWith<InputChecklistTask> get copyWith =>
      _$InputChecklistTaskCopyWithImpl<InputChecklistTask>(
          this as InputChecklistTask, _$identity);

  /// Serializes this InputChecklistTask to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'InputChecklistTask(id: $id, text: $text, parseMode: $parseMode, textEntities: $textEntities)';
  }
}

/// @nodoc
abstract mixin class $InputChecklistTaskCopyWith<$Res> {
  factory $InputChecklistTaskCopyWith(
          InputChecklistTask value, $Res Function(InputChecklistTask) _then) =
      _$InputChecklistTaskCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'text') String text,
      @JsonKey(name: 'parse_mode') ParseMode? parseMode,
      @JsonKey(name: 'text_entities') List<MessageEntity>? textEntities});
}

/// @nodoc
class _$InputChecklistTaskCopyWithImpl<$Res>
    implements $InputChecklistTaskCopyWith<$Res> {
  _$InputChecklistTaskCopyWithImpl(this._self, this._then);

  final InputChecklistTask _self;
  final $Res Function(InputChecklistTask) _then;

  /// Create a copy of InputChecklistTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? parseMode = freezed,
    Object? textEntities = freezed,
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
      parseMode: freezed == parseMode
          ? _self.parseMode
          : parseMode // ignore: cast_nullable_to_non_nullable
              as ParseMode?,
      textEntities: freezed == textEntities
          ? _self.textEntities
          : textEntities // ignore: cast_nullable_to_non_nullable
              as List<MessageEntity>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _InputChecklistTask implements InputChecklistTask {
  const _InputChecklistTask(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'text') required this.text,
      @JsonKey(name: 'parse_mode') this.parseMode,
      @JsonKey(name: 'text_entities') final List<MessageEntity>? textEntities})
      : _textEntities = textEntities;
  factory _InputChecklistTask.fromJson(Map<String, dynamic> json) =>
      _$InputChecklistTaskFromJson(json);

  /// Unique identifier of the task; must be positive and unique among all
  /// task identifiers currently present in the checklist
  @override
  @JsonKey(name: 'id')
  final int id;

  /// Text of the task; 1-100 characters after entities parsing
  @override
  @JsonKey(name: 'text')
  final String text;

  /// Optional. Mode for parsing entities in the text. See formatting options
  /// for more details.
  @override
  @JsonKey(name: 'parse_mode')
  final ParseMode? parseMode;

  /// Optional. List of special entities that appear in the text, which can be
  /// specified instead of parse_mode. Currently, only bold, italic,
  /// underline, strikethrough, spoiler, and custom_emoji entities are allowed.
  final List<MessageEntity>? _textEntities;

  /// Optional. List of special entities that appear in the text, which can be
  /// specified instead of parse_mode. Currently, only bold, italic,
  /// underline, strikethrough, spoiler, and custom_emoji entities are allowed.
  @override
  @JsonKey(name: 'text_entities')
  List<MessageEntity>? get textEntities {
    final value = _textEntities;
    if (value == null) return null;
    if (_textEntities is EqualUnmodifiableListView) return _textEntities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of InputChecklistTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InputChecklistTaskCopyWith<_InputChecklistTask> get copyWith =>
      __$InputChecklistTaskCopyWithImpl<_InputChecklistTask>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$InputChecklistTaskToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'InputChecklistTask(id: $id, text: $text, parseMode: $parseMode, textEntities: $textEntities)';
  }
}

/// @nodoc
abstract mixin class _$InputChecklistTaskCopyWith<$Res>
    implements $InputChecklistTaskCopyWith<$Res> {
  factory _$InputChecklistTaskCopyWith(
          _InputChecklistTask value, $Res Function(_InputChecklistTask) _then) =
      __$InputChecklistTaskCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'text') String text,
      @JsonKey(name: 'parse_mode') ParseMode? parseMode,
      @JsonKey(name: 'text_entities') List<MessageEntity>? textEntities});
}

/// @nodoc
class __$InputChecklistTaskCopyWithImpl<$Res>
    implements _$InputChecklistTaskCopyWith<$Res> {
  __$InputChecklistTaskCopyWithImpl(this._self, this._then);

  final _InputChecklistTask _self;
  final $Res Function(_InputChecklistTask) _then;

  /// Create a copy of InputChecklistTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? parseMode = freezed,
    Object? textEntities = freezed,
  }) {
    return _then(_InputChecklistTask(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      parseMode: freezed == parseMode
          ? _self.parseMode
          : parseMode // ignore: cast_nullable_to_non_nullable
              as ParseMode?,
      textEntities: freezed == textEntities
          ? _self._textEntities
          : textEntities // ignore: cast_nullable_to_non_nullable
              as List<MessageEntity>?,
    ));
  }
}
