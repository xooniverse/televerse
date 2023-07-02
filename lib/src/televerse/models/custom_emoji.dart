part of televerse.models;

/// This object represents a custom emoji entity.
class CustomEmoji {
  /// The emoji.
  ///
  /// Example: "👍"
  final String emoji;

  /// The ID of the custom emoji.
  final int id;

  /// Parse Mode
  ///
  /// This should be either [ParseMode.html] or [ParseMode.markdownV2].
  final ParseMode parseMode;

  /// Constructs a new [CustomEmoji] instance.
  ///
  /// - The [emoji] is the emoji.
  /// - The [id] is the ID of the custom emoji.
  ///
  /// By default, the text will be parsed in HTML mode. You can change this by setting the [parseMode] parameter.
  const CustomEmoji(
    this.emoji,
    this.id, {
    this.parseMode = ParseMode.html,
  }) : assert(
          parseMode == ParseMode.html || parseMode == ParseMode.markdownV2,
          "The [parseMode] must be either ParseMode.html or ParseMode.markdownV2",
        );

  /// Returns a string representation of the emoji.
  @override
  String toString() {
    if (parseMode == ParseMode.html) {
      return '<tg-emoji emoji-id="$id">$emoji</tg-emoji>';
    } else {
      return '![$emoji](tg://emoji?id=$id)';
    }
  }
}
