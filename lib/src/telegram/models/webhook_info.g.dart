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
      if (instance.ipAddress case final value?) 'ip_address': value,
      if (instance.lastErrorDate case final value?) 'last_error_date': value,
      if (instance.lastErrorMessage case final value?)
        'last_error_message': value,
      if (instance.lastErrorNetworkDate case final value?)
        'last_error_network_date': value,
      if (instance.maxConnections case final value?) 'max_connections': value,
      if (instance.allowedUpdates case final value?) 'allowed_updates': value,
    };
