// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'poll_option.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PollOption _$PollOptionFromJson(Map<String, dynamic> json) {
  return _PollOption.fromJson(json);
}

/// @nodoc
mixin _$PollOption {
  /// Option text, 1-100 characters
  @JsonKey(name: 'text')
  String get text => throw _privateConstructorUsedError;

  /// Number of users that voted for this option
  @JsonKey(name: 'voter_count')
  int get voterCount => throw _privateConstructorUsedError;

  /// Optional. Special entities that appear in the option text. Currently,
  /// only custom emoji entities are allowed in poll option texts
  @JsonKey(name: 'text_entities')
  List<MessageEntity>? get textEntities => throw _privateConstructorUsedError;

  /// Serializes this PollOption to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PollOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PollOptionCopyWith<PollOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PollOptionCopyWith<$Res> {
  factory $PollOptionCopyWith(
          PollOption value, $Res Function(PollOption) then) =
      _$PollOptionCopyWithImpl<$Res, PollOption>;
  @useResult
  $Res call(
      {@JsonKey(name: 'text') String text,
      @JsonKey(name: 'voter_count') int voterCount,
      @JsonKey(name: 'text_entities') List<MessageEntity>? textEntities});
}

/// @nodoc
class _$PollOptionCopyWithImpl<$Res, $Val extends PollOption>
    implements $PollOptionCopyWith<$Res> {
  _$PollOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PollOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? voterCount = null,
    Object? textEntities = freezed,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      voterCount: null == voterCount
          ? _value.voterCount
          : voterCount // ignore: cast_nullable_to_non_nullable
              as int,
      textEntities: freezed == textEntities
          ? _value.textEntities
          : textEntities // ignore: cast_nullable_to_non_nullable
              as List<MessageEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PollOptionImplCopyWith<$Res>
    implements $PollOptionCopyWith<$Res> {
  factory _$$PollOptionImplCopyWith(
          _$PollOptionImpl value, $Res Function(_$PollOptionImpl) then) =
      __$$PollOptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'text') String text,
      @JsonKey(name: 'voter_count') int voterCount,
      @JsonKey(name: 'text_entities') List<MessageEntity>? textEntities});
}

/// @nodoc
class __$$PollOptionImplCopyWithImpl<$Res>
    extends _$PollOptionCopyWithImpl<$Res, _$PollOptionImpl>
    implements _$$PollOptionImplCopyWith<$Res> {
  __$$PollOptionImplCopyWithImpl(
      _$PollOptionImpl _value, $Res Function(_$PollOptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of PollOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? voterCount = null,
    Object? textEntities = freezed,
  }) {
    return _then(_$PollOptionImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      voterCount: null == voterCount
          ? _value.voterCount
          : voterCount // ignore: cast_nullable_to_non_nullable
              as int,
      textEntities: freezed == textEntities
          ? _value._textEntities
          : textEntities // ignore: cast_nullable_to_non_nullable
              as List<MessageEntity>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PollOptionImpl implements _PollOption {
  const _$PollOptionImpl(
      {@JsonKey(name: 'text') required this.text,
      @JsonKey(name: 'voter_count') required this.voterCount,
      @JsonKey(name: 'text_entities') final List<MessageEntity>? textEntities})
      : _textEntities = textEntities;

  factory _$PollOptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$PollOptionImplFromJson(json);

  /// Option text, 1-100 characters
  @override
  @JsonKey(name: 'text')
  final String text;

  /// Number of users that voted for this option
  @override
  @JsonKey(name: 'voter_count')
  final int voterCount;

  /// Optional. Special entities that appear in the option text. Currently,
  /// only custom emoji entities are allowed in poll option texts
  final List<MessageEntity>? _textEntities;

  /// Optional. Special entities that appear in the option text. Currently,
  /// only custom emoji entities are allowed in poll option texts
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
    return 'PollOption(text: $text, voterCount: $voterCount, textEntities: $textEntities)';
  }

  /// Create a copy of PollOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PollOptionImplCopyWith<_$PollOptionImpl> get copyWith =>
      __$$PollOptionImplCopyWithImpl<_$PollOptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PollOptionImplToJson(
      this,
    );
  }
}

abstract class _PollOption implements PollOption {
  const factory _PollOption(
      {@JsonKey(name: 'text') required final String text,
      @JsonKey(name: 'voter_count') required final int voterCount,
      @JsonKey(name: 'text_entities')
      final List<MessageEntity>? textEntities}) = _$PollOptionImpl;

  factory _PollOption.fromJson(Map<String, dynamic> json) =
      _$PollOptionImpl.fromJson;

  /// Option text, 1-100 characters
  @override
  @JsonKey(name: 'text')
  String get text;

  /// Number of users that voted for this option
  @override
  @JsonKey(name: 'voter_count')
  int get voterCount;

  /// Optional. Special entities that appear in the option text. Currently,
  /// only custom emoji entities are allowed in poll option texts
  @override
  @JsonKey(name: 'text_entities')
  List<MessageEntity>? get textEntities;

  /// Create a copy of PollOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PollOptionImplCopyWith<_$PollOptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
