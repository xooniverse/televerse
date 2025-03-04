// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'refunded_payment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RefundedPayment _$RefundedPaymentFromJson(Map<String, dynamic> json) {
  return _RefundedPayment.fromJson(json);
}

/// @nodoc
mixin _$RefundedPayment {
  /// Three-letter ISO 4217 currency code, or “XTR” for payments in Telegram
  /// Stars. Currently, always “XTR”.
  @JsonKey(name: 'currency')
  String get currency => throw _privateConstructorUsedError;

  /// Total refunded price in the smallest units of the currency (integer, not
  /// float/double). For example, for a price of US$ 1.45, total_amount = 145.
  @JsonKey(name: 'total_amount')
  int get totalAmount => throw _privateConstructorUsedError;

  /// Bot-specified invoice payload.
  @JsonKey(name: 'invoice_payload')
  String get invoicePayload => throw _privateConstructorUsedError;

  /// Telegram payment identifier.
  @JsonKey(name: 'telegram_payment_charge_id')
  String get telegramPaymentChargeId => throw _privateConstructorUsedError;

  /// Optional. Provider payment identifier.
  @JsonKey(name: 'provider_payment_charge_id')
  String? get providerPaymentChargeId => throw _privateConstructorUsedError;

  /// Serializes this RefundedPayment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RefundedPayment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RefundedPaymentCopyWith<RefundedPayment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefundedPaymentCopyWith<$Res> {
  factory $RefundedPaymentCopyWith(
          RefundedPayment value, $Res Function(RefundedPayment) then) =
      _$RefundedPaymentCopyWithImpl<$Res, RefundedPayment>;
  @useResult
  $Res call(
      {@JsonKey(name: 'currency') String currency,
      @JsonKey(name: 'total_amount') int totalAmount,
      @JsonKey(name: 'invoice_payload') String invoicePayload,
      @JsonKey(name: 'telegram_payment_charge_id')
      String telegramPaymentChargeId,
      @JsonKey(name: 'provider_payment_charge_id')
      String? providerPaymentChargeId});
}

/// @nodoc
class _$RefundedPaymentCopyWithImpl<$Res, $Val extends RefundedPayment>
    implements $RefundedPaymentCopyWith<$Res> {
  _$RefundedPaymentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RefundedPayment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currency = null,
    Object? totalAmount = null,
    Object? invoicePayload = null,
    Object? telegramPaymentChargeId = null,
    Object? providerPaymentChargeId = freezed,
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
      telegramPaymentChargeId: null == telegramPaymentChargeId
          ? _value.telegramPaymentChargeId
          : telegramPaymentChargeId // ignore: cast_nullable_to_non_nullable
              as String,
      providerPaymentChargeId: freezed == providerPaymentChargeId
          ? _value.providerPaymentChargeId
          : providerPaymentChargeId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RefundedPaymentImplCopyWith<$Res>
    implements $RefundedPaymentCopyWith<$Res> {
  factory _$$RefundedPaymentImplCopyWith(_$RefundedPaymentImpl value,
          $Res Function(_$RefundedPaymentImpl) then) =
      __$$RefundedPaymentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'currency') String currency,
      @JsonKey(name: 'total_amount') int totalAmount,
      @JsonKey(name: 'invoice_payload') String invoicePayload,
      @JsonKey(name: 'telegram_payment_charge_id')
      String telegramPaymentChargeId,
      @JsonKey(name: 'provider_payment_charge_id')
      String? providerPaymentChargeId});
}

