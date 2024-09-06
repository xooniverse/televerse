part of 'models.dart';

/// Represents a paid media purchase made by a user.
class PaidMediaPurchased {
  /// The user who purchased the media.
  final User from;

  /// A bot-specified payload related to the paid media.
  final String paidMediaPayload;

  /// Creates a [PaidMediaPurchased] object.
  const PaidMediaPurchased({
    required this.from,
    required this.paidMediaPayload,
  });

  /// Creates a [PaidMediaPurchased] object from a JSON map.
  ///
  /// The JSON map should contain `from` and `paid_media_payload` fields.
  factory PaidMediaPurchased.fromJson(Map<String, dynamic> json) {
    return PaidMediaPurchased(
      from: User.fromJson(json['from']),
      paidMediaPayload: json['paid_media_payload'],
    );
  }

  /// Converts this object to a JSON map.
  ///
  /// Returns a map with `from` and `paid_media_payload` fields.
  Map<String, dynamic> toJson() {
    return {
      'from': from.toJson(),
      'paid_media_payload': paidMediaPayload,
    };
  }
}
