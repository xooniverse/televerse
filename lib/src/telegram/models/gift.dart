part of 'models.dart';

/// Represents a gift that can be sent by the bot.
class Gift {
  /// Unique identifier of the gift.
  final String id;

  /// The sticker that represents the gift.
  final Sticker sticker;

  /// The number of Telegram Stars that must be paid to send the sticker.
  final int starCount;

  /// Optional. The total number of gifts of this type that can be sent; for limited gifts only.
  final int? totalCount;

  /// Optional. The number of remaining gifts of this type that can be sent; for limited gifts only.
  final int? remainingCount;

  /// Optional. The number of Telegram Stars that must be paid to upgrade the gift to a unique one.
  final int? upgradeStarCount;

  /// Creates a [Gift] object.
  const Gift({
    required this.id,
    required this.sticker,
    required this.starCount,
    this.totalCount,
    this.remainingCount,
    this.upgradeStarCount,
  });

  /// Creates a [Gift] object from a JSON map.
  factory Gift.fromJson(Map<String, dynamic> json) {
    return Gift(
      id: json['id'],
      sticker: Sticker.fromJson(json['sticker']),
      starCount: json['star_count'],
      totalCount: json['total_count'],
      remainingCount: json['remaining_count'],
      upgradeStarCount: json['upgrade_star_count'],
    );
  }

  /// Converts this object to a JSON map.
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'sticker': sticker.toJson(),
      'star_count': starCount,
      'total_count': totalCount,
      'remaining_count': remainingCount,
      'upgrade_star_count': upgradeStarCount,
    }..removeWhere(_nullFilter);
  }
}
