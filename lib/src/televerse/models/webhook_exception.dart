class WebhookException implements Exception {
  final String message;

  const WebhookException(this.message);

  @override
  String toString() => message;

  static const invalidPort = WebhookException(
    'Invalid port! Allowed ports: 443, 80, 88, 8443',
  );
  static const invalidMaxConnections = WebhookException(
    'Invalid max connections! Max connections must be between 1 and 100',
  );

  static const missingCertificate = WebhookException(
    'Missing certificate! Please provide a certificate and a private key',
  );

  static const failedToSetWebhook = WebhookException('Failed to set webhook!');
}
