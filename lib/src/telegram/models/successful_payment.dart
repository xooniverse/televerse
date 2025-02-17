import 'package:freezed_annotation/freezed_annotation.dart';

import 'order_info.dart';

part 'successful_payment.freezed.dart';
part 'successful_payment.g.dart';

/// This object contains basic information about a successful payment.
@freezed
class SuccessfulPayment with _$SuccessfulPayment {
  /// Constructs a [SuccessfulPayment] object
  const factory SuccessfulPayment({
    /// Three-letter ISO 4217 currency code
    required String currency,

    /// Total price in the smallest units of the currency (integer, not
    /// float/double). For example, for a price of US$ 1.45 pass amount = 145.
    /// See the exp parameter in
    /// [currencies.json](https://core.telegram.org/bots/payments/currencies.json),
    /// it shows the number of digits past the decimal point for each currency
    /// (2 for the majority of currencies).
    @JsonKey(name: 'total_amount') required int totalAmount,

    /// Bot specified invoice payload
    @JsonKey(name: 'invoice_payload') required String invoicePayload,

    /// Optional. Identifier of the shipping option chosen by the user
    @JsonKey(name: 'shipping_option_id') String? shippingOptionId,

    /// Optional. Order info provided by the user
    @JsonKey(name: 'order_info') OrderInfo? orderInfo,

    /// Telegram payment identifier
    @JsonKey(name: 'telegram_payment_charge_id')
    required String telegramPaymentChargeId,

    /// Provider payment identifier
    @JsonKey(name: 'provider_payment_charge_id')
    required String providerPaymentChargeId,

    /// Optional. True, if the payment is a recurring payment for a subscription
    @JsonKey(name: 'is_recurring') bool? isRecurring,

    /// Optional. True, if the payment is the first payment for a subscription
    @JsonKey(name: 'is_first_recurring') bool? isFirstRecurring,
  }) = _SuccessfulPayment;

  /// Creates a [SuccessfulPayment] object from a JSON object
  factory SuccessfulPayment.fromJson(Map<String, dynamic> json) =>
      _$SuccessfulPaymentFromJson(json);
}
