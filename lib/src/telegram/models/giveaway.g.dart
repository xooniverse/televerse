// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'giveaway.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Giveaway _$GiveawayFromJson(Map<String, dynamic> json) => _Giveaway(
  chats: (json['chats'] as List<dynamic>)
      .map((e) => Chat.fromJson(e as Map<String, dynamic>))
      .toList(),
  winnersSelectionDate: (json['winners_selection_date'] as num).toInt(),
  winnerCount: (json['winner_count'] as num).toInt(),
  onlyNewMembers: json['only_new_members'] as bool?,
  hasPublicWinners: json['has_public_winners'] as bool?,
  prizeDescription: json['prize_description'] as String?,
  countryCodes: (json['country_codes'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  premiumSubscriptionMonthCount:
      (json['premium_subscription_month_count'] as num?)?.toInt(),
  prizeStarCount: (json['prize_star_count'] as num?)?.toInt(),
);

Map<String, dynamic> _$GiveawayToJson(_Giveaway instance) => <String, dynamic>{
  'chats': instance.chats,
  'winners_selection_date': instance.winnersSelectionDate,
  'winner_count': instance.winnerCount,
  'only_new_members': ?instance.onlyNewMembers,
  'has_public_winners': ?instance.hasPublicWinners,
  'prize_description': ?instance.prizeDescription,
  'country_codes': ?instance.countryCodes,
  'premium_subscription_month_count': ?instance.premiumSubscriptionMonthCount,
  'prize_star_count': ?instance.prizeStarCount,
};
