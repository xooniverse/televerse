// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_connection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BusinessConnection _$BusinessConnectionFromJson(Map<String, dynamic> json) =>
    _BusinessConnection(
      id: json['id'] as String,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      userChatId: (json['user_chat_id'] as num).toInt(),
      date: (json['date'] as num).toInt(),
      rights: BusinessBotRights.fromJson(
        json['rights'] as Map<String, dynamic>,
      ),
      isEnabled: json['is_enabled'] as bool,
    );

Map<String, dynamic> _$BusinessConnectionToJson(_BusinessConnection instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'user_chat_id': instance.userChatId,
      'date': instance.date,
      'rights': instance.rights,
      'is_enabled': instance.isEnabled,
    };
