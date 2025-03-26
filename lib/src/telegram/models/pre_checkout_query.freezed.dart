// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pre_checkout_query.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PreCheckoutQuery {
  /// Unique query identifier
  @JsonKey(name: 'id')
  String get id;

  /// User who sent the query
  @JsonKey(name: 'from')
  User get from;

  /// Three-letter ISO 4217 currency code
  @JsonKey(name: 'currency')
  String get currency;

  /// Total price in the smallest units of the currency (integer, not
  /// float/double). For example, for a price of US$ 1.45 pass amount = 145.
  /// See the exp parameter in currencies.json, it shows the number of digits
  /// past the decimal point for each currency (2 for the majority of
  /// currencies).
  @JsonKey(name: 'total_amount')
  int get totalAmount;

  /// Bot specified invoice payload
  @JsonKey(name: 'invoice_payload')
  String get invoicePayload;

  /// Optional. Identifier of the shipping option chosen by the user
  @JsonKey(name: 'shipping_option_id')
  String? get shippingOptionId;

  /// Optional. Order info provided by the user
  @JsonKey(name: 'order_info')
  OrderInfo? get orderInfo;

  /// Create a copy of PreCheckoutQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PreCheckoutQueryCopyWith<PreCheckoutQuery> get copyWith =>
      _$PreCheckoutQueryCopyWithImpl<PreCheckoutQuery>(
          this as PreCheckoutQuery, _$identity);

  /// Serializes this PreCheckoutQuery to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'PreCheckoutQuery(id: $id, from: $from, currency: $currency, totalAmount: $totalAmount, invoicePayload: $invoicePayload, shippingOptionId: $shippingOptionId, orderInfo: $orderInfo)';
  }
}

/// @nodoc
abstract mixin class $PreCheckoutQueryCopyWith<$Res> {
  factory $PreCheckoutQueryCopyWith(
          PreCheckoutQuery value, $Res Function(PreCheckoutQuery) _then) =
      _$PreCheckoutQueryCopyWithImpl;
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
class _$PreCheckoutQueryCopyWithImpl<$Res>
    implements $PreCheckoutQueryCopyWith<$Res> {
  _$PreCheckoutQueryCopyWithImpl(this._self, this._then);

  final PreCheckoutQuery _self;
  final $Res Function(PreCheckoutQuery) _then;

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
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      from: null == from
          ? _self.from
          : from // ignore: cast_nullable_to_non_nullable
              as User,
      currency: null == currency
          ? _self.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      totalAmount: null == totalAmount
          ? _self.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      invoicePayload: null == invoicePayload
          ? _self.invoicePayload
          : invoicePayload // ignore: cast_nullable_to_non_nullable
              as String,
      shippingOptionId: freezed == shippingOptionId
          ? _self.shippingOptionId
          : shippingOptionId // ignore: cast_nullable_to_non_nullable
              as String?,
      orderInfo: freezed == orderInfo
          ? _self.orderInfo
          : orderInfo // ignore: cast_nullable_to_non_nullable
              as OrderInfo?,
    ));
  }

  /// Create a copy of PreCheckoutQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get from {
    return $UserCopyWith<$Res>(_self.from, (value) {
      return _then(_self.copyWith(from: value));
    });
  }

  /// Create a copy of PreCheckoutQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderInfoCopyWith<$Res>? get orderInfo {
    if (_self.orderInfo == null) {
      return null;
    }

    return $OrderInfoCopyWith<$Res>(_self.orderInfo!, (value) {
      return _then(_self.copyWith(orderInfo: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _PreCheckoutQuery implements PreCheckoutQuery {
  const _PreCheckoutQuery(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'from') required this.from,
      @JsonKey(name: 'currency') required this.currency,
      @JsonKey(name: 'total_amount') required this.totalAmount,
      @JsonKey(name: 'invoice_payload') required this.invoicePayload,
      @JsonKey(name: 'shipping_option_id') this.shippingOptionId,
      @JsonKey(name: 'order_info') this.orderInfo});
  factory _PreCheckoutQuery.fromJson(Map<String, dynamic> json) =>
      _$PreCheckoutQueryFromJson(json);

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

  /// Create a copy of PreCheckoutQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PreCheckoutQueryCopyWith<_PreCheckoutQuery> get copyWith =>
      __$PreCheckoutQueryCopyWithImpl<_PreCheckoutQuery>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PreCheckoutQueryToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'PreCheckoutQuery(id: $id, from: $from, currency: $currency, totalAmount: $totalAmount, invoicePayload: $invoicePayload, shippingOptionId: $shippingOptionId, orderInfo: $orderInfo)';
  }
}

/// @nodoc
abstract mixin class _$PreCheckoutQueryCopyWith<$Res>
    implements $PreCheckoutQueryCopyWith<$Res> {
  factory _$PreCheckoutQueryCopyWith(
          _PreCheckoutQuery value, $Res Function(_PreCheckoutQuery) _then) =
      __$PreCheckoutQueryCopyWithImpl;
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
class __$PreCheckoutQueryCopyWithImpl<$Res>
    implements _$PreCheckoutQueryCopyWith<$Res> {
  __$PreCheckoutQueryCopyWithImpl(this._self, this._then);

  final _PreCheckoutQuery _self;
  final $Res Function(_PreCheckoutQuery) _then;

  /// Create a copy of PreCheckoutQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? from = null,
    Object? currency = null,
    Object? totalAmount = null,
    Object? invoicePayload = null,
    Object? shippingOptionId = freezed,
    Object? orderInfo = freezed,
  }) {
    return _then(_PreCheckoutQuery(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      from: null == from
          ? _self.from
          : from // ignore: cast_nullable_to_non_nullable
              as User,
      currency: null == currency
          ? _self.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      totalAmount: null == totalAmount
          ? _self.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      invoicePayload: null == invoicePayload
          ? _self.invoicePayload
          : invoicePayload // ignore: cast_nullable_to_non_nullable
              as String,
      shippingOptionId: freezed == shippingOptionId
          ? _self.shippingOptionId
          : shippingOptionId // ignore: cast_nullable_to_non_nullable
              as String?,
      orderInfo: freezed == orderInfo
          ? _self.orderInfo
          : orderInfo // ignore: cast_nullable_to_non_nullable
              as OrderInfo?,
    ));
  }

  /// Create a copy of PreCheckoutQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get from {
    return $UserCopyWith<$Res>(_self.from, (value) {
      return _then(_self.copyWith(from: value));
    });
  }

  /// Create a copy of PreCheckoutQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderInfoCopyWith<$Res>? get orderInfo {
    if (_self.orderInfo == null) {
      return null;
    }

    return $OrderInfoCopyWith<$Res>(_self.orderInfo!, (value) {
      return _then(_self.copyWith(orderInfo: value));
    });
  }
}
