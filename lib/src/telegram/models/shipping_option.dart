// ignore_for_file: invalid_annotation_target
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
    @JsonKey(name: 'id') required String id,

    /// Option title
    @JsonKey(name: 'title') required String title,

    /// List of price portions
    @JsonKey(name: 'prices') required List<LabeledPrice> prices,
  }) = _ShippingOption;

  /// Creates a [ShippingOption] object from JSON object
  factory ShippingOption.fromJson(Map<String, dynamic> json) =>
      _$ShippingOptionFromJson(json);
}
