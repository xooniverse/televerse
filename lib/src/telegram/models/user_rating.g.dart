// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_rating.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserRating _$UserRatingFromJson(Map<String, dynamic> json) => _UserRating(
  level: (json['level'] as num).toInt(),
  rating: (json['rating'] as num).toInt(),
  currentLevelRating: (json['current_level_rating'] as num).toInt(),
  nextLevelRating: (json['next_level_rating'] as num?)?.toInt(),
);

Map<String, dynamic> _$UserRatingToJson(_UserRating instance) =>
    <String, dynamic>{
      'level': instance.level,
      'rating': instance.rating,
      'current_level_rating': instance.currentLevelRating,
      'next_level_rating': ?instance.nextLevelRating,
    };
