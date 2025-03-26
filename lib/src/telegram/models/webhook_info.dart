// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'webhook_info.freezed.dart';
part 'webhook_info.g.dart';

/// Describes the current status of a webhook.
@freezed
abstract class WebhookInfo with _$WebhookInfo {
  /// Constructs a WebhookInfo object.
  const factory WebhookInfo({
    /// Webhook URL, may be empty if webhook is not set up
    @JsonKey(name: 'url') required String url,

    /// True, if a custom certificate was provided for webhook certificate
    /// checks
    @JsonKey(name: 'has_custom_certificate') required bool hasCustomCertificate,

    /// Number of updates awaiting delivery
    @JsonKey(name: 'pending_update_count') required int pendingUpdateCount,

    /// Optional. Currently used webhook IP address
    @JsonKey(name: 'ip_address') String? ipAddress,

    /// Optional. Unix time for the most recent error that happened when trying
    /// to deliver an update via webhook
    @JsonKey(name: 'last_error_date') int? lastErrorDate,

    /// Optional. Error message in human-readable format for the most recent
    /// error that happened when trying to deliver an update via webhook
    @JsonKey(name: 'last_error_message') String? lastErrorMessage,

    /// Optional. Unix time of the most recent error that happened when trying
    /// to synchronize available updates with Telegram datacenters
    @JsonKey(name: 'last_error_network_date') int? lastErrorNetworkDate,

    /// Optional. The maximum allowed number of simultaneous HTTPS connections
    /// to the webhook for update delivery
    @JsonKey(name: 'max_connections') int? maxConnections,

    /// Optional. A list of update types the bot is subscribed to. Defaults to
    /// all update types except chat_member
    @JsonKey(name: 'allowed_updates') List<String>? allowedUpdates,
  }) = _WebhookInfo;

  /// Creates a WebhookInfo object from json [String].
  factory WebhookInfo.fromJson(Map<String, dynamic> json) =>
      _$WebhookInfoFromJson(json);
}
