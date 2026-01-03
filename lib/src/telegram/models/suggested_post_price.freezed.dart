// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'suggested_post_price.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SuggestedPostPrice {
  /// Currency in which the post will be paid.
  ///
  /// Currently, must be one of:
  /// - "XTR" for Telegram Stars
  /// - "TON" for toncoins
  @JsonKey(name: 'currency')
  String get currency;

  /// The amount of the currency that will be paid for the post in the smallest units of the currency.
  ///
  /// This means:
  /// - For Telegram Stars: the actual number of stars (must be between 5 and 100000)
  /// - For toncoins: nanotoncoins (must be between 10000000 and 10000000000000)
  @JsonKey(name: 'amount')
  int get amount;

  /// Create a copy of SuggestedPostPrice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SuggestedPostPriceCopyWith<SuggestedPostPrice> get copyWith =>
      _$SuggestedPostPriceCopyWithImpl<SuggestedPostPrice>(
        this as SuggestedPostPrice,
        _$identity,
      );

  /// Serializes this SuggestedPostPrice to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'SuggestedPostPrice(currency: $currency, amount: $amount)';
  }
}

/// @nodoc
abstract mixin class $SuggestedPostPriceCopyWith<$Res> {
  factory $SuggestedPostPriceCopyWith(
    SuggestedPostPrice value,
    $Res Function(SuggestedPostPrice) _then,
  ) = _$SuggestedPostPriceCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'currency') String currency,
    @JsonKey(name: 'amount') int amount,
  });
}

/// @nodoc
class _$SuggestedPostPriceCopyWithImpl<$Res>
    implements $SuggestedPostPriceCopyWith<$Res> {
  _$SuggestedPostPriceCopyWithImpl(this._self, this._then);

  final SuggestedPostPrice _self;
  final $Res Function(SuggestedPostPrice) _then;

  /// Create a copy of SuggestedPostPrice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? currency = null, Object? amount = null}) {
    return _then(
      _self.copyWith(
        currency: null == currency
            ? _self.currency
            : currency // ignore: cast_nullable_to_non_nullable
                  as String,
        amount: null == amount
            ? _self.amount
            : amount // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [SuggestedPostPrice].
extension SuggestedPostPricePatterns on SuggestedPostPrice {
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
    TResult Function(_SuggestedPostPrice value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SuggestedPostPrice() when $default != null:
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
    TResult Function(_SuggestedPostPrice value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SuggestedPostPrice():
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
    TResult? Function(_SuggestedPostPrice value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SuggestedPostPrice() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SuggestedPostPrice implements SuggestedPostPrice {
  const _SuggestedPostPrice({
    @JsonKey(name: 'currency') required this.currency,
    @JsonKey(name: 'amount') required this.amount,
  });
  factory _SuggestedPostPrice.fromJson(Map<String, dynamic> json) =>
      _$SuggestedPostPriceFromJson(json);

  /// Currency in which the post will be paid.
  ///
  /// Currently, must be one of:
  /// - "XTR" for Telegram Stars
  /// - "TON" for toncoins
  @override
  @JsonKey(name: 'currency')
  final String currency;

  /// The amount of the currency that will be paid for the post in the smallest units of the currency.
  ///
  /// This means:
  /// - For Telegram Stars: the actual number of stars (must be between 5 and 100000)
  /// - For toncoins: nanotoncoins (must be between 10000000 and 10000000000000)
  @override
  @JsonKey(name: 'amount')
  final int amount;

  /// Create a copy of SuggestedPostPrice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SuggestedPostPriceCopyWith<_SuggestedPostPrice> get copyWith =>
      __$SuggestedPostPriceCopyWithImpl<_SuggestedPostPrice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SuggestedPostPriceToJson(this);
  }

  @override
  String toString() {
    return 'SuggestedPostPrice(currency: $currency, amount: $amount)';
  }
}

/// @nodoc
abstract mixin class _$SuggestedPostPriceCopyWith<$Res>
    implements $SuggestedPostPriceCopyWith<$Res> {
  factory _$SuggestedPostPriceCopyWith(
    _SuggestedPostPrice value,
    $Res Function(_SuggestedPostPrice) _then,
  ) = __$SuggestedPostPriceCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'currency') String currency,
    @JsonKey(name: 'amount') int amount,
  });
}

/// @nodoc
class __$SuggestedPostPriceCopyWithImpl<$Res>
    implements _$SuggestedPostPriceCopyWith<$Res> {
  __$SuggestedPostPriceCopyWithImpl(this._self, this._then);

  final _SuggestedPostPrice _self;
  final $Res Function(_SuggestedPostPrice) _then;

  /// Create a copy of SuggestedPostPrice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? currency = null, Object? amount = null}) {
    return _then(
      _SuggestedPostPrice(
        currency: null == currency
            ? _self.currency
            : currency // ignore: cast_nullable_to_non_nullable
                  as String,
        amount: null == amount
            ? _self.amount
            : amount // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}
