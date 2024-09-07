part of 'models.dart';

/// This object represents a service message about the creation of a scheduled giveaway. Currently holds no information.
class GiveawayCreated {
  /// Optional. The number of Telegram Stars to be split between giveaway winners; for Telegram Star giveaways only
  final int? prizeStarCount;

  /// Creates a `GiveawayCreated` object.
  const GiveawayCreated({
    this.prizeStarCount,
  });

  /// Creates a `GiveawayCreated` object from a JSON object.
  factory GiveawayCreated.fromJson(Map<String, dynamic> json) {
    return GiveawayCreated(
      prizeStarCount: json['prize_star_count'],
    );
  }

  /// Converts the `GiveawayCreated` object to a JSON object.
  Map<String, dynamic> toJson() {
    return {
      'prize_star_count': prizeStarCount,
    }..removeWhere(_nullFilter);
  }
}
