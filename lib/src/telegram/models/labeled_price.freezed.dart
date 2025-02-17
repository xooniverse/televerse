// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'labeled_price.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LabeledPrice _$LabeledPriceFromJson(Map<String, dynamic> json) {
  return _LabeledPrice.fromJson(json);
}

/// @nodoc
mixin _$LabeledPrice {
  /// Portion label
  String get label => throw _privateConstructorUsedError;

  /// Price of the product in the smallest units of the currency (integer, not
  /// float/double).
  ///
  /// For example, for a price of US$ 1.45 pass amount = 145. See the exp
  /// parameter in
  /// [currencies.json](https://core.telegram.org/bots/payments/currencies.json),
  /// it shows the number of digits past the decimal point for each currency
  /// (2 for the majority of currencies).
  int get amount => throw _privateConstructorUsedError;

  /// Serializes this LabeledPrice to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LabeledPrice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LabeledPriceCopyWith<LabeledPrice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LabeledPriceCopyWith<$Res> {
  factory $LabeledPriceCopyWith(
          LabeledPrice value, $Res Function(LabeledPrice) then) =
      _$LabeledPriceCopyWithImpl<$Res, LabeledPrice>;
  @useResult
  $Res call({String label, int amount});
}

/// @nodoc
class _$LabeledPriceCopyWithImpl<$Res, $Val extends LabeledPrice>
    implements $LabeledPriceCopyWith<$Res> {
  _$LabeledPriceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LabeledPrice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LabeledPriceImplCopyWith<$Res>
    implements $LabeledPriceCopyWith<$Res> {
  factory _$$LabeledPriceImplCopyWith(
          _$LabeledPriceImpl value, $Res Function(_$LabeledPriceImpl) then) =
      __$$LabeledPriceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, int amount});
}

/// @nodoc
class __$$LabeledPriceImplCopyWithImpl<$Res>
    extends _$LabeledPriceCopyWithImpl<$Res, _$LabeledPriceImpl>
    implements _$$LabeledPriceImplCopyWith<$Res> {
  __$$LabeledPriceImplCopyWithImpl(
      _$LabeledPriceImpl _value, $Res Function(_$LabeledPriceImpl) _then)
      : super(_value, _then);

  /// Create a copy of LabeledPrice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? amount = null,
  }) {
    return _then(_$LabeledPriceImpl(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LabeledPriceImpl implements _LabeledPrice {
  const _$LabeledPriceImpl({required this.label, required this.amount});

  factory _$LabeledPriceImpl.fromJson(Map<String, dynamic> json) =>
      _$$LabeledPriceImplFromJson(json);

  /// Portion label
  @override
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
  final int amount;

  @override
  String toString() {
    return 'LabeledPrice(label: $label, amount: $amount)';
  }

  /// Create a copy of LabeledPrice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LabeledPriceImplCopyWith<_$LabeledPriceImpl> get copyWith =>
      __$$LabeledPriceImplCopyWithImpl<_$LabeledPriceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LabeledPriceImplToJson(
      this,
    );
  }
}

abstract class _LabeledPrice implements LabeledPrice {
  const factory _LabeledPrice(
      {required final String label,
      required final int amount}) = _$LabeledPriceImpl;

  factory _LabeledPrice.fromJson(Map<String, dynamic> json) =
      _$LabeledPriceImpl.fromJson;

  /// Portion label
  @override
  String get label;

  /// Price of the product in the smallest units of the currency (integer, not
  /// float/double).
  ///
  /// For example, for a price of US$ 1.45 pass amount = 145. See the exp
  /// parameter in
  /// [currencies.json](https://core.telegram.org/bots/payments/currencies.json),
  /// it shows the number of digits past the decimal point for each currency
  /// (2 for the majority of currencies).
  @override
  int get amount;

  /// Create a copy of LabeledPrice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LabeledPriceImplCopyWith<_$LabeledPriceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
