// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_high_score.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GameHighScore _$GameHighScoreFromJson(Map<String, dynamic> json) =>
    _GameHighScore(
      position: (json['position'] as num).toInt(),
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      score: (json['score'] as num).toInt(),
    );

Map<String, dynamic> _$GameHighScoreToJson(_GameHighScore instance) =>
    <String, dynamic>{
      'position': instance.position,
      'user': instance.user,
      'score': instance.score,
    };
