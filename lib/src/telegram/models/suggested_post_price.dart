// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'suggested_post_price.freezed.dart';
part 'suggested_post_price.g.dart';

/// Describes the price of a suggested post.
///
/// This object contains information about the pricing for a suggested post,
/// including the currency and amount that will be paid.
@freezed
abstract class SuggestedPostPrice with _$SuggestedPostPrice {
  /// Creates a new [SuggestedPostPrice] object.
  const factory SuggestedPostPrice({
    /// Currency in which the post will be paid.
    ///
    /// Currently, must be one of:
    /// - "XTR" for Telegram Stars
    /// - "TON" for toncoins
    @JsonKey(name: 'currency') required String currency,

    /// The amount of the currency that will be paid for the post in the smallest units of the currency.
    ///
    /// This means:
    /// - For Telegram Stars: the actual number of stars (must be between 5 and 100000)
    /// - For toncoins: nanotoncoins (must be between 10000000 and 10000000000000)
    @JsonKey(name: 'amount') required int amount,
  }) = _SuggestedPostPrice;

  /// Creates a new [SuggestedPostPrice] object from a JSON [Map].
  factory SuggestedPostPrice.fromJson(Map<String, dynamic> json) =>
      _$SuggestedPostPriceFromJson(json);
}

/// Extension for SuggestedPostPrice to add convenience methods
extension SuggestedPostPriceExt on SuggestedPostPrice {
  /// Returns true if the currency is Telegram Stars (XTR).
  bool get isStars => currency == 'XTR';

  /// Returns true if the currency is toncoins (TON).
  bool get isToncoins => currency == 'TON';
}
