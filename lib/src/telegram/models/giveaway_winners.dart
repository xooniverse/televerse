part of 'models.dart';

/// This object represents a message about the completion of a giveaway with public winners.
class GiveawayWinners {
  /// The chat that created the giveaway
  final Chat chat;

  /// Identifier of the messsage with the giveaway in the chat
  final int giveawayMessageId;

  /// Point in time (Unix timestamp) when winners of the giveaway were selected
  final int winnersSelectionDate;

  /// Total number of winners in the giveaway
  final int winnerCount;

  /// List of up to 100 winners of the giveaway
  final List<User> winners;

  /// The number of other chats the user had to join in order to be eligible for the giveaway
  final int? additionalChatCount;

  /// The number of months the Telegram Premium subscription won from the giveaway will be active for
  final int? premiumSubscriptionMonthCount;

  /// Number of undistributed prizes
  final int? unclaimedPrizeCount;

  /// True, if only users who had joined the chats after the giveaway started were eligible to win
  final bool? onlyNewMembers;

  /// True, if the giveaway was canceled because the payment for it was refunded
  final bool? wasRefunded;

  /// Description of additional giveaway prize
  final String? prizeDescription;

  /// Constructor
  GiveawayWinners({
    required this.chat,
    required this.giveawayMessageId,
    required this.winnersSelectionDate,
    required this.winnerCount,
    required this.winners,
    this.additionalChatCount,
    this.premiumSubscriptionMonthCount,
    this.unclaimedPrizeCount,
    this.onlyNewMembers,
    this.wasRefunded,
    this.prizeDescription,
  });

  /// Constructor from JSON data
  factory GiveawayWinners.fromJson(Map<String, dynamic> json) {
    return GiveawayWinners(
      chat: Chat.fromJson(json['chat']),
      giveawayMessageId: json['giveaway_message_id'],
      winnersSelectionDate: json['winners_selection_date'],
      winnerCount: json['winner_count'],
      winners:
          (json['winners'] as List).map((item) => User.fromJson(item)).toList(),
      additionalChatCount: json['additional_chat_count'],
      premiumSubscriptionMonthCount: json['premium_subscription_month_count'],
      unclaimedPrizeCount: json['unclaimed_prize_count'],
      onlyNewMembers: json['only_new_members'],
      wasRefunded: json['was_refunded'],
      prizeDescription: json['prize_description'],
    );
  }

  /// Converts to JSON encodable [Map]
  Map<String, dynamic> toJson() {
    return {
      'chat': chat.toJson(),
      'giveaway_message_id': giveawayMessageId,
      'winners_selection_date': winnersSelectionDate,
      'winner_count': winnerCount,
      'winners': winners.map((user) => user.toJson()).toList(),
      'additional_chat_count': additionalChatCount,
      'premium_subscription_month_count': premiumSubscriptionMonthCount,
      'unclaimed_prize_count': unclaimedPrizeCount,
      'only_new_members': onlyNewMembers,
      'was_refunded': wasRefunded,
      'prize_description': prizeDescription,
    }..removeWhere((_, v) => v == null);
  }
}
