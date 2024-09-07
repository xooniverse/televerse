part of 'models.dart';

/// This object represents a service message about the completion of a giveaway without public winners.
class GiveawayCompleted {
  /// Number of winners in the giveaway
  final int winnerCount;

  /// Number of undistributed prizes
  final int? unclaimedPrizeCount;

  /// Message with the giveaway that was completed, if it wasn't deleted
  final Message? giveawayMessage;

  /// Optional. True, if the giveaway is a Telegram Star giveaway. Otherwise, currently, the giveaway is a Telegram Premium giveaway.
  final bool? isStarGiveaway;

  /// Constructor
  const GiveawayCompleted({
    required this.winnerCount,
    this.unclaimedPrizeCount,
    this.giveawayMessage,
    this.isStarGiveaway,
  });

  /// Constructor from JSON data
  factory GiveawayCompleted.fromJson(Map<String, dynamic> json) {
    return GiveawayCompleted(
      winnerCount: json['winner_count'],
      unclaimedPrizeCount: json['unclaimed_prize_count'],
      giveawayMessage: json['giveaway_message'] != null
          ? Message.fromJson(json['giveaway_message'])
          : null,
      isStarGiveaway: json['is_star_giveaway'],
    );
  }

  /// Converts to JSON encodable [Map]
  Map<String, dynamic> toJson() {
    return {
      'winner_count': winnerCount,
      'unclaimed_prize_count': unclaimedPrizeCount,
      'giveaway_message': giveawayMessage?.toJson(),
      'is_star_giveaway': isStarGiveaway,
    }..removeWhere(_nullFilter);
  }
}
