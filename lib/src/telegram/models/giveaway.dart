import 'package:freezed_annotation/freezed_annotation.dart';
import 'chat.dart';

part 'giveaway.freezed.dart';
part 'giveaway.g.dart';

/// This object represents a message about a scheduled giveaway.
@freezed
class Giveaway with _$Giveaway {
  /// Constructor
  const factory Giveaway({
    /// The list of chats which the user must join to participate in the
    /// giveaway
    @JsonKey(name: 'chats') required List<Chat> chats,

    /// Point in time (Unix timestamp) when winners of the giveaway will be
    /// selected
    @JsonKey(name: 'winners_selection_date') required int winnersSelectionDate,

    /// The number of users which are supposed to be selected as winners of the
    /// giveaway
    @JsonKey(name: 'winner_count') required int winnerCount,

    /// True, if only users who join the chats after the giveaway started should
    /// be eligible to win
    @JsonKey(name: 'only_new_members') bool? onlyNewMembers,

    /// True, if the list of giveaway winners will be visible to everyone
    @JsonKey(name: 'has_public_winners') bool? hasPublicWinners,

    /// Description of additional giveaway prize
    @JsonKey(name: 'prize_description') String? prizeDescription,

    /// A list of two-letter ISO 3166-1 alpha-2 country codes indicating the
    /// countries from which eligible users for the giveaway must come
    @JsonKey(name: 'country_codes') List<String>? countryCodes,

    /// The number of months the Telegram Premium subscription won from the
    /// giveaway will be active for
    @JsonKey(name: 'premium_subscription_month_count')
    int? premiumSubscriptionMonthCount,

    /// Optional. The number of Telegram Stars to be split between giveaway
    /// winners; for Telegram Star giveaways only
    @JsonKey(name: 'prize_star_count') int? prizeStarCount,
  }) = _Giveaway;

  /// Constructor from JSON data
  factory Giveaway.fromJson(Map<String, dynamic> json) =>
      _$GiveawayFromJson(json);
}
