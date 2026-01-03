// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unique_gift_colors.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UniqueGiftColors _$UniqueGiftColorsFromJson(Map<String, dynamic> json) =>
    _UniqueGiftColors(
      modelCustomEmojiId: json['model_custom_emoji_id'] as String,
      symbolCustomEmojiId: json['symbol_custom_emoji_id'] as String,
      lightThemeMainColor: (json['light_theme_main_color'] as num).toInt(),
      lightThemeOtherColors: (json['light_theme_other_colors'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      darkThemeMainColor: (json['dark_theme_main_color'] as num).toInt(),
      darkThemeOtherColors: (json['dark_theme_other_colors'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$UniqueGiftColorsToJson(_UniqueGiftColors instance) =>
    <String, dynamic>{
      'model_custom_emoji_id': instance.modelCustomEmojiId,
      'symbol_custom_emoji_id': instance.symbolCustomEmojiId,
      'light_theme_main_color': instance.lightThemeMainColor,
      'light_theme_other_colors': instance.lightThemeOtherColors,
      'dark_theme_main_color': instance.darkThemeMainColor,
      'dark_theme_other_colors': instance.darkThemeOtherColors,
    };
