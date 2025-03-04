// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_boost.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatBoostImpl _$$ChatBoostImplFromJson(Map<String, dynamic> json) =>
    _$ChatBoostImpl(
      boostId: json['boost_id'] as String,
      addDate: (json['add_date'] as num).toInt(),
      expirationDate: (json['expiration_date'] as num).toInt(),
      source: ChatBoostSource.fromJson(json['source'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ChatBoostImplToJson(_$ChatBoostImpl instance) =>
    <String, dynamic>{
      'boost_id': instance.boostId,
      'add_date': instance.addDate,
      'expiration_date': instance.expirationDate,
      'source': instance.source,
    };
