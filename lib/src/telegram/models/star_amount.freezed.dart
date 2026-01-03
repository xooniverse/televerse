// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'star_amount.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StarAmount {
  /// Integer amount of Telegram Stars, rounded to 0; can be negative
  @JsonKey(name: 'amount')
  int get amount;

  /// Optional. The number of 1/1000000000 shares of Telegram Stars;
  /// from -999999999 to 999999999; can be negative if and only if
  /// *amount* is non-positive
  @JsonKey(name: 'nanostar_amount')
  int? get nanostarAmount;

  /// Create a copy of StarAmount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StarAmountCopyWith<StarAmount> get copyWith =>
      _$StarAmountCopyWithImpl<StarAmount>(this as StarAmount, _$identity);

  /// Serializes this StarAmount to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'StarAmount(amount: $amount, nanostarAmount: $nanostarAmount)';
  }
}

/// @nodoc
abstract mixin class $StarAmountCopyWith<$Res> {
  factory $StarAmountCopyWith(
    StarAmount value,
    $Res Function(StarAmount) _then,
  ) = _$StarAmountCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'amount') int amount,
    @JsonKey(name: 'nanostar_amount') int? nanostarAmount,
  });
}

/// @nodoc
class _$StarAmountCopyWithImpl<$Res> implements $StarAmountCopyWith<$Res> {
  _$StarAmountCopyWithImpl(this._self, this._then);

  final StarAmount _self;
  final $Res Function(StarAmount) _then;

  /// Create a copy of StarAmount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? amount = null, Object? nanostarAmount = freezed}) {
    return _then(
      _self.copyWith(
        amount: null == amount
            ? _self.amount
            : amount // ignore: cast_nullable_to_non_nullable
                  as int,
        nanostarAmount: freezed == nanostarAmount
            ? _self.nanostarAmount
            : nanostarAmount // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [StarAmount].
extension StarAmountPatterns on StarAmount {
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
    TResult Function(_StarAmount value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StarAmount() when $default != null:
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
    TResult Function(_StarAmount value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StarAmount():
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
    TResult? Function(_StarAmount value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StarAmount() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _StarAmount implements StarAmount {
  const _StarAmount({
    @JsonKey(name: 'amount') required this.amount,
    @JsonKey(name: 'nanostar_amount') this.nanostarAmount,
  });
  factory _StarAmount.fromJson(Map<String, dynamic> json) =>
      _$StarAmountFromJson(json);

  /// Integer amount of Telegram Stars, rounded to 0; can be negative
  @override
  @JsonKey(name: 'amount')
  final int amount;

  /// Optional. The number of 1/1000000000 shares of Telegram Stars;
  /// from -999999999 to 999999999; can be negative if and only if
  /// *amount* is non-positive
  @override
  @JsonKey(name: 'nanostar_amount')
  final int? nanostarAmount;

  /// Create a copy of StarAmount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StarAmountCopyWith<_StarAmount> get copyWith =>
      __$StarAmountCopyWithImpl<_StarAmount>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StarAmountToJson(this);
  }

  @override
  String toString() {
    return 'StarAmount(amount: $amount, nanostarAmount: $nanostarAmount)';
  }
}

/// @nodoc
abstract mixin class _$StarAmountCopyWith<$Res>
    implements $StarAmountCopyWith<$Res> {
  factory _$StarAmountCopyWith(
    _StarAmount value,
    $Res Function(_StarAmount) _then,
  ) = __$StarAmountCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'amount') int amount,
    @JsonKey(name: 'nanostar_amount') int? nanostarAmount,
  });
}

/// @nodoc
class __$StarAmountCopyWithImpl<$Res> implements _$StarAmountCopyWith<$Res> {
  __$StarAmountCopyWithImpl(this._self, this._then);

  final _StarAmount _self;
  final $Res Function(_StarAmount) _then;

  /// Create a copy of StarAmount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? amount = null, Object? nanostarAmount = freezed}) {
    return _then(
      _StarAmount(
        amount: null == amount
            ? _self.amount
            : amount // ignore: cast_nullable_to_non_nullable
                  as int,
        nanostarAmount: freezed == nanostarAmount
            ? _self.nanostarAmount
            : nanostarAmount // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}
