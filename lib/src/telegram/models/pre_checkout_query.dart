part of payments;

/// This object contains information about an incoming pre-checkout query.
class PreCheckoutQuery {
  ///  Unique query identifier
  String id;

  ///  User who sent the query
  User from;

  ///  Three-letter ISO 4217 currency code
  String currency;

  ///  Total price in the smallest units of the currency (integer, not float/double). For example, for a price of US$ 1.45 pass amount = 145. See the exp parameter in currencies.json, it shows the number of digits past the decimal point for each currency (2 for the majority of currencies).
  int totalAmount;

  ///  Bot specified invoice payload
  String invoicePayload;

  ///  Optional. Identifier of the shipping option chosen by the user
  String? shippingOptionId;

  ///  Optional. Order info provided by the user
  OrderInfo? orderInfo;

  /// Constructs a [PreCheckoutQuery] object
  PreCheckoutQuery({
    required this.id,
    required this.from,
    required this.currency,
    required this.totalAmount,
    required this.invoicePayload,
    this.shippingOptionId,
    this.orderInfo,
  });

  /// Converts a [PreCheckoutQuery] object to a JSON object
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'from': from.toJson(),
      'currency': currency,
      'total_amount': totalAmount,
      'invoice_payload': invoicePayload,
      'shipping_option_id': shippingOptionId,
      'order_info': orderInfo?.toJson(),
    }..removeWhere((key, value) => value == null);
  }

  /// Creates a [PreCheckoutQuery] object from a JSON object
  factory PreCheckoutQuery.fromJson(Map<String, dynamic> json) {
    return PreCheckoutQuery(
      id: json['id']!,
      from: User.fromJson(json['from']!),
      currency: json['currency']!,
      totalAmount: json['total_amount']!,
      invoicePayload: json['invoice_payload']!,
      shippingOptionId: json['shipping_option_id'],
      orderInfo: json['order_info'] == null
          ? null
          : OrderInfo.fromJson(json['order_info']!),
    );
  }
}
