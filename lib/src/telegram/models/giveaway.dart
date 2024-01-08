part of 'models.dart';

/// This object represents a message about a scheduled giveaway.
class Giveaway {
  /// The list of chats which the user must join to participate in the giveaway
  final List<Chat> chats;

  /// Point in time (Unix timestamp) when winners of the giveaway will be selected
  final int winnersSelectionDate;

  /// The number of users which are supposed to be selected as winners of the giveaway
  final int winnerCount;

  /// True, if only users who join the chats after the giveaway started should be eligible to win
  final bool? onlyNewMembers;

  /// True, if the list of giveaway winners will be visible to everyone
  final bool? hasPublicWinners;

  /// Description of additional giveaway prize
  final String? prizeDescription;

  /// A list of two-letter ISO 3166-1 alpha-2 country codes indicating the countries from which eligible users for the giveaway must come
  final List<String>? countryCodes;

  /// The number of months the Telegram Premium subscription won from the giveaway will be active for
  final int? premiumSubscriptionMonthCount;

  /// Constructor
  const Giveaway({
    required this.chats,
    required this.winnersSelectionDate,
    required this.winnerCount,
    this.onlyNewMembers,
    this.hasPublicWinners,
    this.prizeDescription,
    this.countryCodes,
    this.premiumSubscriptionMonthCount,
  });

  /// Constructor from JSON data
  factory Giveaway.fromJson(Map<String, dynamic> json) {
    return Giveaway(
      chats:
          (json['chats'] as List).map((item) => Chat.fromJson(item)).toList(),
      winnersSelectionDate: json['winners_selection_date'],
      winnerCount: json['winner_count'],
      onlyNewMembers: json['only_new_members'],
      hasPublicWinners: json['has_public_winners'],
      prizeDescription: json['prize_description'],
      countryCodes: json['country_codes']?.cast<String>(),
      premiumSubscriptionMonthCount: json['premium_subscription_month_count'],
    );
  }

  /// Converts to JSON encodable [Map]
  Map<String, dynamic> toJson() {
    return {
      'chats': chats.map((chat) => chat.toJson()).toList(),
      'winners_selection_date': winnersSelectionDate,
      'winner_count': winnerCount,
      'only_new_members': onlyNewMembers,
      'has_public_winners': hasPublicWinners,
      'prize_description': prizeDescription,
      'country_codes': countryCodes,
      'premium_subscription_month_count': premiumSubscriptionMonthCount,
    }..removeWhere((_, v) => v == null);
  }
}
