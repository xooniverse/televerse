// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inline_query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InlineQueryImpl _$$InlineQueryImplFromJson(Map<String, dynamic> json) =>
    _$InlineQueryImpl(
      id: json['id'] as String,
      from: User.fromJson(json['from'] as Map<String, dynamic>),
      query: json['query'] as String,
      offset: json['offset'] as String,
      chatType: $enumDecodeNullable(_$ChatTypeEnumMap, json['chat_type']),
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$InlineQueryImplToJson(_$InlineQueryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'from': instance.from,
      'query': instance.query,
      'offset': instance.offset,
      if (_$ChatTypeEnumMap[instance.chatType] case final value?)
        'chat_type': value,
      if (instance.location case final value?) 'location': value,
    };

const _$ChatTypeEnumMap = {
  ChatType.private: 'private',
  ChatType.group: 'group',
  ChatType.supergroup: 'supergroup',
  ChatType.channel: 'channel',
  ChatType.sender: 'sender',
};
