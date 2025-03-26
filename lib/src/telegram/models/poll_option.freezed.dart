// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'poll_option.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PollOption {
  /// Option text, 1-100 characters
  @JsonKey(name: 'text')
  String get text;

  /// Number of users that voted for this option
  @JsonKey(name: 'voter_count')
  int get voterCount;

  /// Optional. Special entities that appear in the option text. Currently,
  /// only custom emoji entities are allowed in poll option texts
  @JsonKey(name: 'text_entities')
  List<MessageEntity>? get textEntities;

  /// Create a copy of PollOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PollOptionCopyWith<PollOption> get copyWith =>
      _$PollOptionCopyWithImpl<PollOption>(this as PollOption, _$identity);

  /// Serializes this PollOption to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'PollOption(text: $text, voterCount: $voterCount, textEntities: $textEntities)';
  }
}

/// @nodoc
abstract mixin class $PollOptionCopyWith<$Res> {
  factory $PollOptionCopyWith(
          PollOption value, $Res Function(PollOption) _then) =
      _$PollOptionCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'text') String text,
      @JsonKey(name: 'voter_count') int voterCount,
      @JsonKey(name: 'text_entities') List<MessageEntity>? textEntities});
}

/// @nodoc
class _$PollOptionCopyWithImpl<$Res> implements $PollOptionCopyWith<$Res> {
  _$PollOptionCopyWithImpl(this._self, this._then);

  final PollOption _self;
  final $Res Function(PollOption) _then;

  /// Create a copy of PollOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? voterCount = null,
    Object? textEntities = freezed,
  }) {
    return _then(_self.copyWith(
      text: null == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      voterCount: null == voterCount
          ? _self.voterCount
          : voterCount // ignore: cast_nullable_to_non_nullable
              as int,
      textEntities: freezed == textEntities
          ? _self.textEntities
          : textEntities // ignore: cast_nullable_to_non_nullable
              as List<MessageEntity>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _PollOption implements PollOption {
  const _PollOption(
      {@JsonKey(name: 'text') required this.text,
      @JsonKey(name: 'voter_count') required this.voterCount,
      @JsonKey(name: 'text_entities') final List<MessageEntity>? textEntities})
      : _textEntities = textEntities;
  factory _PollOption.fromJson(Map<String, dynamic> json) =>
      _$PollOptionFromJson(json);

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

  /// Create a copy of PollOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PollOptionCopyWith<_PollOption> get copyWith =>
      __$PollOptionCopyWithImpl<_PollOption>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PollOptionToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'PollOption(text: $text, voterCount: $voterCount, textEntities: $textEntities)';
  }
}

/// @nodoc
abstract mixin class _$PollOptionCopyWith<$Res>
    implements $PollOptionCopyWith<$Res> {
  factory _$PollOptionCopyWith(
          _PollOption value, $Res Function(_PollOption) _then) =
      __$PollOptionCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'text') String text,
      @JsonKey(name: 'voter_count') int voterCount,
      @JsonKey(name: 'text_entities') List<MessageEntity>? textEntities});
}

/// @nodoc
class __$PollOptionCopyWithImpl<$Res> implements _$PollOptionCopyWith<$Res> {
  __$PollOptionCopyWithImpl(this._self, this._then);

  final _PollOption _self;
  final $Res Function(_PollOption) _then;

  /// Create a copy of PollOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? text = null,
    Object? voterCount = null,
    Object? textEntities = freezed,
  }) {
    return _then(_PollOption(
      text: null == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      voterCount: null == voterCount
          ? _self.voterCount
          : voterCount // ignore: cast_nullable_to_non_nullable
              as int,
      textEntities: freezed == textEntities
          ? _self._textEntities
          : textEntities // ignore: cast_nullable_to_non_nullable
              as List<MessageEntity>?,
    ));
  }
}
