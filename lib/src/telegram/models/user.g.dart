// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
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
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'is_bot': instance.isBot,
      'first_name': instance.firstName,
      if (instance.lastName case final value?) 'last_name': value,
      if (instance.username case final value?) 'username': value,
      if (instance.languageCode case final value?) 'language_code': value,
      if (instance.isPremium case final value?) 'is_premium': value,
      if (instance.addedToAttachmentMenu case final value?)
        'added_to_attachment_menu': value,
      if (instance.canJoinGroups case final value?) 'can_join_groups': value,
      if (instance.canReadAllGroupMessages case final value?)
        'can_read_all_group_messages': value,
      if (instance.supportsInlineQueries case final value?)
        'supports_inline_queries': value,
      if (instance.canConnectToBusiness case final value?)
        'can_connect_to_business': value,
      if (instance.hasMainWebApp case final value?) 'has_main_web_app': value,
    };
