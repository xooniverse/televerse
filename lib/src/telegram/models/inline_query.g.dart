// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inline_query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InlineQuery _$InlineQueryFromJson(Map<String, dynamic> json) => _InlineQuery(
  id: json['id'] as String,
  from: User.fromJson(json['from'] as Map<String, dynamic>),
  query: json['query'] as String,
  offset: json['offset'] as String,
  chatType: $enumDecodeNullable(_$ChatTypeEnumMap, json['chat_type']),
  location: json['location'] == null
      ? null
      : Location.fromJson(json['location'] as Map<String, dynamic>),
);

Map<String, dynamic> _$InlineQueryToJson(_InlineQuery instance) =>
    <String, dynamic>{
      'id': instance.id,
      'from': instance.from,
      'query': instance.query,
      'offset': instance.offset,
      'chat_type': ?_$ChatTypeEnumMap[instance.chatType],
      'location': ?instance.location,
    };

const _$ChatTypeEnumMap = {
  ChatType.private: 'private',
  ChatType.group: 'group',
  ChatType.supergroup: 'supergroup',
  ChatType.channel: 'channel',
  ChatType.sender: 'sender',
};
