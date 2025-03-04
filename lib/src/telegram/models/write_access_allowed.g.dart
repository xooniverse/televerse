// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'write_access_allowed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WriteAccessAllowedImpl _$$WriteAccessAllowedImplFromJson(
        Map<String, dynamic> json) =>
    _$WriteAccessAllowedImpl(
      webAppName: json['web_app_name'] as String?,
      fromRequest: json['from_request'] as bool?,
      fromAttachmentMenu: json['from_attachment_menu'] as bool?,
    );

Map<String, dynamic> _$$WriteAccessAllowedImplToJson(
        _$WriteAccessAllowedImpl instance) =>
    <String, dynamic>{
      if (instance.webAppName case final value?) 'web_app_name': value,
      if (instance.fromRequest case final value?) 'from_request': value,
      if (instance.fromAttachmentMenu case final value?)
        'from_attachment_menu': value,
    };
