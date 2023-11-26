part of 'links.dart';

/// Used to share a proxy server that can be used to connect to Telegram.
///
/// Used for [MTProxies](https://core.telegram.org/mtproto/mtproto-transports#transport-obfuscation)
class MTProxyLink extends Deeplink {
  /// MTProxy server IP address or host
  final String server;

  /// MTProxy server port
  final int port;

  /// MTProxy [secret »](https://core.telegram.org/mtproto/mtproto-transports#transport-obfuscation)
  final String secret;

  /// Creates a new [MTProxyLink] object.
  const MTProxyLink({
    required this.server,
    required this.port,
    required this.secret,
  });

  /// tg:// link
  @override
  String get tg => 'tg://proxy?server=$server&port=$port&secret=$secret';

  /// https://t.me/ link
  @override
  String get https =>
      'https://t.me/proxy?server=$server&port=$port&secret=$secret';

  /// By default, this method returns the [tg] link.
  @override
  String toString() => tg;
}

/// Used to share a proxy server that can be used to connect to Telegram.
///
/// Used for socks5 proxies.
class Socks5Link extends Deeplink {
  /// Proxy server IP address or host
  final String server;

  /// Proxy server port
  final int port;

  /// Proxy username
  final String? username;

  /// Proxy password
  final String? password;

  /// Creates a new [Socks5Link] object.
  const Socks5Link({
    required this.server,
    required this.port,
    this.username,
    this.password,
  });

  /// tg:// link
  @override
  String get tg {
    if (username == null && password == null) {
      return 'tg://socks?server=$server&port=$port';
    } else {
      return 'tg://socks?server=$server&port=$port&user=$username&pass=$password';
    }
  }

  /// https://t.me/ link
  @override
  String get https {
    if (username == null && password == null) {
      return 'https://t.me/socks?server=$server&port=$port';
    } else {
      return 'https://t.me/socks?server=$server&port=$port&user=$username&pass=$password';
    }
  }

  /// By default, this method returns the [tg] link.
  @override
  String toString() => tg;
}
