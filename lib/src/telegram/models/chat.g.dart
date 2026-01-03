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
  'title': ?instance.title,
  'username': ?instance.username,
  'first_name': ?instance.firstName,
  'last_name': ?instance.lastName,
  'is_forum': ?instance.isForum,
  'is_direct_messages': ?instance.isDirectMessages,
};

const _$ChatTypeEnumMap = {
  ChatType.private: 'private',
  ChatType.group: 'group',
  ChatType.supergroup: 'supergroup',
  ChatType.channel: 'channel',
  ChatType.sender: 'sender',
};
