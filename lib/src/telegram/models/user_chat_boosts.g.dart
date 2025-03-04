// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_chat_boosts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserChatBoostsImpl _$$UserChatBoostsImplFromJson(Map<String, dynamic> json) =>
    _$UserChatBoostsImpl(
      boosts: (json['boosts'] as List<dynamic>)
          .map((e) => ChatBoost.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UserChatBoostsImplToJson(
        _$UserChatBoostsImpl instance) =>
    <String, dynamic>{
      'boosts': instance.boosts,
    };
