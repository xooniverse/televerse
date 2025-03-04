// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mask_position.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MaskPositionImpl _$$MaskPositionImplFromJson(Map<String, dynamic> json) =>
    _$MaskPositionImpl(
      point: $enumDecode(_$MaskPositionPointEnumMap, json['point']),
      xShift: (json['x_shift'] as num).toDouble(),
      yShift: (json['y_shift'] as num).toDouble(),
      scale: (json['scale'] as num).toDouble(),
    );

Map<String, dynamic> _$$MaskPositionImplToJson(_$MaskPositionImpl instance) =>
    <String, dynamic>{
      'point': instance.point,
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
