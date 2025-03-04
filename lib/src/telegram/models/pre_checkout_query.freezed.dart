// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pre_checkout_query.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PreCheckoutQuery _$PreCheckoutQueryFromJson(Map<String, dynamic> json) {
  return _PreCheckoutQuery.fromJson(json);
}

/// @nodoc
mixin _$PreCheckoutQuery {
  /// Unique query identifier
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;

  /// User who sent the query
  @JsonKey(name: 'from')
  User get from => throw _privateConstructorUsedError;

  /// Three-letter ISO 4217 currency code
  @JsonKey(name: 'currency')
  String get currency => throw _privateConstructorUsedError;

  /// Total price in the smallest units of the currency (integer, not
  /// float/double). For example, for a price of US$ 1.45 pass amount = 145.
  /// See the exp parameter in currencies.json, it shows the number of digits
  /// past the decimal point for each currency (2 for the majority of
  /// currencies).
  @JsonKey(name: 'total_amount')
  int get totalAmount => throw _privateConstructorUsedError;

  /// Bot specified invoice payload
  @JsonKey(name: 'invoice_payload')
  String get invoicePayload => throw _privateConstructorUsedError;

  /// Optional. Identifier of the shipping option chosen by the user
  @JsonKey(name: 'shipping_option_id')
  String? get shippingOptionId => throw _privateConstructorUsedError;

  /// Optional. Order info provided by the user
  @JsonKey(name: 'order_info')
  OrderInfo? get orderInfo => throw _privateConstructorUsedError;

  /// Serializes this PreCheckoutQuery to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PreCheckoutQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PreCheckoutQueryCopyWith<PreCheckoutQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreCheckoutQueryCopyWith<$Res> {
  factory $PreCheckoutQueryCopyWith(
          PreCheckoutQuery value, $Res Function(PreCheckoutQuery) then) =
      _$PreCheckoutQueryCopyWithImpl<$Res, PreCheckoutQuery>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'from') User from,
      @JsonKey(name: 'currency') String currency,
      @JsonKey(name: 'total_amount') int totalAmount,
      @JsonKey(name: 'invoice_payload') String invoicePayload,
      @JsonKey(name: 'shipping_option_id') String? shippingOptionId,
      @JsonKey(name: 'order_info') OrderInfo? orderInfo});

  $UserCopyWith<$Res> get from;
  $OrderInfoCopyWith<$Res>? get orderInfo;
}

