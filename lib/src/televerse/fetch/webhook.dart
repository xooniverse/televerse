part of televerse.fetch;

/// This class is used to create a webhook fetcher. It is a subclass of [Fetcher].
class Webhook extends Fetcher {
  /// Http server instance.
  final io.HttpServer _server;

  /// Webhook url.
  String url;

  /// Webhook ip address.
  String? ipAddress;

  /// Webhook secret path.
  String secretPath;

  /// Webhook port.
  int port;

  /// Server port.
  int? serverPort;

  /// Maximum allowed number of simultaneous HTTPS connections to the webhook for update delivery.
  int maxConnections;

  /// List the types of updates you want your bot to receive.
  List<String>? allowedUpdates;

  /// Pass True to drop all pending updates.
  bool? dropPendingUpdates;

  /// Public key certificate.
  io.File? certificate;

  /// Private key certificate.
  io.File? privateKey;

  /// Whether to upload the certificate.
  bool uploadCertificate;

  /// Allowed ports.
  final List<int> _allowedPorts = [443, 80, 88, 8443];

  /// Creates a Webhook fetcher.
  ///
  /// - [_server] is the http server instance. (required)
  /// - [api] is the raw api instance. (required)
  /// - [url] is the webhook url. (required)
  /// - [ipAddress] is the webhook ip address.
  /// - [secretPath] is the webhook secret path.
  /// - [port] is the webhook port.
  /// - [serverPort] is the server port.
  /// - [maxConnections] is the maximum allowed number of simultaneous HTTPS connections to the webhook for update delivery.
  /// - [allowedUpdates] is the list the types of updates you want your bot to receive.
  /// - [dropPendingUpdates] is the pass True to drop all pending updates.
  /// - [certificate] is the public key certificate.
  /// - [privateKey] is the private key certificate.
  /// - [uploadCertificate] is the whether to upload the certificate.
  ///
  ///
  /// Throws `WebhookException.invalidPort` if the port is not in the allowed ports.
  /// Throws `WebhookException.invalidMaxConnections` if the max connections is less than 1 or greater than 100.
  /// Throws `WebhookException.failedToSetWebhook` if the webhook failed to set.
  Webhook(
    this._server, {
    required this.url,
    this.ipAddress,
    this.secretPath = '',
    this.port = 443,
    this.serverPort,
    this.maxConnections = 40,
    this.allowedUpdates,
    this.dropPendingUpdates,
    this.certificate,
    this.privateKey,
    this.uploadCertificate = true,
  }) {
    if (!_allowedPorts.contains(port)) throw WebhookException.invalidPort;
    if (maxConnections > 100) throw WebhookException.invalidMaxConnections;
    if (maxConnections < 1) throw WebhookException.invalidMaxConnections;

    if (secretPath.isNotEmpty && !secretPath.startsWith('/')) {
      secretPath = '/$secretPath';
    }
    if (url.endsWith('/')) {
      url = url.substring(0, url.length - 1);
    }
  }

  /// Sets the webhook.
  Future<bool> setWebhook() async {
    return api.setWebhook(
      url: "$url:$port$secretPath",
      certificate: certificate,
      ipAddress: ipAddress,
      maxConnections: maxConnections,
      allowedUpdates: allowedUpdates,
      dropPendingUpdates: dropPendingUpdates,
    );
  }

  /// Starts the webhook fetcher.
  ///
  /// It will set the webhook and listen to the server.
  @override
  Future<void> start() async {
    if (await setWebhook()) {
      _isActive = true;
      _server.listen((io.HttpRequest r) async {
        if (r.uri.path == secretPath) {
          final b = await r.cast<List<int>>().transform(utf8.decoder).join();
          final update = Update.fromJson(jsonDecode(b));
          addUpdate(update);
          r.response.statusCode = 200;
          r.response.write({'ok': true, 'result': update.toRawJson()});
          r.response.close();
        } else {
          r.response.statusCode = 404;
          r.response.write({'ok': false, 'error_code': 404});
          r.response.close();
        }
      });
    } else {
      throw WebhookException.failedToSetWebhook;
    }
  }

  /// Stops the webhook fetcher.
  @override
  Future<void> stop({bool dropPendingUpdates = false}) async {
    _updateStreamController.close();
    await api.deleteWebhook(dropPendingUpdates: dropPendingUpdates);
    _isActive = false;
    return _server.close(force: true);
  }

  /// Internal flag to check if the webhook is running.
  bool _isActive = false;

  /// Flag to check if the webhook is running.
  @override
  bool get isActive => _isActive;
}
