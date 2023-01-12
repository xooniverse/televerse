part of payments;

/// This object contains information about an incoming shipping query.
class ShippingQuery {
  /// Unique query identifier
  String id;

  /// User who sent the query
  User from;

  /// Bot specified invoice payload
  String invoicePayload;

  /// User specified shipping address
  ShippingAddress shippingAddress;
  ShippingQuery({
    required this.id,
    required this.from,
    required this.invoicePayload,
    required this.shippingAddress,
  });
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'from': from.toJson(),
      'invoice_payload': invoicePayload,
      'shipping_address': shippingAddress.toJson(),
    }..removeWhere((key, value) => value == null);
  }

  factory ShippingQuery.fromJson(Map<String, dynamic> json) {
    return ShippingQuery(
      id: json['id']!,
      from: User.fromJson(json['from']!),
      invoicePayload: json['invoice_payload']!,
      shippingAddress: ShippingAddress.fromJson(json['shipping_address']!),
    );
  }
}
