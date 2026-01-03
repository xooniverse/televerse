// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poll.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Poll _$PollFromJson(Map<String, dynamic> json) => _Poll(
  id: json['id'] as String,
  question: json['question'] as String,
  options: (json['options'] as List<dynamic>)
      .map((e) => PollOption.fromJson(e as Map<String, dynamic>))
      .toList(),
  totalVoterCount: (json['total_voter_count'] as num).toInt(),
  isClosed: json['is_closed'] as bool,
  isAnonymous: json['is_anonymous'] as bool,
  type: $enumDecode(_$PollTypeEnumMap, json['type']),
  allowsMultipleAnswers: json['allows_multiple_answers'] as bool,
  correctOptionId: (json['correct_option_id'] as num?)?.toInt(),
  explanation: json['explanation'] as String?,
  explanationEntities: (json['explanation_entities'] as List<dynamic>?)
      ?.map((e) => MessageEntity.fromJson(e as Map<String, dynamic>))
      .toList(),
  openPeriod: (json['open_period'] as num?)?.toInt(),
  closeDate: (json['close_date'] as num?)?.toInt(),
  questionEntities: (json['question_entities'] as List<dynamic>?)
      ?.map((e) => MessageEntity.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PollToJson(_Poll instance) => <String, dynamic>{
  'id': instance.id,
  'question': instance.question,
  'options': instance.options,
  'total_voter_count': instance.totalVoterCount,
  'is_closed': instance.isClosed,
  'is_anonymous': instance.isAnonymous,
  'type': instance.type,
  'allows_multiple_answers': instance.allowsMultipleAnswers,
  'correct_option_id': ?instance.correctOptionId,
  'explanation': ?instance.explanation,
  'explanation_entities': ?instance.explanationEntities,
  'open_period': ?instance.openPeriod,
  'close_date': ?instance.closeDate,
  'question_entities': ?instance.questionEntities,
};

const _$PollTypeEnumMap = {PollType.regular: 'regular', PollType.quiz: 'quiz'};
