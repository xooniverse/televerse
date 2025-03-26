// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'labeled_price.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LabeledPrice {
  /// Portion label
  @JsonKey(name: 'label')
  String get label;

  /// Price of the product in the smallest units of the currency (integer, not
  /// float/double).
  ///
  /// For example, for a price of US$ 1.45 pass amount = 145. See the exp
  /// parameter in
  /// [currencies.json](https://core.telegram.org/bots/payments/currencies.json),
  /// it shows the number of digits past the decimal point for each currency
  /// (2 for the majority of currencies).
  @JsonKey(name: 'amount')
  int get amount;

  /// Create a copy of LabeledPrice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LabeledPriceCopyWith<LabeledPrice> get copyWith =>
      _$LabeledPriceCopyWithImpl<LabeledPrice>(
          this as LabeledPrice, _$identity);

  /// Serializes this LabeledPrice to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'LabeledPrice(label: $label, amount: $amount)';
  }
}

/// @nodoc
abstract mixin class $LabeledPriceCopyWith<$Res> {
  factory $LabeledPriceCopyWith(
          LabeledPrice value, $Res Function(LabeledPrice) _then) =
      _$LabeledPriceCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'label') String label,
      @JsonKey(name: 'amount') int amount});
}

/// @nodoc
class _$LabeledPriceCopyWithImpl<$Res> implements $LabeledPriceCopyWith<$Res> {
  _$LabeledPriceCopyWithImpl(this._self, this._then);

  final LabeledPrice _self;
  final $Res Function(LabeledPrice) _then;

  /// Create a copy of LabeledPrice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? amount = null,
  }) {
    return _then(_self.copyWith(
      label: null == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _LabeledPrice implements LabeledPrice {
  const _LabeledPrice(
      {@JsonKey(name: 'label') required this.label,
      @JsonKey(name: 'amount') required this.amount});
  factory _LabeledPrice.fromJson(Map<String, dynamic> json) =>
      _$LabeledPriceFromJson(json);

  /// Portion label
  @override
  @JsonKey(name: 'label')
  final String label;

  /// Price of the product in the smallest units of the currency (integer, not
  /// float/double).
  ///
  /// For example, for a price of US$ 1.45 pass amount = 145. See the exp
  /// parameter in
  /// [currencies.json](https://core.telegram.org/bots/payments/currencies.json),
  /// it shows the number of digits past the decimal point for each currency
  /// (2 for the majority of currencies).
  @override
  @JsonKey(name: 'amount')
  final int amount;

  /// Create a copy of LabeledPrice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LabeledPriceCopyWith<_LabeledPrice> get copyWith =>
      __$LabeledPriceCopyWithImpl<_LabeledPrice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LabeledPriceToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'LabeledPrice(label: $label, amount: $amount)';
  }
}

/// @nodoc
abstract mixin class _$LabeledPriceCopyWith<$Res>
    implements $LabeledPriceCopyWith<$Res> {
  factory _$LabeledPriceCopyWith(
          _LabeledPrice value, $Res Function(_LabeledPrice) _then) =
      __$LabeledPriceCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'label') String label,
      @JsonKey(name: 'amount') int amount});
}

/// @nodoc
class __$LabeledPriceCopyWithImpl<$Res>
    implements _$LabeledPriceCopyWith<$Res> {
  __$LabeledPriceCopyWithImpl(this._self, this._then);

  final _LabeledPrice _self;
  final $Res Function(_LabeledPrice) _then;

  /// Create a copy of LabeledPrice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? label = null,
    Object? amount = null,
  }) {
    return _then(_LabeledPrice(
      label: null == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}
