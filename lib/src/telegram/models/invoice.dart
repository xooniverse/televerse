import 'package:freezed_annotation/freezed_annotation.dart';

part 'invoice.freezed.dart';
part 'invoice.g.dart';

/// This object contains basic information about an invoice.
@freezed
class Invoice with _$Invoice {
  /// Constructs an [Invoice] object
  const factory Invoice({
    /// Product name
    @JsonKey(name: 'title') required String title,

    /// Product description
    @JsonKey(name: 'description') required String description,

    /// Unique bot deep-linking parameter that can be used to generate this
    /// invoice
    @JsonKey(name: 'start_parameter') required String startParameter,

    /// Three-letter ISO 4217 currency code
    @JsonKey(name: 'currency') required String currency,

    /// Total price in the smallest units of the currency (integer, not
    /// float/double). For example, for a price of US$ 1.45 pass amount = 145.
    /// See the exp parameter in currencies.json, it shows the number of digits
    /// past the decimal point for each currency (2 for the majority of
    /// currencies).
    @JsonKey(name: 'total_amount') required int totalAmount,
  }) = _Invoice;

  /// Creates an [Invoice] object from a JSON object
  factory Invoice.fromJson(Map<String, dynamic> json) =>
      _$InvoiceFromJson(json);
}
