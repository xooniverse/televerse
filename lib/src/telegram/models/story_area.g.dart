// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'story_area.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StoryArea _$StoryAreaFromJson(Map<String, dynamic> json) => _StoryArea(
  position: StoryAreaPosition.fromJson(
    json['position'] as Map<String, dynamic>,
  ),
  type: StoryAreaType.fromJson(json['type'] as Map<String, dynamic>),
);

Map<String, dynamic> _$StoryAreaToJson(_StoryArea instance) =>
    <String, dynamic>{'position': instance.position, 'type': instance.type};
