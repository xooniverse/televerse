part of 'types.dart';

/// Type of the entity. Currently, can be: one of
/// - [mention] - (@username)
/// - [hashtag] - (#hashtag),
/// - [cashtag] - ($USD),
/// - [botCommand] - (/start@jobs_bot),
/// - [url] - (https://telegram.org),
/// - [email] - (do-not-reply@telegram.org),
/// - [phoneNumber] - (+1-212-555-0123),
/// - [bold] - (bold text),
/// - [italic] - (italic text),
/// - [underline] - (underlined text),
/// - [strikethrough] - (strikethrough text),
/// - [spoiler] - (spoiler message),
/// - [code] - (monowidth string),
/// - [pre] - (monowidth block),
/// - [textLink] - (for clickable text URLs),
/// - [textMention] - (for users without usernames),
/// - [customEmoji] - (for inline custom emoji stickers)
enum MessageEntityType {
  /// Mention - (@username)
  mention("mention"),

  /// Hashtag - (#hashtag),
  hashtag("hashtag"),

  /// Cashtag - ($USD),
  cashtag("cashtag"),

  /// Bot command - (/start@jobs_bot),
  botCommand("bot_command"),

  /// URL - https://telegram.org
  url("url"),

  /// Email - do-not-reply@telegram.org
  email("email"),

  /// Phone number - +1-212-555-0123
  phoneNumber("phone_number"),

  /// Bold text - **bold** text
  bold("bold"),

  /// Italic text - *italic* text
  italic("italic"),

  /// Underlined text - __underlined__ text
  underline("underline"),

  /// Strikethrough text - ~strikethrough~ text
  strikethrough("strikethrough"),

  /// Spoiler message - ||spoiler||
  spoiler("spoiler"),

  /// Monowidth string - `monowidth string`
  code("code"),

  /// Monowidth block - ```monowidth block```
  pre("pre"),

  /// For clickable text URLs
  textLink("text_link"),

  /// For users without usernames
  textMention("text_mention"),

  /// For inline custom emoji stickers
  customEmoji("custom_emoji"),

  /// Block quotation
  blockquote("blockquote"),
  ;

  /// The value of this enum.
  final String type;

  /// Constructs a new [MessageEntityType].
  const MessageEntityType(this.type);

  /// Constructs a [MessageEntityType] from a [type].
  factory MessageEntityType.fromJson(String type) {
    return MessageEntityType.values.firstWhere((e) => e.type == type);
  }
}
