// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_User _$UserFromJson(Map<String, dynamic> json) => _User(
  id: (json['id'] as num).toInt(),
  isBot: json['is_bot'] as bool,
  firstName: json['first_name'] as String,
  lastName: json['last_name'] as String?,
  username: json['username'] as String?,
  languageCode: json['language_code'] as String?,
  isPremium: json['is_premium'] as bool?,
  addedToAttachmentMenu: json['added_to_attachment_menu'] as bool?,
  canJoinGroups: json['can_join_groups'] as bool?,
  canReadAllGroupMessages: json['can_read_all_group_messages'] as bool?,
  supportsInlineQueries: json['supports_inline_queries'] as bool?,
  canConnectToBusiness: json['can_connect_to_business'] as bool?,
  hasMainWebApp: json['has_main_web_app'] as bool?,
  hasTopicsEnabled: json['has_topics_enabled'] as bool?,
  allowsUsersToCreateTopics: json['allows_users_to_create_topics'] as bool?,
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  'id': instance.id,
  'is_bot': instance.isBot,
  'first_name': instance.firstName,
  'last_name': ?instance.lastName,
  'username': ?instance.username,
  'language_code': ?instance.languageCode,
  'is_premium': ?instance.isPremium,
  'added_to_attachment_menu': ?instance.addedToAttachmentMenu,
  'can_join_groups': ?instance.canJoinGroups,
  'can_read_all_group_messages': ?instance.canReadAllGroupMessages,
  'supports_inline_queries': ?instance.supportsInlineQueries,
  'can_connect_to_business': ?instance.canConnectToBusiness,
  'has_main_web_app': ?instance.hasMainWebApp,
  'has_topics_enabled': ?instance.hasTopicsEnabled,
  'allows_users_to_create_topics': ?instance.allowsUsersToCreateTopics,
};
