// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reaction_count.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReactionCountImpl _$$ReactionCountImplFromJson(Map<String, dynamic> json) =>
    _$ReactionCountImpl(
      type: ReactionType.fromJson(json['type'] as Map<String, dynamic>),
      totalCount: (json['total_count'] as num).toInt(),
    );

Map<String, dynamic> _$$ReactionCountImplToJson(_$ReactionCountImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'total_count': instance.totalCount,
    };
