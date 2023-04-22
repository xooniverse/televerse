part of televerse.models;

/// WebhookException is thrown when an error occurs while setting up a webhook.
class WebhookException implements Exception {
  /// The error message.
  final String message;

  /// Creates a WebhookException.
  const WebhookException(this.message);

  /// Returns a string representation of the exception.
  @override
  String toString() => message;

  /// Invalid port exception.
  static const invalidPort = WebhookException(
    'Invalid port! Allowed ports: 443, 80, 88, 8443',
  );

  /// Invalid max connections exception.
  static const invalidMaxConnections = WebhookException(
    'Invalid max connections! Max connections must be between 1 and 100',
  );

  /// Missing certificate exception.
  static const missingCertificate = WebhookException(
    'Missing certificate! Please provide a certificate and a private key',
  );

  /// Failed to set webhook exception.
  static const failedToSetWebhook = WebhookException('Failed to set webhook!');
}
