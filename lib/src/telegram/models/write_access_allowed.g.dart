// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'write_access_allowed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WriteAccessAllowed _$WriteAccessAllowedFromJson(Map<String, dynamic> json) =>
    _WriteAccessAllowed(
      webAppName: json['web_app_name'] as String?,
      fromRequest: json['from_request'] as bool?,
      fromAttachmentMenu: json['from_attachment_menu'] as bool?,
    );

Map<String, dynamic> _$WriteAccessAllowedToJson(_WriteAccessAllowed instance) =>
    <String, dynamic>{
      'web_app_name': ?instance.webAppName,
      'from_request': ?instance.fromRequest,
      'from_attachment_menu': ?instance.fromAttachmentMenu,
    };
