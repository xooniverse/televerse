// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poll_answer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PollAnswerImpl _$$PollAnswerImplFromJson(Map<String, dynamic> json) =>
    _$PollAnswerImpl(
      pollId: json['poll_id'] as String,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      optionIds: (json['option_ids'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      voterChat: json['voter_chat'] == null
          ? null
          : Chat.fromJson(json['voter_chat'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PollAnswerImplToJson(_$PollAnswerImpl instance) =>
    <String, dynamic>{
      'poll_id': instance.pollId,
      if (instance.user case final value?) 'user': value,
      'option_ids': instance.optionIds,
      if (instance.voterChat case final value?) 'voter_chat': value,
    };
