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
    );

Map<String, dynamic> _$GiftToJson(_Gift instance) => <String, dynamic>{
      'id': instance.id,
      'sticker': instance.sticker,
      'star_count': instance.starCount,
      if (instance.totalCount case final value?) 'total_count': value,
      if (instance.remainingCount case final value?) 'remaining_count': value,
      if (instance.upgradeStarCount case final value?)
        'upgrade_star_count': value,
      if (instance.publisherChat case final value?) 'publisher_chat': value,
    };
