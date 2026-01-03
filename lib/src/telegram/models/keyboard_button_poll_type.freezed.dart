// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'keyboard_button_poll_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$KeyboardButtonPollType {
  /// Optional. If quiz is passed, the user will be allowed to create only
  /// polls in the quiz mode. If regular is passed, only regular polls will be
  /// allowed. Otherwise, the user will be allowed to create a poll of any
  /// type.
  @JsonKey(name: 'type')
  PollType? get type;

  /// Create a copy of KeyboardButtonPollType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $KeyboardButtonPollTypeCopyWith<KeyboardButtonPollType> get copyWith =>
      _$KeyboardButtonPollTypeCopyWithImpl<KeyboardButtonPollType>(
        this as KeyboardButtonPollType,
        _$identity,
      );

  /// Serializes this KeyboardButtonPollType to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'KeyboardButtonPollType(type: $type)';
  }
}

/// @nodoc
abstract mixin class $KeyboardButtonPollTypeCopyWith<$Res> {
  factory $KeyboardButtonPollTypeCopyWith(
    KeyboardButtonPollType value,
    $Res Function(KeyboardButtonPollType) _then,
  ) = _$KeyboardButtonPollTypeCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'type') PollType? type});
}

/// @nodoc
class _$KeyboardButtonPollTypeCopyWithImpl<$Res>
    implements $KeyboardButtonPollTypeCopyWith<$Res> {
  _$KeyboardButtonPollTypeCopyWithImpl(this._self, this._then);

  final KeyboardButtonPollType _self;
  final $Res Function(KeyboardButtonPollType) _then;

  /// Create a copy of KeyboardButtonPollType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? type = freezed}) {
    return _then(
      _self.copyWith(
        type: freezed == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as PollType?,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [KeyboardButtonPollType].
extension KeyboardButtonPollTypePatterns on KeyboardButtonPollType {
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
    TResult Function(_KeyboardButtonPollType value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _KeyboardButtonPollType() when $default != null:
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
    TResult Function(_KeyboardButtonPollType value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _KeyboardButtonPollType():
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
    TResult? Function(_KeyboardButtonPollType value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _KeyboardButtonPollType() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _KeyboardButtonPollType implements KeyboardButtonPollType {
  const _KeyboardButtonPollType({@JsonKey(name: 'type') this.type});
  factory _KeyboardButtonPollType.fromJson(Map<String, dynamic> json) =>
      _$KeyboardButtonPollTypeFromJson(json);

  /// Optional. If quiz is passed, the user will be allowed to create only
  /// polls in the quiz mode. If regular is passed, only regular polls will be
  /// allowed. Otherwise, the user will be allowed to create a poll of any
  /// type.
  @override
  @JsonKey(name: 'type')
  final PollType? type;

  /// Create a copy of KeyboardButtonPollType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$KeyboardButtonPollTypeCopyWith<_KeyboardButtonPollType> get copyWith =>
      __$KeyboardButtonPollTypeCopyWithImpl<_KeyboardButtonPollType>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$KeyboardButtonPollTypeToJson(this);
  }

  @override
  String toString() {
    return 'KeyboardButtonPollType(type: $type)';
  }
}

/// @nodoc
abstract mixin class _$KeyboardButtonPollTypeCopyWith<$Res>
    implements $KeyboardButtonPollTypeCopyWith<$Res> {
  factory _$KeyboardButtonPollTypeCopyWith(
    _KeyboardButtonPollType value,
    $Res Function(_KeyboardButtonPollType) _then,
  ) = __$KeyboardButtonPollTypeCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'type') PollType? type});
}

/// @nodoc
class __$KeyboardButtonPollTypeCopyWithImpl<$Res>
    implements _$KeyboardButtonPollTypeCopyWith<$Res> {
  __$KeyboardButtonPollTypeCopyWithImpl(this._self, this._then);

  final _KeyboardButtonPollType _self;
  final $Res Function(_KeyboardButtonPollType) _then;

  /// Create a copy of KeyboardButtonPollType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? type = freezed}) {
    return _then(
      _KeyboardButtonPollType(
        type: freezed == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as PollType?,
      ),
    );
  }
}
