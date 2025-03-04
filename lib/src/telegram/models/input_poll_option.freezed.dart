// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_poll_option.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InputPollOption _$InputPollOptionFromJson(Map<String, dynamic> json) {
  return _InputPollOption.fromJson(json);
}

/// @nodoc
mixin _$InputPollOption {
  /// Option text, 1-100 characters.
  @JsonKey(name: 'text')
  String get text => throw _privateConstructorUsedError;

  /// Optional. Mode for parsing entities in the text.
  @JsonKey(name: 'text_parse_mode')
  ParseMode? get textParseMode => throw _privateConstructorUsedError;

  /// Optional. A list of special entities that appear in the poll option text.
  @JsonKey(name: 'text_entities')
  List<MessageEntity>? get textEntities => throw _privateConstructorUsedError;

  /// Serializes this InputPollOption to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InputPollOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InputPollOptionCopyWith<InputPollOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputPollOptionCopyWith<$Res> {
  factory $InputPollOptionCopyWith(
          InputPollOption value, $Res Function(InputPollOption) then) =
      _$InputPollOptionCopyWithImpl<$Res, InputPollOption>;
  @useResult
  $Res call(
      {@JsonKey(name: 'text') String text,
      @JsonKey(name: 'text_parse_mode') ParseMode? textParseMode,
      @JsonKey(name: 'text_entities') List<MessageEntity>? textEntities});
}

/// @nodoc
class _$InputPollOptionCopyWithImpl<$Res, $Val extends InputPollOption>
    implements $InputPollOptionCopyWith<$Res> {
  _$InputPollOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InputPollOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? textParseMode = freezed,
    Object? textEntities = freezed,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      textParseMode: freezed == textParseMode
          ? _value.textParseMode
          : textParseMode // ignore: cast_nullable_to_non_nullable
              as ParseMode?,
      textEntities: freezed == textEntities
          ? _value.textEntities
          : textEntities // ignore: cast_nullable_to_non_nullable
              as List<MessageEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InputPollOptionImplCopyWith<$Res>
    implements $InputPollOptionCopyWith<$Res> {
  factory _$$InputPollOptionImplCopyWith(_$InputPollOptionImpl value,
          $Res Function(_$InputPollOptionImpl) then) =
      __$$InputPollOptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'text') String text,
      @JsonKey(name: 'text_parse_mode') ParseMode? textParseMode,
      @JsonKey(name: 'text_entities') List<MessageEntity>? textEntities});
}

/// @nodoc
class __$$InputPollOptionImplCopyWithImpl<$Res>
    extends _$InputPollOptionCopyWithImpl<$Res, _$InputPollOptionImpl>
    implements _$$InputPollOptionImplCopyWith<$Res> {
  __$$InputPollOptionImplCopyWithImpl(
      _$InputPollOptionImpl _value, $Res Function(_$InputPollOptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of InputPollOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? textParseMode = freezed,
    Object? textEntities = freezed,
  }) {
    return _then(_$InputPollOptionImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      textParseMode: freezed == textParseMode
          ? _value.textParseMode
          : textParseMode // ignore: cast_nullable_to_non_nullable
              as ParseMode?,
      textEntities: freezed == textEntities
          ? _value._textEntities
          : textEntities // ignore: cast_nullable_to_non_nullable
              as List<MessageEntity>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InputPollOptionImpl implements _InputPollOption {
  const _$InputPollOptionImpl(
      {@JsonKey(name: 'text') required this.text,
      @JsonKey(name: 'text_parse_mode') this.textParseMode,
      @JsonKey(name: 'text_entities') final List<MessageEntity>? textEntities})
      : _textEntities = textEntities;

  factory _$InputPollOptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$InputPollOptionImplFromJson(json);

  /// Option text, 1-100 characters.
  @override
  @JsonKey(name: 'text')
  final String text;

  /// Optional. Mode for parsing entities in the text.
  @override
  @JsonKey(name: 'text_parse_mode')
  final ParseMode? textParseMode;

  /// Optional. A list of special entities that appear in the poll option text.
  final List<MessageEntity>? _textEntities;

  /// Optional. A list of special entities that appear in the poll option text.
  @override
  @JsonKey(name: 'text_entities')
  List<MessageEntity>? get textEntities {
    final value = _textEntities;
    if (value == null) return null;
    if (_textEntities is EqualUnmodifiableListView) return _textEntities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'InputPollOption(text: $text, textParseMode: $textParseMode, textEntities: $textEntities)';
  }

  /// Create a copy of InputPollOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InputPollOptionImplCopyWith<_$InputPollOptionImpl> get copyWith =>
      __$$InputPollOptionImplCopyWithImpl<_$InputPollOptionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InputPollOptionImplToJson(
      this,
    );
  }
}

abstract class _InputPollOption implements InputPollOption {
  const factory _InputPollOption(
      {@JsonKey(name: 'text') required final String text,
      @JsonKey(name: 'text_parse_mode') final ParseMode? textParseMode,
      @JsonKey(name: 'text_entities')
      final List<MessageEntity>? textEntities}) = _$InputPollOptionImpl;

  factory _InputPollOption.fromJson(Map<String, dynamic> json) =
      _$InputPollOptionImpl.fromJson;

  /// Option text, 1-100 characters.
  @override
  @JsonKey(name: 'text')
  String get text;

  /// Optional. Mode for parsing entities in the text.
  @override
  @JsonKey(name: 'text_parse_mode')
  ParseMode? get textParseMode;

  /// Optional. A list of special entities that appear in the poll option text.
  @override
  @JsonKey(name: 'text_entities')
  List<MessageEntity>? get textEntities;

  /// Create a copy of InputPollOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InputPollOptionImplCopyWith<_$InputPollOptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
