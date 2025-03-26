// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poll_option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PollOption _$PollOptionFromJson(Map<String, dynamic> json) => _PollOption(
      text: json['text'] as String,
      voterCount: (json['voter_count'] as num).toInt(),
      textEntities: (json['text_entities'] as List<dynamic>?)
          ?.map((e) => MessageEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PollOptionToJson(_PollOption instance) =>
    <String, dynamic>{
      'text': instance.text,
      'voter_count': instance.voterCount,
      if (instance.textEntities case final value?) 'text_entities': value,
    };
