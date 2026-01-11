import 'package:freezed_annotation/freezed_annotation.dart';

/// Type of the entity. Currently, can be one of:
/// - [mention] - (@username)
/// - [hashtag] - (#hashtag)
/// - [cashtag] - ($USD)
/// - [botCommand] - (/start@jobs_bot)
/// - [url] - (https://telegram.org)
/// - [email] - (do-not-reply@telegram.org)
/// - [phoneNumber] - (+1-212-555-0123)
/// - [bold] - (bold text)
/// - [italic] - (italic text)
/// - [underline] - (underlined text)
/// - [strikethrough] - (strikethrough text)
/// - [spoiler] - (spoiler message)
/// - [code] - (monowidth string)
/// - [pre] - (monowidth block)
/// - [textLink] - (for clickable text URLs)
/// - [textMention] - (for users without usernames)
/// - [customEmoji] - (for inline custom emoji stickers)
@JsonEnum(fieldRename: FieldRename.snake)
enum MessageEntityType {
  /// Mention - (@username)
  @JsonValue('mention')
  mention,

  /// Hashtag - (#hashtag)
  @JsonValue('hashtag')
  hashtag,

  /// Cashtag - ($USD)
  @JsonValue('cashtag')
  cashtag,

  /// Bot command - (/start@jobs_bot)
  @JsonValue('bot_command')
  botCommand,

  /// URL - https://telegram.org
  @JsonValue('url')
  url,

  /// Email - do-not-reply@telegram.org
  @JsonValue('email')
  email,

  /// Phone number - +1-212-555-0123
  @JsonValue('phone_number')
  phoneNumber,

  /// Bold text - **bold** text
  @JsonValue('bold')
  bold,

  /// Italic text - *italic* text
  @JsonValue('italic')
  italic,

  /// Underlined text - __underlined__ text
  @JsonValue('underline')
  underline,

  /// Strikethrough text - ~strikethrough~ text
  @JsonValue('strikethrough')
  strikethrough,

  /// Spoiler message - ||spoiler||
  @JsonValue('spoiler')
  spoiler,

  /// Monowidth string - `monowidth string`
  @JsonValue('code')
  code,

  /// Monowidth block - ```monowidth block```
  @JsonValue('pre')
  pre,

  /// For clickable text URLs
  @JsonValue('text_link')
  textLink,

  /// For users without usernames
  @JsonValue('text_mention')
  textMention,

  /// For inline custom emoji stickers
  @JsonValue('custom_emoji')
  customEmoji,

  /// Block quotation
  @JsonValue('blockquote')
  blockquote,

  /// Expandable Block Quote
  @JsonValue('expandable_blockquote')
  expandableBlockquote,
}
