// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_boost_updated.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatBoostUpdatedImpl _$$ChatBoostUpdatedImplFromJson(
        Map<String, dynamic> json) =>
    _$ChatBoostUpdatedImpl(
      chat: Chat.fromJson(json['chat'] as Map<String, dynamic>),
      boost: ChatBoost.fromJson(json['boost'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ChatBoostUpdatedImplToJson(
        _$ChatBoostUpdatedImpl instance) =>
    <String, dynamic>{
      'chat': instance.chat,
      'boost': instance.boost,
    };
