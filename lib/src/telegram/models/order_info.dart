part of payments;

/// This object represents information about an order.
class OrderInfo {
  /// User name
  String name;

  /// User's phone number
  String phoneNumber;

  /// User email
  String email;

  /// User shipping address
  ShippingAddress shippingAddress;
  OrderInfo({
    required this.name,
    required this.phoneNumber,
    required this.email,
    required this.shippingAddress,
  });
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'phone_number': phoneNumber,
      'email': email,
      'shipping_address': shippingAddress.toJson(),
    }..removeWhere((key, value) => value == null);
  }

  factory OrderInfo.fromJson(Map<String, dynamic> json) {
    return OrderInfo(
      name: json['name']!,
      phoneNumber: json['phone_number']!,
      email: json['email']!,
      shippingAddress: ShippingAddress.fromJson(json['shipping_address']!),
    );
  }
}
