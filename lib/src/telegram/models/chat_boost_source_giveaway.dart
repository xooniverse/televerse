part of 'models.dart';

/// The boost was obtained by the creation of a Telegram Premium giveaway. This boosts the chat 4 times for the duration of the corresponding Telegram Premium subscription.
class ChatBoostSourceGiveaway implements ChatBoostSource {
  /// Source of the boost, always `ChatBoostSourceType.giveaway`
  @override
  final ChatBoostSourceType type = ChatBoostSourceType.giveaway;

  /// Identifier of a message in the chat with the giveaway; the message could have been deleted already. May be 0 if the message isn't sent yet.
  final int giveawayMessageId;

  /// Optional. User that won the prize in the giveaway if any
  final User? user;

  /// Optional. True, if the giveaway was completed, but there was no user to win the prize
  final bool? isUnclaimed;

  /// Optional. The number of Telegram Stars to be split between giveaway winners; for Telegram Star giveaways only
  final int? prizeStarCount;

  /// Creates a source of a chat boost.
  const ChatBoostSourceGiveaway({
    this.user,
    this.isUnclaimed,
    this.giveawayMessageId = 0,
    this.prizeStarCount,
  });

  /// Converts the `ChatBoostSourceGiveaway` object to a JSON object.
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
      'user': user?.toJson(),
      'is_unclaimed': isUnclaimed,
      'giveaway_message_id': giveawayMessageId,
      'prize_star_count': prizeStarCount,
    }..removeWhere(_nullFilter);
  }

  /// Creates a `ChatBoostSourceGiveaway` object from a JSON object.
  factory ChatBoostSourceGiveaway.fromJson(Map<String, dynamic> json) {
    return ChatBoostSourceGiveaway(
      user: User.fromJson(json['user']),
      isUnclaimed: json['is_unclaimed'],
      giveawayMessageId: json['giveaway_message_id'],
      prizeStarCount: json['prize_star_count'],
    );
  }
}
