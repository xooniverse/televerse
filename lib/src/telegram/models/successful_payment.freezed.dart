// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'successful_payment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SuccessfulPayment {
  /// Three-letter ISO 4217 currency code
  @JsonKey(name: 'currency')
  String get currency;

  /// Total price in the smallest units of the currency (integer, not
  /// float/double). For example, for a price of US$ 1.45 pass amount = 145.
  /// See the exp parameter in
  /// [currencies.json](https://core.telegram.org/bots/payments/currencies.json),
  /// it shows the number of digits past the decimal point for each currency
  /// (2 for the majority of currencies).
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

  /// Telegram payment identifier
  @JsonKey(name: 'telegram_payment_charge_id')
  String get telegramPaymentChargeId;

  /// Provider payment identifier
  @JsonKey(name: 'provider_payment_charge_id')
  String get providerPaymentChargeId;

  /// Optional. True, if the payment is a recurring payment for a subscription
  @JsonKey(name: 'is_recurring')
  bool? get isRecurring;

  /// Optional. True, if the payment is the first payment for a subscription
  @JsonKey(name: 'is_first_recurring')
  bool? get isFirstRecurring;

  /// Create a copy of SuccessfulPayment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SuccessfulPaymentCopyWith<SuccessfulPayment> get copyWith =>
      _$SuccessfulPaymentCopyWithImpl<SuccessfulPayment>(
          this as SuccessfulPayment, _$identity);

  /// Serializes this SuccessfulPayment to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'SuccessfulPayment(currency: $currency, totalAmount: $totalAmount, invoicePayload: $invoicePayload, shippingOptionId: $shippingOptionId, orderInfo: $orderInfo, telegramPaymentChargeId: $telegramPaymentChargeId, providerPaymentChargeId: $providerPaymentChargeId, isRecurring: $isRecurring, isFirstRecurring: $isFirstRecurring)';
  }
}

/// @nodoc
abstract mixin class $SuccessfulPaymentCopyWith<$Res> {
  factory $SuccessfulPaymentCopyWith(
          SuccessfulPayment value, $Res Function(SuccessfulPayment) _then) =
      _$SuccessfulPaymentCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'currency') String currency,
      @JsonKey(name: 'total_amount') int totalAmount,
      @JsonKey(name: 'invoice_payload') String invoicePayload,
      @JsonKey(name: 'shipping_option_id') String? shippingOptionId,
      @JsonKey(name: 'order_info') OrderInfo? orderInfo,
      @JsonKey(name: 'telegram_payment_charge_id')
      String telegramPaymentChargeId,
      @JsonKey(name: 'provider_payment_charge_id')
      String providerPaymentChargeId,
      @JsonKey(name: 'is_recurring') bool? isRecurring,
      @JsonKey(name: 'is_first_recurring') bool? isFirstRecurring});

  $OrderInfoCopyWith<$Res>? get orderInfo;
}

