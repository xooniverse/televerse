// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'story_area_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoryAreaTypeLocation _$StoryAreaTypeLocationFromJson(
        Map<String, dynamic> json) =>
    StoryAreaTypeLocation(
      type: json['type'] == null
          ? StoryAreaTypeType.location
          : StoryAreaType.fromJson(json['type'] as Map<String, dynamic>),
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      address: json['address'] == null
          ? null
          : LocationAddress.fromJson(json['address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StoryAreaTypeLocationToJson(
        StoryAreaTypeLocation instance) =>
    <String, dynamic>{
      'type': instance.type,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      if (instance.address case final value?) 'address': value,
    };

StoryAreaTypeSuggestedReaction _$StoryAreaTypeSuggestedReactionFromJson(
        Map<String, dynamic> json) =>
    StoryAreaTypeSuggestedReaction(
      type: json['type'] == null
          ? StoryAreaTypeType.suggestedReaction
          : StoryAreaType.fromJson(json['type'] as Map<String, dynamic>),
      reactionType:
          ReactionType.fromJson(json['reaction_type'] as Map<String, dynamic>),
      isDark: json['is_dark'] as bool?,
      isFlipped: json['is_flipped'] as bool?,
    );

Map<String, dynamic> _$StoryAreaTypeSuggestedReactionToJson(
        StoryAreaTypeSuggestedReaction instance) =>
    <String, dynamic>{
      'type': instance.type,
      'reaction_type': instance.reactionType,
      if (instance.isDark case final value?) 'is_dark': value,
      if (instance.isFlipped case final value?) 'is_flipped': value,
    };

StoryAreaTypeLink _$StoryAreaTypeLinkFromJson(Map<String, dynamic> json) =>
    StoryAreaTypeLink(
      type: json['type'] == null
          ? StoryAreaTypeType.link
          : StoryAreaType.fromJson(json['type'] as Map<String, dynamic>),
      url: json['url'] as String,
    );

Map<String, dynamic> _$StoryAreaTypeLinkToJson(StoryAreaTypeLink instance) =>
    <String, dynamic>{
      'type': instance.type,
      'url': instance.url,
    };

StoryAreaTypeWeather _$StoryAreaTypeWeatherFromJson(
        Map<String, dynamic> json) =>
    StoryAreaTypeWeather(
      type: json['type'] == null
          ? StoryAreaTypeType.weather
          : StoryAreaType.fromJson(json['type'] as Map<String, dynamic>),
      temperature: (json['temperature'] as num).toDouble(),
      emoji: json['emoji'] as String,
      backgroundColor: (json['background_color'] as num).toInt(),
    );

Map<String, dynamic> _$StoryAreaTypeWeatherToJson(
        StoryAreaTypeWeather instance) =>
    <String, dynamic>{
      'type': instance.type,
      'temperature': instance.temperature,
      'emoji': instance.emoji,
      'background_color': instance.backgroundColor,
    };

StoryAreaTypeUniqueGift _$StoryAreaTypeUniqueGiftFromJson(
        Map<String, dynamic> json) =>
    StoryAreaTypeUniqueGift(
      type: json['type'] == null
          ? StoryAreaTypeType.uniqueGift
          : StoryAreaType.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StoryAreaTypeUniqueGiftToJson(
        StoryAreaTypeUniqueGift instance) =>
    <String, dynamic>{
      'type': instance.type,
    };
