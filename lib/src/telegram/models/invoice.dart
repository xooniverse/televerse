part of 'payments.dart';

/// This object contains basic information about an invoice.
class Invoice {
  /// Product name
  final String title;

  /// Product description
  final String description;

  /// Unique bot deep-linking parameter that can be used to generate this invoice
  final String startParameter;

  /// Three-letter ISO 4217 currency code
  final String currency;

  /// Total price in the smallest units of the currency (integer, not float/double). For example, for a price of US$ 1.45 pass amount = 145. See the exp parameter in currencies.json, it shows the number of digits past the decimal point for each currency (2 for the majority of currencies).
  final int totalAmount;

  /// Constructs an [Invoice] object
  const Invoice({
    required this.title,
    required this.description,
    required this.startParameter,
    required this.currency,
    required this.totalAmount,
  });

  /// Converts an [Invoice] object to a JSON object
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
      'start_parameter': startParameter,
      'currency': currency,
      'total_amount': totalAmount,
    }..removeWhere((key, value) => value == null);
  }

  /// Converts a JSON object to an [Invoice] object
  factory Invoice.fromJson(Map<String, dynamic> json) {
    return Invoice(
      title: json['title']!,
      description: json['description']!,
      startParameter: json['start_parameter']!,
      currency: json['currency']!,
      totalAmount: json['total_amount']!,
    );
  }
}
