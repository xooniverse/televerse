// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'giveaway_completed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GiveawayCompleted _$GiveawayCompletedFromJson(Map<String, dynamic> json) =>
    _GiveawayCompleted(
      winnerCount: (json['winner_count'] as num).toInt(),
      unclaimedPrizeCount: (json['unclaimed_prize_count'] as num?)?.toInt(),
      giveawayMessage: json['giveaway_message'] == null
          ? null
          : Message.fromJson(json['giveaway_message'] as Map<String, dynamic>),
      isStarGiveaway: json['is_star_giveaway'] as bool?,
    );

Map<String, dynamic> _$GiveawayCompletedToJson(_GiveawayCompleted instance) =>
    <String, dynamic>{
      'winner_count': instance.winnerCount,
      if (instance.unclaimedPrizeCount case final value?)
        'unclaimed_prize_count': value,
      if (instance.giveawayMessage case final value?) 'giveaway_message': value,
      if (instance.isStarGiveaway case final value?) 'is_star_giveaway': value,
    };
