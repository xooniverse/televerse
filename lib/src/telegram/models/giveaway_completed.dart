import 'package:freezed_annotation/freezed_annotation.dart';
import 'message.dart';

part 'giveaway_completed.freezed.dart';
part 'giveaway_completed.g.dart';

/// This object represents a service message about the completion of a giveaway
/// without public winners.
@freezed
class GiveawayCompleted with _$GiveawayCompleted {
  /// Constructor
  const factory GiveawayCompleted({
    /// Number of winners in the giveaway
    @JsonKey(name: 'winner_count') required int winnerCount,

    /// Number of undistributed prizes
    @JsonKey(name: 'unclaimed_prize_count') int? unclaimedPrizeCount,

    /// Message with the giveaway that was completed, if it wasn't deleted
    @JsonKey(name: 'giveaway_message') Message? giveawayMessage,

    /// Optional. True, if the giveaway is a Telegram Star giveaway. Otherwise,
    /// currently, the giveaway is a Telegram Premium giveaway.
    @JsonKey(name: 'is_star_giveaway') bool? isStarGiveaway,
  }) = _GiveawayCompleted;

  /// Constructor from JSON data
  factory GiveawayCompleted.fromJson(Map<String, dynamic> json) =>
      _$GiveawayCompletedFromJson(json);
}
