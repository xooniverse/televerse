// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'webhook_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WebhookInfo _$WebhookInfoFromJson(Map<String, dynamic> json) => _WebhookInfo(
  url: json['url'] as String,
  hasCustomCertificate: json['has_custom_certificate'] as bool,
  pendingUpdateCount: (json['pending_update_count'] as num).toInt(),
  ipAddress: json['ip_address'] as String?,
  lastErrorDate: (json['last_error_date'] as num?)?.toInt(),
  lastErrorMessage: json['last_error_message'] as String?,
  lastErrorNetworkDate: (json['last_error_network_date'] as num?)?.toInt(),
  maxConnections: (json['max_connections'] as num?)?.toInt(),
  allowedUpdates: (json['allowed_updates'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$WebhookInfoToJson(_WebhookInfo instance) =>
    <String, dynamic>{
      'url': instance.url,
      'has_custom_certificate': instance.hasCustomCertificate,
      'pending_update_count': instance.pendingUpdateCount,
      'ip_address': ?instance.ipAddress,
      'last_error_date': ?instance.lastErrorDate,
      'last_error_message': ?instance.lastErrorMessage,
      'last_error_network_date': ?instance.lastErrorNetworkDate,
      'max_connections': ?instance.maxConnections,
      'allowed_updates': ?instance.allowedUpdates,
    };
