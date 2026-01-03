// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bot_short_description.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BotShortDescription {
  /// Bot's short description.
  @JsonKey(name: 'short_description')
  String get shortDescription;

  /// Create a copy of BotShortDescription
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BotShortDescriptionCopyWith<BotShortDescription> get copyWith =>
      _$BotShortDescriptionCopyWithImpl<BotShortDescription>(
        this as BotShortDescription,
        _$identity,
      );

  /// Serializes this BotShortDescription to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'BotShortDescription(shortDescription: $shortDescription)';
  }
}

/// @nodoc
abstract mixin class $BotShortDescriptionCopyWith<$Res> {
  factory $BotShortDescriptionCopyWith(
    BotShortDescription value,
    $Res Function(BotShortDescription) _then,
  ) = _$BotShortDescriptionCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'short_description') String shortDescription});
}

/// @nodoc
class _$BotShortDescriptionCopyWithImpl<$Res>
    implements $BotShortDescriptionCopyWith<$Res> {
  _$BotShortDescriptionCopyWithImpl(this._self, this._then);

  final BotShortDescription _self;
  final $Res Function(BotShortDescription) _then;

  /// Create a copy of BotShortDescription
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? shortDescription = null}) {
    return _then(
      _self.copyWith(
        shortDescription: null == shortDescription
            ? _self.shortDescription
            : shortDescription // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [BotShortDescription].
extension BotShortDescriptionPatterns on BotShortDescription {
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
    TResult Function(_BotShortDescription value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BotShortDescription() when $default != null:
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
    TResult Function(_BotShortDescription value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BotShortDescription():
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
    TResult? Function(_BotShortDescription value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BotShortDescription() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _BotShortDescription implements BotShortDescription {
  const _BotShortDescription({
    @JsonKey(name: 'short_description') required this.shortDescription,
  });
  factory _BotShortDescription.fromJson(Map<String, dynamic> json) =>
      _$BotShortDescriptionFromJson(json);

  /// Bot's short description.
  @override
  @JsonKey(name: 'short_description')
  final String shortDescription;

  /// Create a copy of BotShortDescription
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BotShortDescriptionCopyWith<_BotShortDescription> get copyWith =>
      __$BotShortDescriptionCopyWithImpl<_BotShortDescription>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$BotShortDescriptionToJson(this);
  }

  @override
  String toString() {
    return 'BotShortDescription(shortDescription: $shortDescription)';
  }
}

/// @nodoc
abstract mixin class _$BotShortDescriptionCopyWith<$Res>
    implements $BotShortDescriptionCopyWith<$Res> {
  factory _$BotShortDescriptionCopyWith(
    _BotShortDescription value,
    $Res Function(_BotShortDescription) _then,
  ) = __$BotShortDescriptionCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'short_description') String shortDescription});
}

/// @nodoc
class __$BotShortDescriptionCopyWithImpl<$Res>
    implements _$BotShortDescriptionCopyWith<$Res> {
  __$BotShortDescriptionCopyWithImpl(this._self, this._then);

  final _BotShortDescription _self;
  final $Res Function(_BotShortDescription) _then;

  /// Create a copy of BotShortDescription
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? shortDescription = null}) {
    return _then(
      _BotShortDescription(
        shortDescription: null == shortDescription
            ? _self.shortDescription
            : shortDescription // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}
