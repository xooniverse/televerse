// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'story_area_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoryAreaTypeLocation _$StoryAreaTypeLocationFromJson(
  Map<String, dynamic> json,
) => StoryAreaTypeLocation(
  type:
      $enumDecodeNullable(_$StoryAreaTypeTypeEnumMap, json['type']) ??
      StoryAreaTypeType.location,
  latitude: (json['latitude'] as num).toDouble(),
  longitude: (json['longitude'] as num).toDouble(),
  address: json['address'] == null
      ? null
      : LocationAddress.fromJson(json['address'] as Map<String, dynamic>),
);

Map<String, dynamic> _$StoryAreaTypeLocationToJson(
  StoryAreaTypeLocation instance,
) => <String, dynamic>{
  'type': _$StoryAreaTypeTypeEnumMap[instance.type]!,
  'latitude': instance.latitude,
  'longitude': instance.longitude,
  'address': ?instance.address,
};

const _$StoryAreaTypeTypeEnumMap = {
  StoryAreaTypeType.location: 'location',
  StoryAreaTypeType.suggestedReaction: 'suggested_reaction',
  StoryAreaTypeType.link: 'link',
  StoryAreaTypeType.weather: 'weather',
  StoryAreaTypeType.uniqueGift: 'unique_gift',
};

StoryAreaTypeSuggestedReaction _$StoryAreaTypeSuggestedReactionFromJson(
  Map<String, dynamic> json,
) => StoryAreaTypeSuggestedReaction(
  type:
      $enumDecodeNullable(_$StoryAreaTypeTypeEnumMap, json['type']) ??
      StoryAreaTypeType.suggestedReaction,
  reactionType: ReactionType.fromJson(
    json['reaction_type'] as Map<String, dynamic>,
  ),
  isDark: json['is_dark'] as bool?,
  isFlipped: json['is_flipped'] as bool?,
);

Map<String, dynamic> _$StoryAreaTypeSuggestedReactionToJson(
  StoryAreaTypeSuggestedReaction instance,
) => <String, dynamic>{
  'type': _$StoryAreaTypeTypeEnumMap[instance.type]!,
  'reaction_type': instance.reactionType,
  'is_dark': ?instance.isDark,
  'is_flipped': ?instance.isFlipped,
};

StoryAreaTypeLink _$StoryAreaTypeLinkFromJson(Map<String, dynamic> json) =>
    StoryAreaTypeLink(
      type:
          $enumDecodeNullable(_$StoryAreaTypeTypeEnumMap, json['type']) ??
          StoryAreaTypeType.link,
      url: json['url'] as String,
    );

Map<String, dynamic> _$StoryAreaTypeLinkToJson(StoryAreaTypeLink instance) =>
    <String, dynamic>{
      'type': _$StoryAreaTypeTypeEnumMap[instance.type]!,
      'url': instance.url,
    };

StoryAreaTypeWeather _$StoryAreaTypeWeatherFromJson(
  Map<String, dynamic> json,
) => StoryAreaTypeWeather(
  type:
      $enumDecodeNullable(_$StoryAreaTypeTypeEnumMap, json['type']) ??
      StoryAreaTypeType.weather,
  temperature: (json['temperature'] as num).toDouble(),
  emoji: json['emoji'] as String,
  backgroundColor: (json['background_color'] as num).toInt(),
);

Map<String, dynamic> _$StoryAreaTypeWeatherToJson(
  StoryAreaTypeWeather instance,
) => <String, dynamic>{
  'type': _$StoryAreaTypeTypeEnumMap[instance.type]!,
  'temperature': instance.temperature,
  'emoji': instance.emoji,
  'background_color': instance.backgroundColor,
};

StoryAreaTypeUniqueGift _$StoryAreaTypeUniqueGiftFromJson(
  Map<String, dynamic> json,
) => StoryAreaTypeUniqueGift(
  type:
      $enumDecodeNullable(_$StoryAreaTypeTypeEnumMap, json['type']) ??
      StoryAreaTypeType.uniqueGift,
);

Map<String, dynamic> _$StoryAreaTypeUniqueGiftToJson(
  StoryAreaTypeUniqueGift instance,
) => <String, dynamic>{'type': _$StoryAreaTypeTypeEnumMap[instance.type]!};
