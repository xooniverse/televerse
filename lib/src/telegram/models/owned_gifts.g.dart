// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'owned_gifts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OwnedGifts _$OwnedGiftsFromJson(Map<String, dynamic> json) => _OwnedGifts(
  totalCount: (json['total_count'] as num).toInt(),
  gifts: (json['gifts'] as List<dynamic>)
      .map((e) => OwnedGift.fromJson(e as Map<String, dynamic>))
      .toList(),
  nextOffset: json['next_offset'] as String?,
);

Map<String, dynamic> _$OwnedGiftsToJson(_OwnedGifts instance) =>
    <String, dynamic>{
      'total_count': instance.totalCount,
      'gifts': instance.gifts,
      'next_offset': ?instance.nextOffset,
    };
