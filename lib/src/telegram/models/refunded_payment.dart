part of 'models.dart';

/// This object contains basic information about a refunded payment.
class RefundedPayment {
  /// Three-letter ISO 4217 currency code, or “XTR” for payments in Telegram Stars. Currently, always “XTR”.
  final String currency;

  /// Total refunded price in the smallest units of the currency (integer, not float/double). For example, for a price of US$ 1.45, total_amount = 145.
  final int totalAmount;

  /// Bot-specified invoice payload.
  final String invoicePayload;

  /// Telegram payment identifier.
  final String telegramPaymentChargeId;

  /// Optional. Provider payment identifier.
  final String? providerPaymentChargeId;

  /// Constructs a [RefundedPayment] object.
  const RefundedPayment({
    required this.currency,
    required this.totalAmount,
    required this.invoicePayload,
    required this.telegramPaymentChargeId,
    this.providerPaymentChargeId,
  });

  /// Creates a [RefundedPayment] object from JSON.
  factory RefundedPayment.fromJson(Map<String, dynamic> json) {
    return RefundedPayment(
      currency: json['currency'],
      totalAmount: json['total_amount'],
      invoicePayload: json['invoice_payload'],
      telegramPaymentChargeId: json['telegram_payment_charge_id'],
      providerPaymentChargeId: json['provider_payment_charge_id'],
    );
  }

  /// Converts a [RefundedPayment] object to JSON.
  Map<String, dynamic> toJson() {
    return {
      'currency': currency,
      'total_amount': totalAmount,
      'invoice_payload': invoicePayload,
      'telegram_payment_charge_id': telegramPaymentChargeId,
      'provider_payment_charge_id': providerPaymentChargeId,
    }..removeWhere(_nullFilter);
  }
}