/// @nodoc
class __$$RefundedPaymentImplCopyWithImpl<$Res>
    extends _$RefundedPaymentCopyWithImpl<$Res, _$RefundedPaymentImpl>
    implements _$$RefundedPaymentImplCopyWith<$Res> {
  __$$RefundedPaymentImplCopyWithImpl(
      _$RefundedPaymentImpl _value, $Res Function(_$RefundedPaymentImpl) _then)
      : super(_value, _then);

  /// Create a copy of RefundedPayment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currency = null,
    Object? totalAmount = null,
    Object? invoicePayload = null,
    Object? telegramPaymentChargeId = null,
    Object? providerPaymentChargeId = freezed,
  }) {
    return _then(_$RefundedPaymentImpl(
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
      telegramPaymentChargeId: null == telegramPaymentChargeId
          ? _value.telegramPaymentChargeId
          : telegramPaymentChargeId // ignore: cast_nullable_to_non_nullable
              as String,
      providerPaymentChargeId: freezed == providerPaymentChargeId
          ? _value.providerPaymentChargeId
          : providerPaymentChargeId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RefundedPaymentImpl implements _RefundedPayment {
  const _$RefundedPaymentImpl(
      {@JsonKey(name: 'currency') required this.currency,
      @JsonKey(name: 'total_amount') required this.totalAmount,
      @JsonKey(name: 'invoice_payload') required this.invoicePayload,
      @JsonKey(name: 'telegram_payment_charge_id')
      required this.telegramPaymentChargeId,
      @JsonKey(name: 'provider_payment_charge_id')
      this.providerPaymentChargeId});

  factory _$RefundedPaymentImpl.fromJson(Map<String, dynamic> json) =>
      _$$RefundedPaymentImplFromJson(json);

  /// Three-letter ISO 4217 currency code, or “XTR” for payments in Telegram
  /// Stars. Currently, always “XTR”.
  @override
  @JsonKey(name: 'currency')
  final String currency;

  /// Total refunded price in the smallest units of the currency (integer, not
  /// float/double). For example, for a price of US$ 1.45, total_amount = 145.
  @override
  @JsonKey(name: 'total_amount')
  final int totalAmount;

  /// Bot-specified invoice payload.
  @override
  @JsonKey(name: 'invoice_payload')
  final String invoicePayload;

  /// Telegram payment identifier.
  @override
  @JsonKey(name: 'telegram_payment_charge_id')
  final String telegramPaymentChargeId;

  /// Optional. Provider payment identifier.
  @override
  @JsonKey(name: 'provider_payment_charge_id')
  final String? providerPaymentChargeId;

  @override
  String toString() {
    return 'RefundedPayment(currency: $currency, totalAmount: $totalAmount, invoicePayload: $invoicePayload, telegramPaymentChargeId: $telegramPaymentChargeId, providerPaymentChargeId: $providerPaymentChargeId)';
  }

  /// Create a copy of RefundedPayment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefundedPaymentImplCopyWith<_$RefundedPaymentImpl> get copyWith =>
      __$$RefundedPaymentImplCopyWithImpl<_$RefundedPaymentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RefundedPaymentImplToJson(
      this,
    );
  }
}

abstract class _RefundedPayment implements RefundedPayment {
  const factory _RefundedPayment(
      {@JsonKey(name: 'currency') required final String currency,
      @JsonKey(name: 'total_amount') required final int totalAmount,
      @JsonKey(name: 'invoice_payload') required final String invoicePayload,
      @JsonKey(name: 'telegram_payment_charge_id')
      required final String telegramPaymentChargeId,
      @JsonKey(name: 'provider_payment_charge_id')
      final String? providerPaymentChargeId}) = _$RefundedPaymentImpl;

  factory _RefundedPayment.fromJson(Map<String, dynamic> json) =
      _$RefundedPaymentImpl.fromJson;

  /// Three-letter ISO 4217 currency code, or “XTR” for payments in Telegram
  /// Stars. Currently, always “XTR”.
  @override
  @JsonKey(name: 'currency')
  String get currency;

  /// Total refunded price in the smallest units of the currency (integer, not
  /// float/double). For example, for a price of US$ 1.45, total_amount = 145.
  @override
  @JsonKey(name: 'total_amount')
  int get totalAmount;

  /// Bot-specified invoice payload.
  @override
  @JsonKey(name: 'invoice_payload')
  String get invoicePayload;

  /// Telegram payment identifier.
  @override
  @JsonKey(name: 'telegram_payment_charge_id')
  String get telegramPaymentChargeId;

  /// Optional. Provider payment identifier.
  @override
  @JsonKey(name: 'provider_payment_charge_id')
  String? get providerPaymentChargeId;

  /// Create a copy of RefundedPayment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefundedPaymentImplCopyWith<_$RefundedPaymentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
