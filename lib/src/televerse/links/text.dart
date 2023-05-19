part of links;

/// This class represents a Telegram deeplink text.
class LinkText {
  /// The deeplink.
  final Deeplink link;

  /// The text.
  final String text;

  /// Parse mode. Defaults to [ParseMode.markdownV2].
  final ParseMode parseMode;

  /// A flag that indicates which link to use. If `true`, the [Deeplink.tg] link will be used.
  /// If `false`, the [Deeplink.https] link will be used.
  final bool useTgLink;

  /// Creates a new [LinkText] object.
  const LinkText(
    this.link,
    this.text, {
    this.parseMode = ParseMode.markdownV2,
    this.useTgLink = true,
  });

  /// Converts the [LinkText] object to a [String].
  String toText() {
    if (useTgLink) {
      return '[$text](${link.tg})';
    } else {
      return '[$text](${link.https})';
    }
  }

  /// To HTML string.
  String toHtml() {
    if (useTgLink) {
      return '<a href="${link.tg}">$text</a>';
    } else {
      return '<a href="${link.https}">$text</a>';
    }
  }

  /// Converts the [LinkText] object to a [String].
  @override
  String toString() {
    if (parseMode == ParseMode.html) {
      return toHtml();
    } else {
      return toText();
    }
  }
}
