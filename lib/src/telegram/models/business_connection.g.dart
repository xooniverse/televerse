// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_connection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BusinessConnectionImpl _$$BusinessConnectionImplFromJson(
        Map<String, dynamic> json) =>
    _$BusinessConnectionImpl(
      id: json['id'] as String,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      userChatId: (json['user_chat_id'] as num).toInt(),
      date: (json['date'] as num).toInt(),
      canReply: json['can_reply'] as bool,
      isEnabled: json['is_enabled'] as bool,
    );

Map<String, dynamic> _$$BusinessConnectionImplToJson(
        _$BusinessConnectionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'user_chat_id': instance.userChatId,
      'date': instance.date,
      'can_reply': instance.canReply,
      'is_enabled': instance.isEnabled,
    };
