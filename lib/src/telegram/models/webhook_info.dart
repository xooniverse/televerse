part of models;

/// Describes the current status of a webhook.
class WebhookInfo {
  /// Webhook URL, may be empty if webhook is not set up
  String url;

  /// True, if a custom certificate was provided for webhook certificate checks
  bool hasCustomCertificate;

  /// Number of updates awaiting delivery
  int pendingUpdateCount;

  /// Optional. Currently used webhook IP address
  String? ipAddress;

  /// Optional. Unix time for the most recent error that happened when trying to deliver an update via webhook
  int? lastErrorDate;

  /// Optional. Error message in human-readable format for the most recent error that happened when trying to deliver an update via webhook
  String? lastErrorMessage;

  /// Optional. Unix time of the most recent error that happened when trying to synchronize available updates with Telegram datacenters
  int? lastErrorNetworkDate;

  /// Optional. The maximum allowed number of simultaneous HTTPS connections to the webhook for update delivery
  int? maxConnections;

  /// Optional. A list of update types the bot is subscribed to. Defaults to all update types except chat_member
  List<String>? allowedUpdates;

  /// Constructs a WebhookInfo object.
  WebhookInfo({
    required this.url,
    required this.hasCustomCertificate,
    required this.pendingUpdateCount,
    this.ipAddress,
    this.lastErrorDate,
    this.lastErrorMessage,
    this.lastErrorNetworkDate,
    this.maxConnections,
    this.allowedUpdates,
  });

  /// Creates a WebhookInfo object from a json [String].
  factory WebhookInfo.fromJson(Map<String, dynamic> json) {
    return WebhookInfo(
      url: json['url'] as String,
      hasCustomCertificate: json['has_custom_certificate'] as bool,
      pendingUpdateCount: json['pending_update_count'] as int,
      ipAddress: json['ip_address'] as String?,
      lastErrorDate: json['last_error_date'] as int?,
      lastErrorMessage: json['last_error_message'] as String?,
      lastErrorNetworkDate: json['last_error_network_date'] as int?,
      maxConnections: json['max_connections'] as int?,
      allowedUpdates: (json['allowed_updates'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );
  }

  /// Get the json representation of this object.
  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'has_custom_certificate': hasCustomCertificate,
      'pending_update_count': pendingUpdateCount,
      'ip_address': ipAddress,
      'last_error_date': lastErrorDate,
      'last_error_message': lastErrorMessage,
      'last_error_network_date': lastErrorNetworkDate,
      'max_connections': maxConnections,
      'allowed_updates': allowedUpdates,
    }..removeWhere((_, v) => v == null);
  }

  /// Get JSON string of this object.
  String jsonString() => jsonEncode(this);
}
