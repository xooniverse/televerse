part of 'models.dart';

/// This object contains basic information about a successful payment.
class SuccessfulPayment {
  /// Three-letter ISO 4217 currency code
  final String currency;

  /// Total price in the smallest units of the currency (integer, not float/double). For example, for a price of US$ 1.45 pass amount = 145. See the exp parameter in [currencies.json](https://core.telegram.org/bots/payments/currencies.json), it shows the number of digits past the decimal point for each currency (2 for the majority of currencies).
  final int totalAmount;

  /// Bot specified invoice payload
  final String invoicePayload;

  /// Optional. Identifier of the shipping option chosen by the user
  final String? shippingOptionId;

  /// Optional. Order info provided by the user
  final OrderInfo? orderInfo;

  /// Telegram payment identifier
  final String telegramPaymentChargeId;

  /// Provider payment identifier
  final String providerPaymentChargeId;

  /// Constructs a [SuccessfulPayment] object
  const SuccessfulPayment({
    required this.currency,
    required this.totalAmount,
    required this.invoicePayload,
    this.shippingOptionId,
    this.orderInfo,
    required this.telegramPaymentChargeId,
    required this.providerPaymentChargeId,
  });

  /// Converts a [SuccessfulPayment] object to a JSON object
  Map<String, dynamic> toJson() {
    return {
      'currency': currency,
      'total_amount': totalAmount,
      'invoice_payload': invoicePayload,
      'shipping_option_id': shippingOptionId,
      'order_info': orderInfo?.toJson(),
      'telegram_payment_charge_id': telegramPaymentChargeId,
      'provider_payment_charge_id': providerPaymentChargeId,
    }..removeWhere((_, v) => v == null);
  }

  /// Creates a [SuccessfulPayment] object from a JSON object
  factory SuccessfulPayment.fromJson(Map<String, dynamic> json) {
    return SuccessfulPayment(
      currency: json['currency']!,
      totalAmount: json['total_amount']!,
      invoicePayload: json['invoice_payload']!,
      shippingOptionId: json['shipping_option_id'],
      orderInfo: json['order_info'] != null
          ? OrderInfo.fromJson(json['order_info']!)
          : null,
      telegramPaymentChargeId: json['telegram_payment_charge_id']!,
      providerPaymentChargeId: json['provider_payment_charge_id']!,
    );
  }
}
