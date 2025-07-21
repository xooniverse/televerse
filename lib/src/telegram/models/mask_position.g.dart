// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mask_position.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MaskPosition _$MaskPositionFromJson(Map<String, dynamic> json) =>
    _MaskPosition(
      point: $enumDecode(_$MaskPositionPointEnumMap, json['point']),
      xShift: (json['x_shift'] as num).toDouble(),
      yShift: (json['y_shift'] as num).toDouble(),
      scale: (json['scale'] as num).toDouble(),
    );

Map<String, dynamic> _$MaskPositionToJson(_MaskPosition instance) =>
    <String, dynamic>{
      'point': _$MaskPositionPointEnumMap[instance.point]!,
      'x_shift': instance.xShift,
      'y_shift': instance.yShift,
      'scale': instance.scale,
    };

const _$MaskPositionPointEnumMap = {
  MaskPositionPoint.forehead: 'forehead',
  MaskPositionPoint.eyes: 'eyes',
  MaskPositionPoint.mouth: 'mouth',
  MaskPositionPoint.chin: 'chin',
};
