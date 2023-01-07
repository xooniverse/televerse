part of televerse;

/// **Webhook**
/// This class is used to create a webhook fetcher. It is a subclass of [Fetcher].
class Webhook extends Fetcher {
  final Televerse televerse;

  final io.HttpServer _server;

  String url;
  String? ipAddress;
  String secretPath;
  int port;
  int? serverPort;
  int maxConnections;
  List<String>? allowedUpdates;
  bool? dropPendingUpdates;

  io.File? certificate;
  io.File? privateKey;
  bool uploadCertificate;

  final List<int> _allowedPorts = [443, 80, 88, 8443];

  Webhook(
    this._server, {
    required this.televerse,
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

  Future<bool> setWebhook() async {
    return televerse.setWebhook(
      url: "$url:$port$secretPath",
      certificate: certificate,
      ipAddress: ipAddress,
      maxConnections: maxConnections,
      allowedUpdates: allowedUpdates,
      dropPendingUpdates: dropPendingUpdates,
    );
  }

  @override
  Future<void> start() async {
    if (await setWebhook()) {
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

  @override
  Future<void> stop({bool dropPendingUpdates = false}) async {
    await televerse.deleteWebhook(dropPendingUpdates: dropPendingUpdates);
    return _server.close(force: true);
  }
}
