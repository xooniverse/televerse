// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'keyboard_button_poll_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KeyboardButtonPollTypeImpl _$$KeyboardButtonPollTypeImplFromJson(
        Map<String, dynamic> json) =>
    _$KeyboardButtonPollTypeImpl(
      type: $enumDecodeNullable(_$PollTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$KeyboardButtonPollTypeImplToJson(
        _$KeyboardButtonPollTypeImpl instance) =>
    <String, dynamic>{
      if (instance.type case final value?) 'type': value,
    };

const _$PollTypeEnumMap = {
  PollType.regular: 'regular',
  PollType.quiz: 'quiz',
};
