part of 'payments.dart';

/// This object contains information about an incoming shipping query.
class ShippingQuery {
  /// Unique query identifier
  final String id;

  /// User who sent the query
  final User from;

  /// Bot specified invoice payload
  final String invoicePayload;

  /// User specified shipping address
  final ShippingAddress shippingAddress;

  /// Constructs a [ShippingQuery] object
  const ShippingQuery({
    required this.id,
    required this.from,
    required this.invoicePayload,
    required this.shippingAddress,
  });

  /// Converts a [ShippingQuery] object to a JSON object
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'from': from.toJson(),
      'invoice_payload': invoicePayload,
      'shipping_address': shippingAddress.toJson(),
    };
  }

  /// Creates a [ShippingQuery] object from a JSON object
  factory ShippingQuery.fromJson(Map<String, dynamic> json) {
    return ShippingQuery(
      id: json['id']!,
      from: User.fromJson(json['from']!),
      invoicePayload: json['invoice_payload']!,
      shippingAddress: ShippingAddress.fromJson(json['shipping_address']!),
    );
  }
}
