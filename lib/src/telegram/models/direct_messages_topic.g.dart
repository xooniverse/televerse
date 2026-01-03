// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'direct_messages_topic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DirectMessagesTopic _$DirectMessagesTopicFromJson(Map<String, dynamic> json) =>
    _DirectMessagesTopic(
      topicId: (json['topic_id'] as num).toInt(),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DirectMessagesTopicToJson(
  _DirectMessagesTopic instance,
) => <String, dynamic>{'topic_id': instance.topicId, 'user': ?instance.user};
