part of payments;

/// This object represents one shipping option.
class ShippingOption {
  /// Shipping option identifier
  String id;

  /// Option title
  String title;

  /// List of price portions
  List<LabeledPrice> prices;

  ShippingOption({
    required this.id,
    required this.title,
    required this.prices,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'prices': prices.map((e) => e.toJson()).toList(),
    }..removeWhere((key, value) => value == null);
  }

  factory ShippingOption.fromJson(Map<String, dynamic> json) {
    return ShippingOption(
      id: json['id']!,
      title: json['title']!,
      prices: (json['prices'] as List)
          .map((e) => LabeledPrice.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}
