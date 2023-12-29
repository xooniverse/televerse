part of 'models.dart';

/// The reaction is based on an emoji.
class ReactionTypeEmoji implements ReactionType {
  /// Type of the reaction, always “emoji”
  @override
  final ReactionTypeType type = ReactionTypeType.emoji;

  /// The reaction emoji.
  ///
  /// Currently, it can be one of "👍", "👎", "❤", "🔥", "🥰", "👏", "😁", "🤔", "🤯", "😱", "🤬", "😢", "🎉", "🤩", "🤮", "💩", "🙏", "👌", "🕊", "🤡", "🥱", "🥴", "😍", "🐳", "❤‍🔥", "🌚", "🌭", "💯", "🤣", "⚡", "🍌", "🏆", "💔", "🤨", "😐", "🍓", "🍾", "💋", "🖕", "😈", "😴", "😭", "🤓", "👻", "👨‍💻", "👀", "🎃", "🙈", "😇", "😨", "🤝", "✍", "🤗", "🫡", "🎅", "🎄", "☃", "💅", "🤪", "🗿", "🆒", "💘", "🙉", "🦄", "😘", "💊", "🙊", "😎", "👾", "🤷‍♂", "🤷", "🤷‍♀", "😡"
  final String emoji;

  /// Constructs a [ReactionTypeEmoji] object
  ReactionTypeEmoji({
    required this.emoji,
  }) : assert(
          allowedEmojis.contains(emoji),
          'Invalid emoji, please check the [ReactionTypeEmoji.allowedEmojis] list to see the allowed emojis.',
        );

  /// Converts a [ReactionTypeEmoji] object to JSON object
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
      'emoji': emoji,
    };
  }

  /// Creates a [ReactionTypeEmoji] object from JSON object
  factory ReactionTypeEmoji.fromJson(Map<String, dynamic> json) {
    return ReactionTypeEmoji(
      emoji: json['emoji']!,
    );
  }

  /// Currently allowed emojis.
  static List<String> get allowedEmojis {
    return const [
      "👍",
      "👎",
      "❤",
      "🔥",
      "🥰",
      "👏",
      "😁",
      "🤔",
      "🤯",
      "😱",
      "🤬",
      "😢",
      "🎉",
      "🤩",
      "🤮",
      "💩",
      "🙏",
      "👌",
      "🕊",
      "🤡",
      "🥱",
      "🥴",
      "😍",
      "🐳",
      "❤‍🔥",
      "🌚",
      "🌭",
      "💯",
      "🤣",
      "⚡",
      "🍌",
      "🏆",
      "💔",
      "🤨",
      "😐",
      "🍓",
      "🍾",
      "💋",
      "🖕",
      "😈",
      "😴",
      "😭",
      "🤓",
      "👻",
      "👨‍💻",
      "👀",
      "🎃",
      "🙈",
      "😇",
      "😨",
      "🤝",
      "✍",
      "🤗",
      "🫡",
      "🎅",
      "🎄",
      "☃",
      "💅",
      "🤪",
      "🗿",
      "🆒",
      "💘",
      "🙉",
      "🦄",
      "😘",
      "💊",
      "🙊",
      "😎",
      "👾",
      "🤷‍♂",
      "🤷",
      "🤷‍♀",
      "😡",
    ];
  }
}
