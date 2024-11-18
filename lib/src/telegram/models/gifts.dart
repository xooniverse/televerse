part of 'models.dart';

/// Represents a list of gifts.
class Gifts {
  /// The list of gifts.
  final List<Gift> gifts;

  /// Creates a [Gifts] object.
  const Gifts({
    required this.gifts,
  });

  /// Creates a [Gifts] object from a JSON map.
  factory Gifts.fromJson(Map<String, dynamic> json) {
    return Gifts(
      gifts: List<Gift>.from(
        (json['gifts'] as List).map((gift) => Gift.fromJson(gift)),
      ),
    );
  }

  /// Converts this object to a JSON map.
  Map<String, dynamic> toJson() {
    return {
      'gifts': gifts.map((gift) => gift.toJson()).toList(),
    };
  }
}
