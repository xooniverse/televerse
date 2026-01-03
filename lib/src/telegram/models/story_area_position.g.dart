// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'story_area_position.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StoryAreaPosition _$StoryAreaPositionFromJson(Map<String, dynamic> json) =>
    _StoryAreaPosition(
      xPercentage: (json['x_percentage'] as num).toDouble(),
      yPercentage: (json['y_percentage'] as num).toDouble(),
      widthPercentage: (json['width_percentage'] as num).toDouble(),
      heightPercentage: (json['height_percentage'] as num).toDouble(),
      rotationAngle: (json['rotation_angle'] as num).toDouble(),
      cornerRadiusPercentage: (json['corner_radius_percentage'] as num)
          .toDouble(),
    );

Map<String, dynamic> _$StoryAreaPositionToJson(_StoryAreaPosition instance) =>
    <String, dynamic>{
      'x_percentage': instance.xPercentage,
      'y_percentage': instance.yPercentage,
      'width_percentage': instance.widthPercentage,
      'height_percentage': instance.heightPercentage,
      'rotation_angle': instance.rotationAngle,
      'corner_radius_percentage': instance.cornerRadiusPercentage,
    };
