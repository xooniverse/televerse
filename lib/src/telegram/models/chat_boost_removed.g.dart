// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_boost_removed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatBoostRemovedImpl _$$ChatBoostRemovedImplFromJson(
        Map<String, dynamic> json) =>
    _$ChatBoostRemovedImpl(
      chat: Chat.fromJson(json['chat'] as Map<String, dynamic>),
      boostId: json['boost_id'] as String,
      removeDate: (json['remove_date'] as num).toInt(),
      source: ChatBoostSource.fromJson(json['source'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ChatBoostRemovedImplToJson(
        _$ChatBoostRemovedImpl instance) =>
    <String, dynamic>{
      'chat': instance.chat,
      'boost_id': instance.boostId,
      'remove_date': instance.removeDate,
      'source': instance.source,
    };
