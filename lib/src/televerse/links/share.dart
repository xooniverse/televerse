part of 'links.dart';

/// Used to share a prepared message and URL into a chosen chat's text field.
/// These links should be handled as follows:
/// Open a dialog selection prompt
/// After selection: validate, trim and enter the URL at the beginning of the text field
/// Append a newline to the text field
/// Append and select the text, if present
class ShareLink extends Deeplink {
  /// URL to share
  final String url;

  /// Message to share
  final String? text;

  /// Creates a new [ShareLink] object.
  const ShareLink(
    this.url, {
    this.text,
  });

  /// Encoded URL
  String get _encodedUrl => _encodeParameter(url);

  /// Encoded text
  String get _encodedText => _encodeParameter(text);

  /// tg:// link
  @override
  String get tg {
    final url = 'tg://msg_url?url=$_encodedUrl';
    if (text != null) {
      return '$url&text=$_encodedText';
    } else {
      return url;
    }
  }

  /// https://t.me/ link
  @override
  String get https {
    final url = 'https://t.me/share/url?url=$_encodedUrl';
    if (text != null) {
      return '$url&text=$_encodedText';
    } else {
      return url;
    }
  }

  /// By default, this method returns the [tg] link.
  @override
  String toString() => tg;
}
