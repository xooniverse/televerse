// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'giveaway_winners.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GiveawayWinners _$GiveawayWinnersFromJson(Map<String, dynamic> json) =>
    _GiveawayWinners(
      chat: Chat.fromJson(json['chat'] as Map<String, dynamic>),
      giveawayMessageId: (json['giveaway_message_id'] as num).toInt(),
      winnersSelectionDate: (json['winners_selection_date'] as num).toInt(),
      winnerCount: (json['winner_count'] as num).toInt(),
      winners: (json['winners'] as List<dynamic>)
          .map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
      additionalChatCount: (json['additional_chat_count'] as num?)?.toInt(),
      premiumSubscriptionMonthCount:
          (json['premium_subscription_month_count'] as num?)?.toInt(),
      unclaimedPrizeCount: (json['unclaimed_prize_count'] as num?)?.toInt(),
      onlyNewMembers: json['only_new_members'] as bool?,
      wasRefunded: json['was_refunded'] as bool?,
      prizeDescription: json['prize_description'] as String?,
      prizeStarCount: (json['prize_star_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$GiveawayWinnersToJson(
  _GiveawayWinners instance,
) => <String, dynamic>{
  'chat': instance.chat,
  'giveaway_message_id': instance.giveawayMessageId,
  'winners_selection_date': instance.winnersSelectionDate,
  'winner_count': instance.winnerCount,
  'winners': instance.winners,
  'additional_chat_count': ?instance.additionalChatCount,
  'premium_subscription_month_count': ?instance.premiumSubscriptionMonthCount,
  'unclaimed_prize_count': ?instance.unclaimedPrizeCount,
  'only_new_members': ?instance.onlyNewMembers,
  'was_refunded': ?instance.wasRefunded,
  'prize_description': ?instance.prizeDescription,
  'prize_star_count': ?instance.prizeStarCount,
};
