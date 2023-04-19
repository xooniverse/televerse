part of payments;

/// This object represents a shipping address.
class ShippingAddress {
  /// ISO 3166-1 alpha-2 country code
  String countryCode;

  /// State, if applicable
  String state;

  /// City
  String city;

  /// First line for the address
  String streetLine1;

  /// Second line for the address
  String streetLine2;

  /// Address post code
  String postCode;

  /// Constructs a [ShippingAddress] object
  ShippingAddress({
    required this.countryCode,
    required this.state,
    required this.city,
    required this.streetLine1,
    required this.streetLine2,
    required this.postCode,
  });

  /// Converts a [ShippingAddress] object to a JSON object
  Map<String, dynamic> toJson() {
    return {
      'country_code': countryCode,
      'state': state,
      'city': city,
      'street_line1': streetLine1,
      'street_line2': streetLine2,
      'post_code': postCode,
    }..removeWhere((key, value) => value == null);
  }

  /// Creates a [ShippingAddress] object from JSON object
  factory ShippingAddress.fromJson(Map<String, dynamic> json) {
    return ShippingAddress(
      countryCode: json['country_code']!,
      state: json['state']!,
      city: json['city']!,
      streetLine1: json['street_line1']!,
      streetLine2: json['street_line2']!,
      postCode: json['post_code']!,
    );
  }
}
