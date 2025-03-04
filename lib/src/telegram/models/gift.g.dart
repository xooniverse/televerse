// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GiftImpl _$$GiftImplFromJson(Map<String, dynamic> json) => _$GiftImpl(
      id: json['id'] as String,
      sticker: Sticker.fromJson(json['sticker'] as Map<String, dynamic>),
      starCount: (json['star_count'] as num).toInt(),
      totalCount: (json['total_count'] as num?)?.toInt(),
      remainingCount: (json['remaining_count'] as num?)?.toInt(),
      upgradeStarCount: (json['upgrade_star_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$GiftImplToJson(_$GiftImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sticker': instance.sticker,
      'star_count': instance.starCount,
      if (instance.totalCount case final value?) 'total_count': value,
      if (instance.remainingCount case final value?) 'remaining_count': value,
      if (instance.upgradeStarCount case final value?)
        'upgrade_star_count': value,
    };
