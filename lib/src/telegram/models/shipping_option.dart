import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/labeled_price.dart';

part 'shipping_option.freezed.dart';
part 'shipping_option.g.dart';

/// This object represents one shipping option.
@freezed
class ShippingOption with _$ShippingOption {
  /// Constructs a [ShippingOption] object
  const factory ShippingOption({
    /// Shipping option identifier
    required String id,

    /// Option title
    required String title,

    /// List of price portions
    required List<LabeledPrice> prices,
  }) = _ShippingOption;

  /// Creates a [ShippingOption] object from JSON object
  factory ShippingOption.fromJson(Map<String, dynamic> json) =>
      _$ShippingOptionFromJson(json);
}
