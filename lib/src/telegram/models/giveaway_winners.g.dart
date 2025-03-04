// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'giveaway_winners.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GiveawayWinnersImpl _$$GiveawayWinnersImplFromJson(
        Map<String, dynamic> json) =>
    _$GiveawayWinnersImpl(
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

Map<String, dynamic> _$$GiveawayWinnersImplToJson(
        _$GiveawayWinnersImpl instance) =>
    <String, dynamic>{
      'chat': instance.chat,
      'giveaway_message_id': instance.giveawayMessageId,
      'winners_selection_date': instance.winnersSelectionDate,
      'winner_count': instance.winnerCount,
      'winners': instance.winners,
      if (instance.additionalChatCount case final value?)
        'additional_chat_count': value,
      if (instance.premiumSubscriptionMonthCount case final value?)
        'premium_subscription_month_count': value,
      if (instance.unclaimedPrizeCount case final value?)
        'unclaimed_prize_count': value,
      if (instance.onlyNewMembers case final value?) 'only_new_members': value,
      if (instance.wasRefunded case final value?) 'was_refunded': value,
      if (instance.prizeDescription case final value?)
        'prize_description': value,
      if (instance.prizeStarCount case final value?) 'prize_star_count': value,
    };
