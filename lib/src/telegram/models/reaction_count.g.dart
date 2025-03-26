// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reaction_count.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReactionCount _$ReactionCountFromJson(Map<String, dynamic> json) =>
    _ReactionCount(
      type: ReactionType.fromJson(json['type'] as Map<String, dynamic>),
      totalCount: (json['total_count'] as num).toInt(),
    );

Map<String, dynamic> _$ReactionCountToJson(_ReactionCount instance) =>
    <String, dynamic>{
      'type': instance.type,
      'total_count': instance.totalCount,
    };