/// @nodoc
class _$SuccessfulPaymentCopyWithImpl<$Res>
    implements $SuccessfulPaymentCopyWith<$Res> {
  _$SuccessfulPaymentCopyWithImpl(this._self, this._then);

  final SuccessfulPayment _self;
  final $Res Function(SuccessfulPayment) _then;

  /// Create a copy of SuccessfulPayment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currency = null,
    Object? totalAmount = null,
    Object? invoicePayload = null,
    Object? shippingOptionId = freezed,
    Object? orderInfo = freezed,
    Object? telegramPaymentChargeId = null,
    Object? providerPaymentChargeId = null,
    Object? isRecurring = freezed,
    Object? isFirstRecurring = freezed,
  }) {
    return _then(_self.copyWith(
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
      telegramPaymentChargeId: null == telegramPaymentChargeId
          ? _self.telegramPaymentChargeId
          : telegramPaymentChargeId // ignore: cast_nullable_to_non_nullable
              as String,
      providerPaymentChargeId: null == providerPaymentChargeId
          ? _self.providerPaymentChargeId
          : providerPaymentChargeId // ignore: cast_nullable_to_non_nullable
              as String,
      isRecurring: freezed == isRecurring
          ? _self.isRecurring
          : isRecurring // ignore: cast_nullable_to_non_nullable
              as bool?,
      isFirstRecurring: freezed == isFirstRecurring
          ? _self.isFirstRecurring
          : isFirstRecurring // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  /// Create a copy of SuccessfulPayment
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
class _SuccessfulPayment implements SuccessfulPayment {
  const _SuccessfulPayment(
      {@JsonKey(name: 'currency') required this.currency,
      @JsonKey(name: 'total_amount') required this.totalAmount,
      @JsonKey(name: 'invoice_payload') required this.invoicePayload,
      @JsonKey(name: 'shipping_option_id') this.shippingOptionId,
      @JsonKey(name: 'order_info') this.orderInfo,
      @JsonKey(name: 'telegram_payment_charge_id')
      required this.telegramPaymentChargeId,
      @JsonKey(name: 'provider_payment_charge_id')
      required this.providerPaymentChargeId,
      @JsonKey(name: 'is_recurring') this.isRecurring,
      @JsonKey(name: 'is_first_recurring') this.isFirstRecurring});
  factory _SuccessfulPayment.fromJson(Map<String, dynamic> json) =>
      _$SuccessfulPaymentFromJson(json);

  /// Three-letter ISO 4217 currency code
  @override
  @JsonKey(name: 'currency')
  final String currency;

  /// Total price in the smallest units of the currency (integer, not
  /// float/double). For example, for a price of US$ 1.45 pass amount = 145.
  /// See the exp parameter in
  /// [currencies.json](https://core.telegram.org/bots/payments/currencies.json),
  /// it shows the number of digits past the decimal point for each currency
  /// (2 for the majority of currencies).
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

  /// Telegram payment identifier
  @override
  @JsonKey(name: 'telegram_payment_charge_id')
  final String telegramPaymentChargeId;

  /// Provider payment identifier
  @override
  @JsonKey(name: 'provider_payment_charge_id')
  final String providerPaymentChargeId;

  /// Optional. True, if the payment is a recurring payment for a subscription
  @override
  @JsonKey(name: 'is_recurring')
  final bool? isRecurring;

  /// Optional. True, if the payment is the first payment for a subscription
  @override
  @JsonKey(name: 'is_first_recurring')
  final bool? isFirstRecurring;

  /// Create a copy of SuccessfulPayment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SuccessfulPaymentCopyWith<_SuccessfulPayment> get copyWith =>
      __$SuccessfulPaymentCopyWithImpl<_SuccessfulPayment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SuccessfulPaymentToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'SuccessfulPayment(currency: $currency, totalAmount: $totalAmount, invoicePayload: $invoicePayload, shippingOptionId: $shippingOptionId, orderInfo: $orderInfo, telegramPaymentChargeId: $telegramPaymentChargeId, providerPaymentChargeId: $providerPaymentChargeId, isRecurring: $isRecurring, isFirstRecurring: $isFirstRecurring)';
  }
}

/// @nodoc
abstract mixin class _$SuccessfulPaymentCopyWith<$Res>
    implements $SuccessfulPaymentCopyWith<$Res> {
  factory _$SuccessfulPaymentCopyWith(
          _SuccessfulPayment value, $Res Function(_SuccessfulPayment) _then) =
      __$SuccessfulPaymentCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'currency') String currency,
      @JsonKey(name: 'total_amount') int totalAmount,
      @JsonKey(name: 'invoice_payload') String invoicePayload,
      @JsonKey(name: 'shipping_option_id') String? shippingOptionId,
      @JsonKey(name: 'order_info') OrderInfo? orderInfo,
      @JsonKey(name: 'telegram_payment_charge_id')
      String telegramPaymentChargeId,
      @JsonKey(name: 'provider_payment_charge_id')
      String providerPaymentChargeId,
      @JsonKey(name: 'is_recurring') bool? isRecurring,
      @JsonKey(name: 'is_first_recurring') bool? isFirstRecurring});

  @override
  $OrderInfoCopyWith<$Res>? get orderInfo;
}

/// @nodoc
class __$SuccessfulPaymentCopyWithImpl<$Res>
    implements _$SuccessfulPaymentCopyWith<$Res> {
  __$SuccessfulPaymentCopyWithImpl(this._self, this._then);

  final _SuccessfulPayment _self;
  final $Res Function(_SuccessfulPayment) _then;

  /// Create a copy of SuccessfulPayment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? currency = null,
    Object? totalAmount = null,
    Object? invoicePayload = null,
    Object? shippingOptionId = freezed,
    Object? orderInfo = freezed,
    Object? telegramPaymentChargeId = null,
    Object? providerPaymentChargeId = null,
    Object? isRecurring = freezed,
    Object? isFirstRecurring = freezed,
  }) {
    return _then(_SuccessfulPayment(
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
      telegramPaymentChargeId: null == telegramPaymentChargeId
          ? _self.telegramPaymentChargeId
          : telegramPaymentChargeId // ignore: cast_nullable_to_non_nullable
              as String,
      providerPaymentChargeId: null == providerPaymentChargeId
          ? _self.providerPaymentChargeId
          : providerPaymentChargeId // ignore: cast_nullable_to_non_nullable
              as String,
      isRecurring: freezed == isRecurring
          ? _self.isRecurring
          : isRecurring // ignore: cast_nullable_to_non_nullable
              as bool?,
      isFirstRecurring: freezed == isFirstRecurring
          ? _self.isFirstRecurring
          : isFirstRecurring // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  /// Create a copy of SuccessfulPayment
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
