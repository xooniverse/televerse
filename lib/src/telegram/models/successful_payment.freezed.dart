// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'successful_payment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SuccessfulPayment _$SuccessfulPaymentFromJson(Map<String, dynamic> json) {
  return _SuccessfulPayment.fromJson(json);
}

/// @nodoc
mixin _$SuccessfulPayment {
  /// Three-letter ISO 4217 currency code
  String get currency => throw _privateConstructorUsedError;

  /// Total price in the smallest units of the currency (integer, not
  /// float/double). For example, for a price of US$ 1.45 pass amount = 145.
  /// See the exp parameter in
  /// [currencies.json](https://core.telegram.org/bots/payments/currencies.json),
  /// it shows the number of digits past the decimal point for each currency
  /// (2 for the majority of currencies).
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

  /// Telegram payment identifier
  @JsonKey(name: 'telegram_payment_charge_id')
  String get telegramPaymentChargeId => throw _privateConstructorUsedError;

  /// Provider payment identifier
  @JsonKey(name: 'provider_payment_charge_id')
  String get providerPaymentChargeId => throw _privateConstructorUsedError;

  /// Optional. True, if the payment is a recurring payment for a subscription
  @JsonKey(name: 'is_recurring')
  bool? get isRecurring => throw _privateConstructorUsedError;

  /// Optional. True, if the payment is the first payment for a subscription
  @JsonKey(name: 'is_first_recurring')
  bool? get isFirstRecurring => throw _privateConstructorUsedError;

  /// Serializes this SuccessfulPayment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SuccessfulPayment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SuccessfulPaymentCopyWith<SuccessfulPayment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuccessfulPaymentCopyWith<$Res> {
  factory $SuccessfulPaymentCopyWith(
          SuccessfulPayment value, $Res Function(SuccessfulPayment) then) =
      _$SuccessfulPaymentCopyWithImpl<$Res, SuccessfulPayment>;
  @useResult
  $Res call(
      {String currency,
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
class _$SuccessfulPaymentCopyWithImpl<$Res, $Val extends SuccessfulPayment>
    implements $SuccessfulPaymentCopyWith<$Res> {
  _$SuccessfulPaymentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
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
      telegramPaymentChargeId: null == telegramPaymentChargeId
          ? _value.telegramPaymentChargeId
          : telegramPaymentChargeId // ignore: cast_nullable_to_non_nullable
              as String,
      providerPaymentChargeId: null == providerPaymentChargeId
          ? _value.providerPaymentChargeId
          : providerPaymentChargeId // ignore: cast_nullable_to_non_nullable
              as String,
      isRecurring: freezed == isRecurring
          ? _value.isRecurring
          : isRecurring // ignore: cast_nullable_to_non_nullable
              as bool?,
      isFirstRecurring: freezed == isFirstRecurring
          ? _value.isFirstRecurring
          : isFirstRecurring // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  /// Create a copy of SuccessfulPayment
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
abstract class _$$SuccessfulPaymentImplCopyWith<$Res>
    implements $SuccessfulPaymentCopyWith<$Res> {
  factory _$$SuccessfulPaymentImplCopyWith(_$SuccessfulPaymentImpl value,
          $Res Function(_$SuccessfulPaymentImpl) then) =
      __$$SuccessfulPaymentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String currency,
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
class __$$SuccessfulPaymentImplCopyWithImpl<$Res>
    extends _$SuccessfulPaymentCopyWithImpl<$Res, _$SuccessfulPaymentImpl>
    implements _$$SuccessfulPaymentImplCopyWith<$Res> {
  __$$SuccessfulPaymentImplCopyWithImpl(_$SuccessfulPaymentImpl _value,
      $Res Function(_$SuccessfulPaymentImpl) _then)
      : super(_value, _then);

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
    return _then(_$SuccessfulPaymentImpl(
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
      telegramPaymentChargeId: null == telegramPaymentChargeId
          ? _value.telegramPaymentChargeId
          : telegramPaymentChargeId // ignore: cast_nullable_to_non_nullable
              as String,
      providerPaymentChargeId: null == providerPaymentChargeId
          ? _value.providerPaymentChargeId
          : providerPaymentChargeId // ignore: cast_nullable_to_non_nullable
              as String,
      isRecurring: freezed == isRecurring
          ? _value.isRecurring
          : isRecurring // ignore: cast_nullable_to_non_nullable
              as bool?,
      isFirstRecurring: freezed == isFirstRecurring
          ? _value.isFirstRecurring
          : isFirstRecurring // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SuccessfulPaymentImpl implements _SuccessfulPayment {
  const _$SuccessfulPaymentImpl(
      {required this.currency,
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

  factory _$SuccessfulPaymentImpl.fromJson(Map<String, dynamic> json) =>
      _$$SuccessfulPaymentImplFromJson(json);

  /// Three-letter ISO 4217 currency code
  @override
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

  @override
  String toString() {
    return 'SuccessfulPayment(currency: $currency, totalAmount: $totalAmount, invoicePayload: $invoicePayload, shippingOptionId: $shippingOptionId, orderInfo: $orderInfo, telegramPaymentChargeId: $telegramPaymentChargeId, providerPaymentChargeId: $providerPaymentChargeId, isRecurring: $isRecurring, isFirstRecurring: $isFirstRecurring)';
  }

  /// Create a copy of SuccessfulPayment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessfulPaymentImplCopyWith<_$SuccessfulPaymentImpl> get copyWith =>
      __$$SuccessfulPaymentImplCopyWithImpl<_$SuccessfulPaymentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SuccessfulPaymentImplToJson(
      this,
    );
  }
}

abstract class _SuccessfulPayment implements SuccessfulPayment {
  const factory _SuccessfulPayment(
      {required final String currency,
      @JsonKey(name: 'total_amount') required final int totalAmount,
      @JsonKey(name: 'invoice_payload') required final String invoicePayload,
      @JsonKey(name: 'shipping_option_id') final String? shippingOptionId,
      @JsonKey(name: 'order_info') final OrderInfo? orderInfo,
      @JsonKey(name: 'telegram_payment_charge_id')
      required final String telegramPaymentChargeId,
      @JsonKey(name: 'provider_payment_charge_id')
      required final String providerPaymentChargeId,
      @JsonKey(name: 'is_recurring') final bool? isRecurring,
      @JsonKey(name: 'is_first_recurring')
      final bool? isFirstRecurring}) = _$SuccessfulPaymentImpl;

  factory _SuccessfulPayment.fromJson(Map<String, dynamic> json) =
      _$SuccessfulPaymentImpl.fromJson;

  /// Three-letter ISO 4217 currency code
  @override
  String get currency;

  /// Total price in the smallest units of the currency (integer, not
  /// float/double). For example, for a price of US$ 1.45 pass amount = 145.
  /// See the exp parameter in
  /// [currencies.json](https://core.telegram.org/bots/payments/currencies.json),
  /// it shows the number of digits past the decimal point for each currency
  /// (2 for the majority of currencies).
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

  /// Telegram payment identifier
  @override
  @JsonKey(name: 'telegram_payment_charge_id')
  String get telegramPaymentChargeId;

  /// Provider payment identifier
  @override
  @JsonKey(name: 'provider_payment_charge_id')
  String get providerPaymentChargeId;

  /// Optional. True, if the payment is a recurring payment for a subscription
  @override
  @JsonKey(name: 'is_recurring')
  bool? get isRecurring;

  /// Optional. True, if the payment is the first payment for a subscription
  @override
  @JsonKey(name: 'is_first_recurring')
  bool? get isFirstRecurring;

  /// Create a copy of SuccessfulPayment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessfulPaymentImplCopyWith<_$SuccessfulPaymentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
