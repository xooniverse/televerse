// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipping_address.freezed.dart';
part 'shipping_address.g.dart';

/// This object represents a shipping address.
@freezed
class ShippingAddress with _$ShippingAddress {
  /// Constructs a [ShippingAddress] object
  const factory ShippingAddress({
    /// ISO 3166-1 alpha-2 country code
    @JsonKey(name: 'country_code') required String countryCode,

    /// State, if applicable
    @JsonKey(name: 'state') required String state,

    /// City
    @JsonKey(name: 'city') required String city,

    /// First line for the address
    @JsonKey(name: 'street_line1') required String streetLine1,

    /// Second line for the address
    @JsonKey(name: 'street_line2') required String streetLine2,

    /// Address post code
    @JsonKey(name: 'post_code') required String postCode,
  }) = _ShippingAddress;

  /// Creates a [ShippingAddress] object from JSON object
  factory ShippingAddress.fromJson(Map<String, dynamic> json) =>
      _$ShippingAddressFromJson(json);
}
