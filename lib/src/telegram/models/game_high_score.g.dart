// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_high_score.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameHighScoreImpl _$$GameHighScoreImplFromJson(Map<String, dynamic> json) =>
    _$GameHighScoreImpl(
      position: (json['position'] as num).toInt(),
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      score: (json['score'] as num).toInt(),
    );

Map<String, dynamic> _$$GameHighScoreImplToJson(_$GameHighScoreImpl instance) =>
    <String, dynamic>{
      'position': instance.position,
      'user': instance.user,
      'score': instance.score,
    };
