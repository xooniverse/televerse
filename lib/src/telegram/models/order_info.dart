part of 'payments.dart';

/// This object represents information about an order.
class OrderInfo {
  /// User name
  final String? name;

  /// User's phone number
  final String? phoneNumber;

  /// User email
  final String? email;

  /// User shipping address
  final ShippingAddress? shippingAddress;

  /// Creates a new [OrderInfo] object.
  const OrderInfo({
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
