// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bot_name.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BotName {
  /// The bot's name
  @JsonKey(name: 'name')
  String get name;

  /// Create a copy of BotName
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BotNameCopyWith<BotName> get copyWith =>
      _$BotNameCopyWithImpl<BotName>(this as BotName, _$identity);

  /// Serializes this BotName to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'BotName(name: $name)';
  }
}

/// @nodoc
abstract mixin class $BotNameCopyWith<$Res> {
  factory $BotNameCopyWith(BotName value, $Res Function(BotName) _then) =
      _$BotNameCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'name') String name});
}

/// @nodoc
class _$BotNameCopyWithImpl<$Res> implements $BotNameCopyWith<$Res> {
  _$BotNameCopyWithImpl(this._self, this._then);

  final BotName _self;
  final $Res Function(BotName) _then;

  /// Create a copy of BotName
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null}) {
    return _then(
      _self.copyWith(
        name: null == name
            ? _self.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [BotName].
extension BotNamePatterns on BotName {
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
    TResult Function(_BotName value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BotName() when $default != null:
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
    TResult Function(_BotName value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BotName():
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
    TResult? Function(_BotName value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BotName() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _BotName implements BotName {
  const _BotName({@JsonKey(name: 'name') required this.name});
  factory _BotName.fromJson(Map<String, dynamic> json) =>
      _$BotNameFromJson(json);

  /// The bot's name
  @override
  @JsonKey(name: 'name')
  final String name;

  /// Create a copy of BotName
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BotNameCopyWith<_BotName> get copyWith =>
      __$BotNameCopyWithImpl<_BotName>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BotNameToJson(this);
  }

  @override
  String toString() {
    return 'BotName(name: $name)';
  }
}

/// @nodoc
abstract mixin class _$BotNameCopyWith<$Res> implements $BotNameCopyWith<$Res> {
  factory _$BotNameCopyWith(_BotName value, $Res Function(_BotName) _then) =
      __$BotNameCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'name') String name});
}

/// @nodoc
class __$BotNameCopyWithImpl<$Res> implements _$BotNameCopyWith<$Res> {
  __$BotNameCopyWithImpl(this._self, this._then);

  final _BotName _self;
  final $Res Function(_BotName) _then;

  /// Create a copy of BotName
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? name = null}) {
    return _then(
      _BotName(
        name: null == name
            ? _self.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}
