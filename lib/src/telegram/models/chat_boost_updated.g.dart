// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_boost_updated.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatBoostUpdated _$ChatBoostUpdatedFromJson(Map<String, dynamic> json) =>
    _ChatBoostUpdated(
      chat: Chat.fromJson(json['chat'] as Map<String, dynamic>),
      boost: ChatBoost.fromJson(json['boost'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChatBoostUpdatedToJson(_ChatBoostUpdated instance) =>
    <String, dynamic>{
      'chat': instance.chat,
      'boost': instance.boost,
    };
