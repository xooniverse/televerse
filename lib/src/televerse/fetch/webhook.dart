part of 'fetch.dart';

/// A fetcher class that handles incoming updates from the Telegram Bot API via a webhook.
///
/// The `Webhook` class is designed to handle incoming updates from the Telegram Bot API via a webhook.
/// When an update is available for the bot, Telegram sends an HTTPS POST request to the specified URL,
/// containing a JSON-serialized `Update`. The class is responsible for processing these requests and
/// managing the webhook lifecycle.
///
/// ## Features
///
/// - Listens for incoming updates via an HTTP server.
/// - Configures and sets the webhook URL for the bot.
/// - Handles incoming requests and parses updates.
/// - Supports secure communication with an optional certificate and secret token.
///
/// ## Constructor
///
/// ```dart
/// // Create a webhook fetcher instance
/// final webhook = Webhook(
///   server,
///   url: "https://mydomain.com",
/// );
/// ```
///
/// - [server] is the HTTP server instance. (required)
/// - [url] is the webhook URL. (required)
/// - [ipAddress] is the webhook IP address.
/// - [path] is the webhook secret path.
/// - [port] is the webhook port.
/// - [maxConnections] is the maximum allowed number of simultaneous HTTPS connections to the webhook for update delivery.
/// - [allowedUpdates] is the list of the types of updates you want your bot to receive.
/// - [dropPendingUpdates] is the flag to drop all pending updates.
/// - [certificate] is the public key certificate.
/// - [secretToken] is the secret token for additional security.
///
/// Throws `WebhookException.invalidPort` if the port is not in the allowed ports.
/// Throws `WebhookException.invalidMaxConnections` if the max connections are less than 1 or greater than 100.
/// Throws `WebhookException.failedToSetWebhook` if the webhook failed to set.
///
/// ## Usage Example
///
/// ```dart
/// // Bind the server to an available port
/// final server = await HttpServer.bind(InternetAddress.anyIPv6, 8080);
///
/// // Create a webhook fetcher instance
/// final webhook = Webhook(
///   server,
///   url: "https://mydomain.com",
/// );
///
/// // Now pass the webhook instance to the `fetcher` parameter.
/// final bot = Bot(
///   "<BOT_TOKEN>",
///   fetcher: webhook,
/// );
///
/// // Start the bot :)
/// bot.start();
/// ```
///
/// ## Notes
///
/// According to the Telegram Bot API documentation, whenever there is an update for the bot,
/// an HTTPS POST request is sent to the specified URL containing a JSON-serialized `Update`.
/// In case of an unsuccessful request, Telegram will give up after a reasonable number of attempts.
/// The method returns `True` on success.
///
/// If you'd like to ensure that the webhook was set by you, you can specify secret data in the parameter
/// `secret_token`. If specified, the request will contain a header `“X-Telegram-Bot-Api-Secret-Token”`
/// with the secret token as content.
class Webhook extends Fetcher {
  /// Http server instance.
  final io.HttpServer server;

  /// Webhook URL. This is the URL where your bot will listen for incoming updates.
  ///
  /// Example: `https://yourdomain.com`
  String url;

  /// The fixed IP address which will be used to send webhook requests
  /// instead of the IP address resolved through DNS
  final String? ipAddress;

  /// Webhook path. Basically, a custom path for the webhook endpoint. By default points to `/`.
  ///
  /// When the `setWebhook` method is called, the webhook URL will be composed as
  /// `$url:$port$path`, and this path will be matched when processing incoming requests.
  ///
  /// Example: `/mybotwebhook`
  String path;

  /// Webhook port. This is the port on which the webhook will listen for incoming requests.
  ///
  /// Must be one of the following: 443, 80, 88, or 8443.
  ///
  /// Example: `443`
  final int port;

  /// Maximum allowed number of simultaneous HTTPS connections to the webhook for update delivery.
  ///
  /// The value must be between 1 and 100 inclusive.
  ///
  /// Example: `40`
  final int maxConnections;

  /// List of the types of updates you want your bot to receive. This specifies which types of updates your bot should listen for.
  ///
  /// Example: `[UpdateType.message, UpdateType.callbackQuery]`
  final List<UpdateType>? allowedUpdates;

  /// Pass True to drop all pending updates. This will clear any pending updates that the bot may have.
  ///
  /// Example: `true`
  final bool? dropPendingUpdates;

  /// Public key certificate. This is the public key certificate required to set up webhook with a self-signed certificate.
  ///
  /// Example: `InputFile.fromFile(File('public.pem'))`
  final InputFile? certificate;

  /// A secret token to be sent in a header “X-Telegram-Bot-Api-Secret-Token”
  /// in every webhook request, 1-256 characters. Only characters
  /// `A-Z`, `a-z`, `0-9`, `_` and `-` are allowed. The header is useful to
  /// ensure that the request comes from a webhook set by you.
  final String? secretToken;

  /// Allowed ports.
  final List<int> _allowedPorts = [443, 80, 88, 8443];

