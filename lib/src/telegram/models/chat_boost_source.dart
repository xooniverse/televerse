// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/telegram.dart';

part 'chat_boost_source.freezed.dart';
part 'chat_boost_source.g.dart';

/// Interface to expose the `source` property on ChatBoostSource
abstract interface class _WithBoostSource {
  /// Source of the chat boost
  ChatBoostSourceType get source;
}

/// This object describes the source of a chat boost. It can be one of
/// - ChatBoostSourcePremium
/// - ChatBoostSourceGiftCode
/// - ChatBoostSourceGiveaway
@Freezed(unionKey: 'source', unionValueCase: FreezedUnionCase.snake)
sealed class ChatBoostSource
    with _$ChatBoostSource
    implements _WithBoostSource {
  /// The boost was obtained by subscribing to Telegram Premium or by gifting a
  /// Telegram Premium subscription to another user.
  const factory ChatBoostSource.premium({
    /// Source of the boost, always "premium"
    @JsonKey(name: 'source')
    @Default(ChatBoostSourceType.premium)
    final ChatBoostSourceType source,

    /// User that boosted the chat
    @JsonKey(name: 'user') required User user,
  }) = ChatBoostSourcePremium;

  /// The boost was obtained by the creation of Telegram Premium gift codes to
  /// boost a chat. Each such code boosts the chat 4 times for the duration of
  /// the corresponding Telegram Premium subscription.
  const factory ChatBoostSource.giftCode({
    /// Source of the boost, always "gift_code"
    @JsonKey(name: 'source')
    @Default(ChatBoostSourceType.giftCode)
    final ChatBoostSourceType source,

    /// User for which the gift code was created
    @JsonKey(name: 'user') required User user,
  }) = ChatBoostSourceGiftCode;

  /// The boost was obtained by the creation of a Telegram Premium or a Telegram
  /// Star giveaway. This boosts the chat 4 times for the duration of the
  /// corresponding Telegram Premium subscription for Telegram Premium giveaways
  /// and *prize_star_count* / 500 times for one year for Telegram Star
  /// giveaways.
  const factory ChatBoostSource.giveaway({
    /// Source of the boost, always "giveaway"
    @JsonKey(name: 'source')
    @Default(ChatBoostSourceType.giveaway)
    final ChatBoostSourceType source,

    /// Identifier of a message in the chat with the giveaway; the message could
    /// have been deleted already. May be 0 if the message isn't sent yet.
    @JsonKey(name: 'giveaway_message_id') required int giveawayMessageId,

    /// User that won the prize in the giveaway if any; for Telegram Premium
    /// giveaways only
    @JsonKey(name: 'user') User? user,

    /// The number of Telegram Stars to be split between giveaway winners; for
    /// Telegram Star giveaways only
    @JsonKey(name: 'prize_star_count') int? prizeStarCount,

    /// True, if the giveaway was completed, but there was no user to win the
    /// prize
    @JsonKey(name: 'is_unclaimed') bool? isUnclaimed,
  }) = ChatBoostSourceGiveaway;

  factory ChatBoostSource.fromJson(Map<String, dynamic> json) =>
      _$ChatBoostSourceFromJson(json);
}
