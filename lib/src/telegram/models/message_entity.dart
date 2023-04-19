part of models;

/// This object represents one special entity in a text message. For example, hashtags, usernames, URLs, etc.
class MessageEntity {
  /// Type of the entity. Currently, can be:
  /// - mention - (@username)
  /// - hashtag - (#hashtag),
  /// - cashtag - ($USD),
  /// - botC  ommand - (/start@jobs_bot),
  /// - url - (https://telegram.org),
  /// - email - (do-not-reply@telegram.org),
  /// - phoneNumber - (+1-212-555-0123),
  /// - bold - (bold text),
  /// - italic - (italic text),
  /// - underline - (underlined text),
  /// - strikethrough - (strikethrough text),
  /// - spoiler - (spoiler message),
  /// - code - (monowidth string),
  /// - pre - (monowidth block),
  /// - textLink - (for clickable text URLs),
  /// - textMention - (for users without usernames),
  /// - customEmoji - (for inline custom emoji stickers)
  MessageEntityType type;

  /// Offset in UTF-16 code units to the start of the entity
  int offset;

  /// Length of the entity in UTF-16 code units
  int length;

  /// Optional. For “text_link” only, URL that will be opened after user taps on the text
  String? url;

  /// Optional. For “text_mention” only, the mentioned user
  User? user;

  /// Optional. For “pre” only, the programming language of the entity text
  String? language;

  /// Optional. For “custom_emoji” only, unique identifier of the custom emoji. Use getCustomEmojiStickers to get full information about the sticker
  String? customEmojiId;

  /// Constructs a [MessageEntity] object
  MessageEntity({
    required this.type,
    required this.offset,
    required this.length,
    this.url,
    this.user,
    this.language,
    this.customEmojiId,
  });

  /// Converts a [MessageEntity] object to a JSON object
  factory MessageEntity.fromJson(Map<String, dynamic> json) {
    return MessageEntity(
      type: MessageEntityType.fromJson(json['type']),
      offset: json['offset'],
      length: json['length'],
      url: json['url'],
      user: json['user'] != null ? User.fromJson(json['user']) : null,
      language: json['language'],
      customEmojiId: json['custom_emoji_id'],
    );
  }

  /// Converts a [MessageEntity] object to a JSON object
  Map<String, dynamic> toJson() {
    return {
      'type': type.type,
      'offset': offset,
      'length': length,
      'url': url,
      'user': user?.toJson(),
      'language': language,
      'custom_emoji_id': customEmojiId,
    }..removeWhere((key, value) => value == null);
  }
}
