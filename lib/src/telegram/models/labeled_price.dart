part of 'payments.dart';

/// This object represents a portion of the price for goods or services.
class LabeledPrice {
  /// Portion label
  String label;

  /// Price of the product in the smallest units of the currency (integer, not float/double). For example, for a price of US$ 1.45 pass amount = 145. See the exp parameter in [currencies.json](https://core.telegram.org/bots/payments/currencies.json), it shows the number of digits past the decimal point for each currency (2 for the majority of currencies).
  int amount;

  /// Constructs a [LabeledPrice] object
  LabeledPrice({
    required this.label,
    required this.amount,
  });

  /// Converts a [LabeledPrice] object to a JSON object
  Map<String, dynamic> toJson() {
    return {
      'label': label,
      'amount': amount,
    };
  }

  /// Converts a JSON object to a [LabeledPrice] object
  factory LabeledPrice.fromJson(Map<String, dynamic> json) {
    return LabeledPrice(
      label: json['label']!,
      amount: json['amount']!,
    );
  }
}
