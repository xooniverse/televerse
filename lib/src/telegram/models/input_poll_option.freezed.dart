// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_poll_option.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InputPollOption {
  /// Option text, 1-100 characters.
  @JsonKey(name: 'text')
  String get text;

  /// Optional. Mode for parsing entities in the text.
  @JsonKey(name: 'text_parse_mode')
  ParseMode? get textParseMode;

  /// Optional. A list of special entities that appear in the poll option text.
  @JsonKey(name: 'text_entities')
  List<MessageEntity>? get textEntities;

  /// Create a copy of InputPollOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InputPollOptionCopyWith<InputPollOption> get copyWith =>
      _$InputPollOptionCopyWithImpl<InputPollOption>(
        this as InputPollOption,
        _$identity,
      );

  /// Serializes this InputPollOption to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'InputPollOption(text: $text, textParseMode: $textParseMode, textEntities: $textEntities)';
  }
}

/// @nodoc
abstract mixin class $InputPollOptionCopyWith<$Res> {
  factory $InputPollOptionCopyWith(
    InputPollOption value,
    $Res Function(InputPollOption) _then,
  ) = _$InputPollOptionCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'text') String text,
    @JsonKey(name: 'text_parse_mode') ParseMode? textParseMode,
    @JsonKey(name: 'text_entities') List<MessageEntity>? textEntities,
  });
}

/// @nodoc
class _$InputPollOptionCopyWithImpl<$Res>
    implements $InputPollOptionCopyWith<$Res> {
  _$InputPollOptionCopyWithImpl(this._self, this._then);

  final InputPollOption _self;
  final $Res Function(InputPollOption) _then;

  /// Create a copy of InputPollOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? textParseMode = freezed,
    Object? textEntities = freezed,
  }) {
    return _then(
      _self.copyWith(
        text: null == text
            ? _self.text
            : text // ignore: cast_nullable_to_non_nullable
                  as String,
        textParseMode: freezed == textParseMode
            ? _self.textParseMode
            : textParseMode // ignore: cast_nullable_to_non_nullable
                  as ParseMode?,
        textEntities: freezed == textEntities
            ? _self.textEntities
            : textEntities // ignore: cast_nullable_to_non_nullable
                  as List<MessageEntity>?,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [InputPollOption].
extension InputPollOptionPatterns on InputPollOption {
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
    TResult Function(_InputPollOption value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _InputPollOption() when $default != null:
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
    TResult Function(_InputPollOption value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InputPollOption():
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
    TResult? Function(_InputPollOption value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InputPollOption() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _InputPollOption implements InputPollOption {
  const _InputPollOption({
    @JsonKey(name: 'text') required this.text,
    @JsonKey(name: 'text_parse_mode') this.textParseMode,
    @JsonKey(name: 'text_entities') final List<MessageEntity>? textEntities,
  }) : _textEntities = textEntities;
  factory _InputPollOption.fromJson(Map<String, dynamic> json) =>
      _$InputPollOptionFromJson(json);

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

  /// Create a copy of InputPollOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InputPollOptionCopyWith<_InputPollOption> get copyWith =>
      __$InputPollOptionCopyWithImpl<_InputPollOption>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$InputPollOptionToJson(this);
  }

  @override
  String toString() {
    return 'InputPollOption(text: $text, textParseMode: $textParseMode, textEntities: $textEntities)';
  }
}

/// @nodoc
abstract mixin class _$InputPollOptionCopyWith<$Res>
    implements $InputPollOptionCopyWith<$Res> {
  factory _$InputPollOptionCopyWith(
    _InputPollOption value,
    $Res Function(_InputPollOption) _then,
  ) = __$InputPollOptionCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'text') String text,
    @JsonKey(name: 'text_parse_mode') ParseMode? textParseMode,
    @JsonKey(name: 'text_entities') List<MessageEntity>? textEntities,
  });
}

/// @nodoc
class __$InputPollOptionCopyWithImpl<$Res>
    implements _$InputPollOptionCopyWith<$Res> {
  __$InputPollOptionCopyWithImpl(this._self, this._then);

  final _InputPollOption _self;
  final $Res Function(_InputPollOption) _then;

  /// Create a copy of InputPollOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? text = null,
    Object? textParseMode = freezed,
    Object? textEntities = freezed,
  }) {
    return _then(
      _InputPollOption(
        text: null == text
            ? _self.text
            : text // ignore: cast_nullable_to_non_nullable
                  as String,
        textParseMode: freezed == textParseMode
            ? _self.textParseMode
            : textParseMode // ignore: cast_nullable_to_non_nullable
                  as ParseMode?,
        textEntities: freezed == textEntities
            ? _self._textEntities
            : textEntities // ignore: cast_nullable_to_non_nullable
                  as List<MessageEntity>?,
      ),
    );
  }
}
