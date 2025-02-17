// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_shared.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatSharedImpl _$$ChatSharedImplFromJson(Map<String, dynamic> json) =>
    _$ChatSharedImpl(
      requestId: (json['request_id'] as num).toInt(),
      chatId: (json['chat_id'] as num).toInt(),
      title: json['title'] as String?,
      username: json['username'] as String?,
      photo: (json['photo'] as List<dynamic>?)
          ?.map((e) => PhotoSize.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ChatSharedImplToJson(_$ChatSharedImpl instance) =>
    <String, dynamic>{
      'request_id': instance.requestId,
      'chat_id': instance.chatId,
      if (instance.title case final value?) 'title': value,
      if (instance.username case final value?) 'username': value,
      if (instance.photo case final value?) 'photo': value,
    };
