// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'giveaway_created.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GiveawayCreated {
  /// Optional. The number of Telegram Stars to be split between giveaway
  /// winners; for Telegram Star giveaways only
  @JsonKey(name: 'prize_star_count')
  int? get prizeStarCount;

  /// Create a copy of GiveawayCreated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GiveawayCreatedCopyWith<GiveawayCreated> get copyWith =>
      _$GiveawayCreatedCopyWithImpl<GiveawayCreated>(
        this as GiveawayCreated,
        _$identity,
      );

  /// Serializes this GiveawayCreated to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'GiveawayCreated(prizeStarCount: $prizeStarCount)';
  }
}

/// @nodoc
abstract mixin class $GiveawayCreatedCopyWith<$Res> {
  factory $GiveawayCreatedCopyWith(
    GiveawayCreated value,
    $Res Function(GiveawayCreated) _then,
  ) = _$GiveawayCreatedCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'prize_star_count') int? prizeStarCount});
}

/// @nodoc
class _$GiveawayCreatedCopyWithImpl<$Res>
    implements $GiveawayCreatedCopyWith<$Res> {
  _$GiveawayCreatedCopyWithImpl(this._self, this._then);

  final GiveawayCreated _self;
  final $Res Function(GiveawayCreated) _then;

  /// Create a copy of GiveawayCreated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? prizeStarCount = freezed}) {
    return _then(
      _self.copyWith(
        prizeStarCount: freezed == prizeStarCount
            ? _self.prizeStarCount
            : prizeStarCount // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [GiveawayCreated].
extension GiveawayCreatedPatterns on GiveawayCreated {
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
    TResult Function(_GiveawayCreated value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GiveawayCreated() when $default != null:
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
    TResult Function(_GiveawayCreated value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GiveawayCreated():
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
    TResult? Function(_GiveawayCreated value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GiveawayCreated() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _GiveawayCreated implements GiveawayCreated {
  const _GiveawayCreated({
    @JsonKey(name: 'prize_star_count') this.prizeStarCount,
  });
  factory _GiveawayCreated.fromJson(Map<String, dynamic> json) =>
      _$GiveawayCreatedFromJson(json);

  /// Optional. The number of Telegram Stars to be split between giveaway
  /// winners; for Telegram Star giveaways only
  @override
  @JsonKey(name: 'prize_star_count')
  final int? prizeStarCount;

  /// Create a copy of GiveawayCreated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GiveawayCreatedCopyWith<_GiveawayCreated> get copyWith =>
      __$GiveawayCreatedCopyWithImpl<_GiveawayCreated>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GiveawayCreatedToJson(this);
  }

  @override
  String toString() {
    return 'GiveawayCreated(prizeStarCount: $prizeStarCount)';
  }
}

/// @nodoc
abstract mixin class _$GiveawayCreatedCopyWith<$Res>
    implements $GiveawayCreatedCopyWith<$Res> {
  factory _$GiveawayCreatedCopyWith(
    _GiveawayCreated value,
    $Res Function(_GiveawayCreated) _then,
  ) = __$GiveawayCreatedCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'prize_star_count') int? prizeStarCount});
}

/// @nodoc
class __$GiveawayCreatedCopyWithImpl<$Res>
    implements _$GiveawayCreatedCopyWith<$Res> {
  __$GiveawayCreatedCopyWithImpl(this._self, this._then);

  final _GiveawayCreated _self;
  final $Res Function(_GiveawayCreated) _then;

  /// Create a copy of GiveawayCreated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? prizeStarCount = freezed}) {
    return _then(
      _GiveawayCreated(
        prizeStarCount: freezed == prizeStarCount
            ? _self.prizeStarCount
            : prizeStarCount // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}
