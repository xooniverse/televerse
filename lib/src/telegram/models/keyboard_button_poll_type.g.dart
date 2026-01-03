// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'keyboard_button_poll_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_KeyboardButtonPollType _$KeyboardButtonPollTypeFromJson(
  Map<String, dynamic> json,
) => _KeyboardButtonPollType(
  type: $enumDecodeNullable(_$PollTypeEnumMap, json['type']),
);

Map<String, dynamic> _$KeyboardButtonPollTypeToJson(
  _KeyboardButtonPollType instance,
) => <String, dynamic>{'type': ?instance.type};

const _$PollTypeEnumMap = {PollType.regular: 'regular', PollType.quiz: 'quiz'};