  /// Internal flag to check if the webhook is running.
  bool _isActive = false;

  /// Creates a Webhook fetcher.
  ///
  /// - [server] is the HTTP server instance. (required)
  /// - [url] is the webhook URL. (required)
  /// - [ipAddress] is the webhook IP address.
  /// - [path] is the webhook secret path.
  /// - [port] is the webhook port.
  /// - [maxConnections] is the maximum allowed number of simultaneous HTTPS connections to the webhook for update delivery.
  /// - [allowedUpdates] is the list of the types of updates you want your bot to receive.
  /// - [dropPendingUpdates] is the flag to drop all pending updates.
  /// - [certificate] is the public key certificate.
  /// - [secretToken] is the secret token for additional security.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// // Bind the server to an available port
  /// final server = await HttpServer.bind(InternetAddress.anyIPv6, 8080);
  ///
  /// // Create a webhook fetcher instance
  /// final webhook = Webhook(
  ///   server,
  ///   url: "https://mydomain.com",
  /// );
  ///
  /// // Now pass the webhook instance to the `fetcher` parameter.
  /// final bot = Bot(
  ///   "<BOT_TOKEN>",
  ///   fetcher: webhook,
  /// );
  ///
  ///
  /// // Start the bot :)
  /// bot.start();
  /// ```
  ///
  /// Note that you don't have to manually invoke the `setWebhook` method to register the webhook. It'll be done implicitly.
  ///
  /// ### Possible Exceptions
  ///
  /// - Throws `WebhookException.invalidPort` if the port is not in the allowed ports.
  /// - Throws `WebhookException.invalidMaxConnections` if the max connections are less than 1 or greater than 100.
  /// - Throws `WebhookException.failedToSetWebhook` if the webhook failed to set.
  Webhook(
    this.server, {
    required this.url,
    this.ipAddress,
    this.path = '/',
    this.port = 443,
    this.maxConnections = 40,
    this.allowedUpdates,
    this.dropPendingUpdates,
    this.certificate,
    this.secretToken,
  }) {
    _validatePort();
    _validateMaxConnections();
    _normalizePath();
    _normalizeUrl();
  }

  /// Validates the webhook port.
  void _validatePort() {
    if (!_allowedPorts.contains(port)) throw WebhookException.invalidPort;
  }

  /// Validates the max connections.
  void _validateMaxConnections() {
    if (maxConnections > 100 || maxConnections < 1) {
      throw WebhookException.invalidMaxConnections;
    }
  }

  /// Normalizes the webhook path.
  void _normalizePath() {
    if (path.isNotEmpty && !path.startsWith('/')) {
      path = '/$path';
    }
  }

  /// Normalizes the webhook URL.
  void _normalizeUrl() {
    if (url.endsWith('/')) {
      url = url.substring(0, url.length - 1);
    }
  }

  /// Sets the webhook.
  Future<bool> setWebhook() async {
    return api.setWebhook(
      url: "$url:$port$path",
      certificate: certificate,
      ipAddress: ipAddress,
      maxConnections: maxConnections,
      allowedUpdates: allowedUpdates?.map((e) => e.type).toList(),
      dropPendingUpdates: dropPendingUpdates,
      secretToken: secretToken,
    );
  }

  /// Starts the webhook fetcher.
  ///
  /// It sets the webhook and listens to the server.
  @override
  Future<void> start() async {
    if (await setWebhook()) {
      _isActive = true;
      server.listen(_handleRequest);
    } else {
      throw WebhookException.failedToSetWebhook;
    }
  }

  /// Handles incoming HTTP requests.
  Future<void> _handleRequest(io.HttpRequest request) async {
    final Map<String, dynamic> error = {
      'ok': false,
      'error_code': 404,
      "description": "Not Found",
    };

    if (request.uri.path != path) {
      _sendResponse(request, error["error_code"], error);
      return;
    }

    if (request.method == "GET") {
      error["description"] = "GET Requests are not supported";
      error["error_code"] = 418;
      _sendResponse(request, error["error_code"], error);
      return;
    }

    final body = await request
        .cast<List<int>>()
        .transform(
          utf8.decoder,
        )
        .join();
    final update = Update.fromJson(jsonDecode(body));
    addUpdate(update);
    _sendResponse(request, 200, {'ok': true, 'result': update.toRawJson()});
  }

  /// Sends a response to the client.
  void _sendResponse(
    io.HttpRequest request,
    int statusCode,
    Map<String, dynamic> body,
  ) {
    request.response.statusCode = statusCode;
    request.response.write(JsonEncoder.withIndent('  ').convert(body));
    request.response.close();
  }

  /// Stops the webhook fetcher.
  @override
  Future<void> stop({bool dropPendingUpdates = false}) async {
    _updateStreamController.close();
    await api.deleteWebhook(dropPendingUpdates: dropPendingUpdates);
    _isActive = false;
    return server.close(force: true);
  }

  /// Flag to check if the webhook is running.
  @override
  bool get isActive => _isActive;
}
