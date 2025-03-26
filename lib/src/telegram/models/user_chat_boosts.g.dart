// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_chat_boosts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserChatBoosts _$UserChatBoostsFromJson(Map<String, dynamic> json) =>
    _UserChatBoosts(
      boosts: (json['boosts'] as List<dynamic>)
          .map((e) => ChatBoost.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UserChatBoostsToJson(_UserChatBoosts instance) =>
    <String, dynamic>{
      'boosts': instance.boosts,
    };
