// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/abstractions.dart';

import 'user.dart';
import 'order_info.dart';

part 'pre_checkout_query.freezed.dart';
part 'pre_checkout_query.g.dart';

/// This object contains information about an incoming pre-checkout query.
@freezed
class PreCheckoutQuery with _$PreCheckoutQuery implements WithUser {
  /// Constructs a [PreCheckoutQuery] object
  const factory PreCheckoutQuery({
    /// Unique query identifier
    @JsonKey(name: 'id') required String id,

    /// User who sent the query
    @JsonKey(name: 'from') required User from,

    /// Three-letter ISO 4217 currency code
    @JsonKey(name: 'currency') required String currency,

    /// Total price in the smallest units of the currency (integer, not
    /// float/double). For example, for a price of US$ 1.45 pass amount = 145.
    /// See the exp parameter in currencies.json, it shows the number of digits
    /// past the decimal point for each currency (2 for the majority of
    /// currencies).
    @JsonKey(name: 'total_amount') required int totalAmount,

    /// Bot specified invoice payload
    @JsonKey(name: 'invoice_payload') required String invoicePayload,

    /// Optional. Identifier of the shipping option chosen by the user
    @JsonKey(name: 'shipping_option_id') String? shippingOptionId,

    /// Optional. Order info provided by the user
    @JsonKey(name: 'order_info') OrderInfo? orderInfo,
  }) = _PreCheckoutQuery;

  /// Creates a [PreCheckoutQuery] object from a JSON object
  factory PreCheckoutQuery.fromJson(Map<String, dynamic> json) =>
      _$PreCheckoutQueryFromJson(json);
}
