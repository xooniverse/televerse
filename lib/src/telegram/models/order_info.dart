part of 'payments.dart';

/// This object represents information about an order.
class OrderInfo {
  /// User name
  String? name;

  /// User's phone number
  String? phoneNumber;

  /// User email
  String? email;

  /// User shipping address
  ShippingAddress? shippingAddress;

  /// Creates a new [OrderInfo] object.
  OrderInfo({
    this.name,
    this.phoneNumber,
    this.email,
    this.shippingAddress,
  });

  /// Converts a [OrderInfo] object to a JSON object
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'phone_number': phoneNumber,
      'email': email,
      'shipping_address': shippingAddress?.toJson(),
    }..removeWhere((key, value) => value == null);
  }

  /// Creates a [OrderInfo] object from a JSON object
  factory OrderInfo.fromJson(Map<String, dynamic> json) {
    return OrderInfo(
      name: json['name'],
      phoneNumber: json['phone_number'],
      email: json['email'],
      shippingAddress: json['shipping_address'] != null
          ? ShippingAddress.fromJson(json['shipping_address'])
          : null,
    );
  }
}
