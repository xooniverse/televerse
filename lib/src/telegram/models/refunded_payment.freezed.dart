// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'refunded_payment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RefundedPayment {
  /// Three-letter ISO 4217 currency code, or “XTR” for payments in Telegram
  /// Stars. Currently, always “XTR”.
  @JsonKey(name: 'currency')
  String get currency;

  /// Total refunded price in the smallest units of the currency (integer, not
  /// float/double). For example, for a price of US$ 1.45, total_amount = 145.
  @JsonKey(name: 'total_amount')
  int get totalAmount;

  /// Bot-specified invoice payload.
  @JsonKey(name: 'invoice_payload')
  String get invoicePayload;

  /// Telegram payment identifier.
  @JsonKey(name: 'telegram_payment_charge_id')
  String get telegramPaymentChargeId;

  /// Optional. Provider payment identifier.
  @JsonKey(name: 'provider_payment_charge_id')
  String? get providerPaymentChargeId;

  /// Create a copy of RefundedPayment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RefundedPaymentCopyWith<RefundedPayment> get copyWith =>
      _$RefundedPaymentCopyWithImpl<RefundedPayment>(
        this as RefundedPayment,
        _$identity,
      );

  /// Serializes this RefundedPayment to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'RefundedPayment(currency: $currency, totalAmount: $totalAmount, invoicePayload: $invoicePayload, telegramPaymentChargeId: $telegramPaymentChargeId, providerPaymentChargeId: $providerPaymentChargeId)';
  }
}

/// @nodoc
abstract mixin class $RefundedPaymentCopyWith<$Res> {
  factory $RefundedPaymentCopyWith(
    RefundedPayment value,
    $Res Function(RefundedPayment) _then,
  ) = _$RefundedPaymentCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'currency') String currency,
    @JsonKey(name: 'total_amount') int totalAmount,
    @JsonKey(name: 'invoice_payload') String invoicePayload,
    @JsonKey(name: 'telegram_payment_charge_id') String telegramPaymentChargeId,
    @JsonKey(name: 'provider_payment_charge_id')
    String? providerPaymentChargeId,
  });
}

/// @nodoc
class _$RefundedPaymentCopyWithImpl<$Res>
    implements $RefundedPaymentCopyWith<$Res> {
  _$RefundedPaymentCopyWithImpl(this._self, this._then);

  final RefundedPayment _self;
  final $Res Function(RefundedPayment) _then;

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
    return _then(
      _self.copyWith(
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
        telegramPaymentChargeId: null == telegramPaymentChargeId
            ? _self.telegramPaymentChargeId
            : telegramPaymentChargeId // ignore: cast_nullable_to_non_nullable
                  as String,
        providerPaymentChargeId: freezed == providerPaymentChargeId
            ? _self.providerPaymentChargeId
            : providerPaymentChargeId // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [RefundedPayment].
extension RefundedPaymentPatterns on RefundedPayment {
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
    TResult Function(_RefundedPayment value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RefundedPayment() when $default != null:
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
    TResult Function(_RefundedPayment value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RefundedPayment():
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
    TResult? Function(_RefundedPayment value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RefundedPayment() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _RefundedPayment implements RefundedPayment {
  const _RefundedPayment({
    @JsonKey(name: 'currency') required this.currency,
    @JsonKey(name: 'total_amount') required this.totalAmount,
    @JsonKey(name: 'invoice_payload') required this.invoicePayload,
    @JsonKey(name: 'telegram_payment_charge_id')
    required this.telegramPaymentChargeId,
    @JsonKey(name: 'provider_payment_charge_id') this.providerPaymentChargeId,
  });
  factory _RefundedPayment.fromJson(Map<String, dynamic> json) =>
      _$RefundedPaymentFromJson(json);

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

  /// Create a copy of RefundedPayment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RefundedPaymentCopyWith<_RefundedPayment> get copyWith =>
      __$RefundedPaymentCopyWithImpl<_RefundedPayment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RefundedPaymentToJson(this);
  }

  @override
  String toString() {
    return 'RefundedPayment(currency: $currency, totalAmount: $totalAmount, invoicePayload: $invoicePayload, telegramPaymentChargeId: $telegramPaymentChargeId, providerPaymentChargeId: $providerPaymentChargeId)';
  }
}

/// @nodoc
abstract mixin class _$RefundedPaymentCopyWith<$Res>
    implements $RefundedPaymentCopyWith<$Res> {
  factory _$RefundedPaymentCopyWith(
    _RefundedPayment value,
    $Res Function(_RefundedPayment) _then,
  ) = __$RefundedPaymentCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'currency') String currency,
    @JsonKey(name: 'total_amount') int totalAmount,
    @JsonKey(name: 'invoice_payload') String invoicePayload,
    @JsonKey(name: 'telegram_payment_charge_id') String telegramPaymentChargeId,
    @JsonKey(name: 'provider_payment_charge_id')
    String? providerPaymentChargeId,
  });
}

/// @nodoc
class __$RefundedPaymentCopyWithImpl<$Res>
    implements _$RefundedPaymentCopyWith<$Res> {
  __$RefundedPaymentCopyWithImpl(this._self, this._then);

  final _RefundedPayment _self;
  final $Res Function(_RefundedPayment) _then;

  /// Create a copy of RefundedPayment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? currency = null,
    Object? totalAmount = null,
    Object? invoicePayload = null,
    Object? telegramPaymentChargeId = null,
    Object? providerPaymentChargeId = freezed,
  }) {
    return _then(
      _RefundedPayment(
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
        telegramPaymentChargeId: null == telegramPaymentChargeId
            ? _self.telegramPaymentChargeId
            : telegramPaymentChargeId // ignore: cast_nullable_to_non_nullable
                  as String,
        providerPaymentChargeId: freezed == providerPaymentChargeId
            ? _self.providerPaymentChargeId
            : providerPaymentChargeId // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}
