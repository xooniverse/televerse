// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'background_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BackgroundTypeFill _$BackgroundTypeFillFromJson(Map<String, dynamic> json) =>
    BackgroundTypeFill(
      type: $enumDecodeNullable(_$BackgroundTypeTypeEnumMap, json['type']) ??
          BackgroundTypeType.fill,
      fill: BackgroundFill.fromJson(json['fill'] as Map<String, dynamic>),
      darkThemeDimming: (json['dark_theme_dimming'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$BackgroundTypeFillToJson(BackgroundTypeFill instance) =>
    <String, dynamic>{
      'type': _$BackgroundTypeTypeEnumMap[instance.type]!,
      'fill': instance.fill,
      'dark_theme_dimming': instance.darkThemeDimming,
    };

const _$BackgroundTypeTypeEnumMap = {
  BackgroundTypeType.fill: 'fill',
  BackgroundTypeType.wallpaper: 'wallpaper',
  BackgroundTypeType.pattern: 'pattern',
  BackgroundTypeType.chatTheme: 'chat_theme',
};

BackgroundTypeWallpaper _$BackgroundTypeWallpaperFromJson(
        Map<String, dynamic> json) =>
    BackgroundTypeWallpaper(
      type: $enumDecodeNullable(_$BackgroundTypeTypeEnumMap, json['type']) ??
          BackgroundTypeType.wallpaper,
      document: Document.fromJson(json['document'] as Map<String, dynamic>),
      darkThemeDimming: (json['dark_theme_dimming'] as num?)?.toInt() ?? 0,
      isBlurred: json['is_blurred'] as bool?,
      isMoving: json['is_moving'] as bool?,
    );

Map<String, dynamic> _$BackgroundTypeWallpaperToJson(
        BackgroundTypeWallpaper instance) =>
    <String, dynamic>{
      'type': _$BackgroundTypeTypeEnumMap[instance.type]!,
      'document': instance.document,
      'dark_theme_dimming': instance.darkThemeDimming,
      if (instance.isBlurred case final value?) 'is_blurred': value,
      if (instance.isMoving case final value?) 'is_moving': value,
    };

BackgroundTypePattern _$BackgroundTypePatternFromJson(
        Map<String, dynamic> json) =>
    BackgroundTypePattern(
      type: $enumDecodeNullable(_$BackgroundTypeTypeEnumMap, json['type']) ??
          BackgroundTypeType.pattern,
      document: Document.fromJson(json['document'] as Map<String, dynamic>),
      fill: BackgroundFill.fromJson(json['fill'] as Map<String, dynamic>),
      intensity: (json['intensity'] as num?)?.toInt() ?? 0,
      isInverted: json['is_inverted'] as bool?,
      isMoving: json['is_moving'] as bool?,
    );

Map<String, dynamic> _$BackgroundTypePatternToJson(
        BackgroundTypePattern instance) =>
    <String, dynamic>{
      'type': _$BackgroundTypeTypeEnumMap[instance.type]!,
      'document': instance.document,
      'fill': instance.fill,
      'intensity': instance.intensity,
      if (instance.isInverted case final value?) 'is_inverted': value,
      if (instance.isMoving case final value?) 'is_moving': value,
    };

BackgroundTypeChatTheme _$BackgroundTypeChatThemeFromJson(
        Map<String, dynamic> json) =>
    BackgroundTypeChatTheme(
      type: $enumDecodeNullable(_$BackgroundTypeTypeEnumMap, json['type']) ??
          BackgroundTypeType.chatTheme,
      themeName: json['theme_name'] as String,
    );

Map<String, dynamic> _$BackgroundTypeChatThemeToJson(
        BackgroundTypeChatTheme instance) =>
    <String, dynamic>{
      'type': _$BackgroundTypeTypeEnumMap[instance.type]!,
      'theme_name': instance.themeName,
    };
