import 'package:freezed_annotation/freezed_annotation.dart';

part 'labeled_price.freezed.dart';
part 'labeled_price.g.dart';

/// This object represents a portion of the price for goods or services.
@freezed
class LabeledPrice with _$LabeledPrice {
  /// Constructs a [LabeledPrice] object
  const factory LabeledPrice({
    /// Portion label
    required String label,

    /// Price of the product in the smallest units of the currency (integer, not
    /// float/double).
    ///
    /// For example, for a price of US$ 1.45 pass amount = 145. See the exp
    /// parameter in
    /// [currencies.json](https://core.telegram.org/bots/payments/currencies.json),
    /// it shows the number of digits past the decimal point for each currency
    /// (2 for the majority of currencies).
    required int amount,
  }) = _LabeledPrice;

  /// Converts a JSON object to a [LabeledPrice] object
  factory LabeledPrice.fromJson(Map<String, dynamic> json) =>
      _$LabeledPriceFromJson(json);
}