/// @nodoc
class _$PreCheckoutQueryCopyWithImpl<$Res, $Val extends PreCheckoutQuery>
    implements $PreCheckoutQueryCopyWith<$Res> {
  _$PreCheckoutQueryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PreCheckoutQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? from = null,
    Object? currency = null,
    Object? totalAmount = null,
    Object? invoicePayload = null,
    Object? shippingOptionId = freezed,
    Object? orderInfo = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as User,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      invoicePayload: null == invoicePayload
          ? _value.invoicePayload
          : invoicePayload // ignore: cast_nullable_to_non_nullable
              as String,
      shippingOptionId: freezed == shippingOptionId
          ? _value.shippingOptionId
          : shippingOptionId // ignore: cast_nullable_to_non_nullable
              as String?,
      orderInfo: freezed == orderInfo
          ? _value.orderInfo
          : orderInfo // ignore: cast_nullable_to_non_nullable
              as OrderInfo?,
    ) as $Val);
  }

  /// Create a copy of PreCheckoutQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get from {
    return $UserCopyWith<$Res>(_value.from, (value) {
      return _then(_value.copyWith(from: value) as $Val);
    });
  }

  /// Create a copy of PreCheckoutQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderInfoCopyWith<$Res>? get orderInfo {
    if (_value.orderInfo == null) {
      return null;
    }

    return $OrderInfoCopyWith<$Res>(_value.orderInfo!, (value) {
      return _then(_value.copyWith(orderInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PreCheckoutQueryImplCopyWith<$Res>
    implements $PreCheckoutQueryCopyWith<$Res> {
  factory _$$PreCheckoutQueryImplCopyWith(_$PreCheckoutQueryImpl value,
          $Res Function(_$PreCheckoutQueryImpl) then) =
      __$$PreCheckoutQueryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'from') User from,
      @JsonKey(name: 'currency') String currency,
      @JsonKey(name: 'total_amount') int totalAmount,
      @JsonKey(name: 'invoice_payload') String invoicePayload,
      @JsonKey(name: 'shipping_option_id') String? shippingOptionId,
      @JsonKey(name: 'order_info') OrderInfo? orderInfo});

  @override
  $UserCopyWith<$Res> get from;
  @override
  $OrderInfoCopyWith<$Res>? get orderInfo;
}

/// @nodoc
class __$$PreCheckoutQueryImplCopyWithImpl<$Res>
    extends _$PreCheckoutQueryCopyWithImpl<$Res, _$PreCheckoutQueryImpl>
    implements _$$PreCheckoutQueryImplCopyWith<$Res> {
  __$$PreCheckoutQueryImplCopyWithImpl(_$PreCheckoutQueryImpl _value,
      $Res Function(_$PreCheckoutQueryImpl) _then)
      : super(_value, _then);

  /// Create a copy of PreCheckoutQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? from = null,
    Object? currency = null,
    Object? totalAmount = null,
    Object? invoicePayload = null,
    Object? shippingOptionId = freezed,
    Object? orderInfo = freezed,
  }) {
    return _then(_$PreCheckoutQueryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as User,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      invoicePayload: null == invoicePayload
          ? _value.invoicePayload
          : invoicePayload // ignore: cast_nullable_to_non_nullable
              as String,
      shippingOptionId: freezed == shippingOptionId
          ? _value.shippingOptionId
          : shippingOptionId // ignore: cast_nullable_to_non_nullable
              as String?,
      orderInfo: freezed == orderInfo
          ? _value.orderInfo
          : orderInfo // ignore: cast_nullable_to_non_nullable
              as OrderInfo?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PreCheckoutQueryImpl implements _PreCheckoutQuery {
  const _$PreCheckoutQueryImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'from') required this.from,
      @JsonKey(name: 'currency') required this.currency,
      @JsonKey(name: 'total_amount') required this.totalAmount,
      @JsonKey(name: 'invoice_payload') required this.invoicePayload,
      @JsonKey(name: 'shipping_option_id') this.shippingOptionId,
      @JsonKey(name: 'order_info') this.orderInfo});

  factory _$PreCheckoutQueryImpl.fromJson(Map<String, dynamic> json) =>
      _$$PreCheckoutQueryImplFromJson(json);

  /// Unique query identifier
  @override
  @JsonKey(name: 'id')
  final String id;

  /// User who sent the query
  @override
  @JsonKey(name: 'from')
  final User from;

  /// Three-letter ISO 4217 currency code
  @override
  @JsonKey(name: 'currency')
  final String currency;

  /// Total price in the smallest units of the currency (integer, not
  /// float/double). For example, for a price of US$ 1.45 pass amount = 145.
  /// See the exp parameter in currencies.json, it shows the number of digits
  /// past the decimal point for each currency (2 for the majority of
  /// currencies).
  @override
  @JsonKey(name: 'total_amount')
  final int totalAmount;

  /// Bot specified invoice payload
  @override
  @JsonKey(name: 'invoice_payload')
  final String invoicePayload;

  /// Optional. Identifier of the shipping option chosen by the user
  @override
  @JsonKey(name: 'shipping_option_id')
  final String? shippingOptionId;

  /// Optional. Order info provided by the user
  @override
  @JsonKey(name: 'order_info')
  final OrderInfo? orderInfo;

  @override
  String toString() {
    return 'PreCheckoutQuery(id: $id, from: $from, currency: $currency, totalAmount: $totalAmount, invoicePayload: $invoicePayload, shippingOptionId: $shippingOptionId, orderInfo: $orderInfo)';
  }

  /// Create a copy of PreCheckoutQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PreCheckoutQueryImplCopyWith<_$PreCheckoutQueryImpl> get copyWith =>
      __$$PreCheckoutQueryImplCopyWithImpl<_$PreCheckoutQueryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PreCheckoutQueryImplToJson(
      this,
    );
  }
}

abstract class _PreCheckoutQuery implements PreCheckoutQuery {
  const factory _PreCheckoutQuery(
      {@JsonKey(name: 'id') required final String id,
      @JsonKey(name: 'from') required final User from,
      @JsonKey(name: 'currency') required final String currency,
      @JsonKey(name: 'total_amount') required final int totalAmount,
      @JsonKey(name: 'invoice_payload') required final String invoicePayload,
      @JsonKey(name: 'shipping_option_id') final String? shippingOptionId,
      @JsonKey(name: 'order_info')
      final OrderInfo? orderInfo}) = _$PreCheckoutQueryImpl;

  factory _PreCheckoutQuery.fromJson(Map<String, dynamic> json) =
      _$PreCheckoutQueryImpl.fromJson;

  /// Unique query identifier
  @override
  @JsonKey(name: 'id')
  String get id;

  /// User who sent the query
  @override
  @JsonKey(name: 'from')
  User get from;

  /// Three-letter ISO 4217 currency code
  @override
  @JsonKey(name: 'currency')
  String get currency;

  /// Total price in the smallest units of the currency (integer, not
  /// float/double). For example, for a price of US$ 1.45 pass amount = 145.
  /// See the exp parameter in currencies.json, it shows the number of digits
  /// past the decimal point for each currency (2 for the majority of
  /// currencies).
  @override
  @JsonKey(name: 'total_amount')
  int get totalAmount;

  /// Bot specified invoice payload
  @override
  @JsonKey(name: 'invoice_payload')
  String get invoicePayload;

  /// Optional. Identifier of the shipping option chosen by the user
  @override
  @JsonKey(name: 'shipping_option_id')
  String? get shippingOptionId;

  /// Optional. Order info provided by the user
  @override
  @JsonKey(name: 'order_info')
  OrderInfo? get orderInfo;

  /// Create a copy of PreCheckoutQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PreCheckoutQueryImplCopyWith<_$PreCheckoutQueryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
