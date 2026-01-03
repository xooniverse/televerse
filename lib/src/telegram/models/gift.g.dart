// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Gift _$GiftFromJson(Map<String, dynamic> json) => _Gift(
  id: json['id'] as String,
  sticker: Sticker.fromJson(json['sticker'] as Map<String, dynamic>),
  starCount: (json['star_count'] as num).toInt(),
  totalCount: (json['total_count'] as num?)?.toInt(),
  remainingCount: (json['remaining_count'] as num?)?.toInt(),
  upgradeStarCount: (json['upgrade_star_count'] as num?)?.toInt(),
  publisherChat: json['publisher_chat'] == null
      ? null
      : Chat.fromJson(json['publisher_chat'] as Map<String, dynamic>),
  personalRemainingCount: (json['personal_remaining_count'] as num?)?.toInt(),
  personalTotalCount: (json['personal_total_count'] as num?)?.toInt(),
  isPremium: json['is_premium'] as bool?,
  hasColors: json['has_colors'] as bool?,
);

Map<String, dynamic> _$GiftToJson(_Gift instance) => <String, dynamic>{
  'id': instance.id,
  'sticker': instance.sticker,
  'star_count': instance.starCount,
  'total_count': ?instance.totalCount,
  'remaining_count': ?instance.remainingCount,
  'upgrade_star_count': ?instance.upgradeStarCount,
  'publisher_chat': ?instance.publisherChat,
  'personal_remaining_count': ?instance.personalRemainingCount,
  'personal_total_count': ?instance.personalTotalCount,
  'is_premium': ?instance.isPremium,
  'has_colors': ?instance.hasColors,
};
