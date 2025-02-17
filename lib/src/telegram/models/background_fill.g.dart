// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'background_fill.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BackgroundFillSolidImpl _$$BackgroundFillSolidImplFromJson(
        Map<String, dynamic> json) =>
    _$BackgroundFillSolidImpl(
      type: $enumDecodeNullable(_$BackgroundFillTypeEnumMap, json['type']) ??
          BackgroundFillType.solid,
      color: (json['color'] as num).toInt(),
    );

Map<String, dynamic> _$$BackgroundFillSolidImplToJson(
        _$BackgroundFillSolidImpl instance) =>
    <String, dynamic>{
      'type': _$BackgroundFillTypeEnumMap[instance.type]!,
      'color': instance.color,
    };

const _$BackgroundFillTypeEnumMap = {
  BackgroundFillType.solid: 'solid',
  BackgroundFillType.gradient: 'gradient',
  BackgroundFillType.freeformGradient: 'freeform_gradient',
};

_$BackgroundFillGradientImpl _$$BackgroundFillGradientImplFromJson(
        Map<String, dynamic> json) =>
    _$BackgroundFillGradientImpl(
      type: $enumDecodeNullable(_$BackgroundFillTypeEnumMap, json['type']) ??
          BackgroundFillType.gradient,
      topColor: (json['top_color'] as num).toInt(),
      bottomColor: (json['bottom_color'] as num).toInt(),
      rotationAngle: (json['rotation_angle'] as num).toInt(),
    );

Map<String, dynamic> _$$BackgroundFillGradientImplToJson(
        _$BackgroundFillGradientImpl instance) =>
    <String, dynamic>{
      'type': _$BackgroundFillTypeEnumMap[instance.type]!,
      'top_color': instance.topColor,
      'bottom_color': instance.bottomColor,
      'rotation_angle': instance.rotationAngle,
    };

_$BackgroundFillFreeformGradientImpl
    _$$BackgroundFillFreeformGradientImplFromJson(Map<String, dynamic> json) =>
        _$BackgroundFillFreeformGradientImpl(
          type:
              $enumDecodeNullable(_$BackgroundFillTypeEnumMap, json['type']) ??
                  BackgroundFillType.freeformGradient,
          colors: (json['colors'] as List<dynamic>)
              .map((e) => (e as num).toInt())
              .toList(),
        );

Map<String, dynamic> _$$BackgroundFillFreeformGradientImplToJson(
        _$BackgroundFillFreeformGradientImpl instance) =>
    <String, dynamic>{
      'type': _$BackgroundFillTypeEnumMap[instance.type]!,
      'colors': instance.colors,
    };
