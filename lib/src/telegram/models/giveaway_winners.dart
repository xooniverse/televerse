import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/abstractions.dart';
import 'chat.dart';
import 'user.dart';

part 'giveaway_winners.freezed.dart';
part 'giveaway_winners.g.dart';

/// This object represents a message about the completion of a giveaway with
/// public winners.
@freezed
class GiveawayWinners with _$GiveawayWinners implements WithChat {
  /// Constructor
  const factory GiveawayWinners({
    /// The chat that created the giveaway
    @JsonKey(name: 'chat') required Chat chat,

    /// Identifier of the messsage with the giveaway in the chat
    @JsonKey(name: 'giveaway_message_id') required int giveawayMessageId,

    /// Point in time (Unix timestamp) when winners of the giveaway were
    /// selected
    @JsonKey(name: 'winners_selection_date') required int winnersSelectionDate,

    /// Total number of winners in the giveaway
    @JsonKey(name: 'winner_count') required int winnerCount,

    /// List of up to 100 winners of the giveaway
    @JsonKey(name: 'winners') required List<User> winners,

    /// The number of other chats the user had to join in order to be eligible
    /// for the giveaway
    @JsonKey(name: 'additional_chat_count') int? additionalChatCount,

    /// The number of months the Telegram Premium subscription won from the
    /// giveaway will be active for
    @JsonKey(name: 'premium_subscription_month_count')
    int? premiumSubscriptionMonthCount,

    /// Number of undistributed prizes
    @JsonKey(name: 'unclaimed_prize_count') int? unclaimedPrizeCount,

    /// True, if only users who had joined the chats after the giveaway started
    /// were eligible to win
    @JsonKey(name: 'only_new_members') bool? onlyNewMembers,

    /// True, if the giveaway was canceled because the payment for it was
    /// refunded
    @JsonKey(name: 'was_refunded') bool? wasRefunded,

    /// Description of additional giveaway prize
    @JsonKey(name: 'prize_description') String? prizeDescription,

    /// Optional. The number of Telegram Stars to be split between giveaway
    /// winners; for Telegram Star giveaways only
    @JsonKey(name: 'prize_star_count') int? prizeStarCount,
  }) = _GiveawayWinners;

  /// Constructor from JSON data
  factory GiveawayWinners.fromJson(Map<String, dynamic> json) =>
      _$GiveawayWinnersFromJson(json);
}
