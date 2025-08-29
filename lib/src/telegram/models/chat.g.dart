// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Chat _$ChatFromJson(Map<String, dynamic> json) => _Chat(
      id: (json['id'] as num).toInt(),
      type: $enumDecode(_$ChatTypeEnumMap, json['type']),
      title: json['title'] as String?,
      username: json['username'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      isForum: json['is_forum'] as bool?,
      isDirectMessages: json['is_direct_messages'] as bool?,
    );

Map<String, dynamic> _$ChatToJson(_Chat instance) => <String, dynamic>{
      'id': instance.id,
      'type': _$ChatTypeEnumMap[instance.type]!,
      if (instance.title case final value?) 'title': value,
      if (instance.username case final value?) 'username': value,
      if (instance.firstName case final value?) 'first_name': value,
      if (instance.lastName case final value?) 'last_name': value,
      if (instance.isForum case final value?) 'is_forum': value,
      if (instance.isDirectMessages case final value?)
        'is_direct_messages': value,
    };

const _$ChatTypeEnumMap = {
  ChatType.private: 'private',
  ChatType.group: 'group',
  ChatType.supergroup: 'supergroup',
  ChatType.channel: 'channel',
  ChatType.sender: 'sender',
};
