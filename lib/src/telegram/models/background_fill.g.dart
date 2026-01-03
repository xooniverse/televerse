// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'background_fill.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BackgroundFillSolid _$BackgroundFillSolidFromJson(Map<String, dynamic> json) =>
    BackgroundFillSolid(
      type:
          $enumDecodeNullable(_$BackgroundFillTypeEnumMap, json['type']) ??
          BackgroundFillType.solid,
      color: (json['color'] as num).toInt(),
    );

Map<String, dynamic> _$BackgroundFillSolidToJson(
  BackgroundFillSolid instance,
) => <String, dynamic>{
  'type': _$BackgroundFillTypeEnumMap[instance.type]!,
  'color': instance.color,
};

const _$BackgroundFillTypeEnumMap = {
  BackgroundFillType.solid: 'solid',
  BackgroundFillType.gradient: 'gradient',
  BackgroundFillType.freeformGradient: 'freeform_gradient',
};

BackgroundFillGradient _$BackgroundFillGradientFromJson(
  Map<String, dynamic> json,
) => BackgroundFillGradient(
  type:
      $enumDecodeNullable(_$BackgroundFillTypeEnumMap, json['type']) ??
      BackgroundFillType.gradient,
  topColor: (json['top_color'] as num).toInt(),
  bottomColor: (json['bottom_color'] as num).toInt(),
  rotationAngle: (json['rotation_angle'] as num).toInt(),
);

Map<String, dynamic> _$BackgroundFillGradientToJson(
  BackgroundFillGradient instance,
) => <String, dynamic>{
  'type': _$BackgroundFillTypeEnumMap[instance.type]!,
  'top_color': instance.topColor,
  'bottom_color': instance.bottomColor,
  'rotation_angle': instance.rotationAngle,
};

BackgroundFillFreeformGradient _$BackgroundFillFreeformGradientFromJson(
  Map<String, dynamic> json,
) => BackgroundFillFreeformGradient(
  type:
      $enumDecodeNullable(_$BackgroundFillTypeEnumMap, json['type']) ??
      BackgroundFillType.freeformGradient,
  colors: (json['colors'] as List<dynamic>)
      .map((e) => (e as num).toInt())
      .toList(),
);

Map<String, dynamic> _$BackgroundFillFreeformGradientToJson(
  BackgroundFillFreeformGradient instance,
) => <String, dynamic>{
  'type': _$BackgroundFillTypeEnumMap[instance.type]!,
  'colors': instance.colors,
};
