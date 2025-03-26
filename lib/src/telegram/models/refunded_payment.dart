// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'refunded_payment.freezed.dart';
part 'refunded_payment.g.dart';

/// This object contains basic information about a refunded payment.
@freezed
abstract class RefundedPayment with _$RefundedPayment {
  /// Constructs a [RefundedPayment] object.
  const factory RefundedPayment({
    /// Three-letter ISO 4217 currency code, or “XTR” for payments in Telegram
    /// Stars. Currently, always “XTR”.
    @JsonKey(name: 'currency') required String currency,

    /// Total refunded price in the smallest units of the currency (integer, not
    /// float/double). For example, for a price of US$ 1.45, total_amount = 145.
    @JsonKey(name: 'total_amount') required int totalAmount,

    /// Bot-specified invoice payload.
    @JsonKey(name: 'invoice_payload') required String invoicePayload,

    /// Telegram payment identifier.
    @JsonKey(name: 'telegram_payment_charge_id')
    required String telegramPaymentChargeId,

    /// Optional. Provider payment identifier.
    @JsonKey(name: 'provider_payment_charge_id')
    String? providerPaymentChargeId,
  }) = _RefundedPayment;

  /// Creates a [RefundedPayment] object from JSON.
  factory RefundedPayment.fromJson(Map<String, dynamic> json) =>
      _$RefundedPaymentFromJson(json);
}
