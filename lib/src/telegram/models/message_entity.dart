// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/telegram.dart' show MessageEntityType, User;

part 'message_entity.freezed.dart';
part 'message_entity.g.dart';

/// This object represents one special entity in a text message. For example,
/// hashtags, usernames, URLs, etc.
@freezed
abstract class MessageEntity with _$MessageEntity {
  /// Constructs the `MessageEntity` object
  const factory MessageEntity({
    /// Type of the entity. Currently, can be:
    /// - mention - (@username)
    /// - hashtag - (#hashtag),
    /// - cashtag - ($USD),
    /// - botCommand - (/start@jobs_bot),
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
    @JsonKey(name: 'type') required MessageEntityType type,

    /// Offset in UTF-16 code units to the start of the entity
    @JsonKey(name: 'offset') required int offset,

    /// Length of the entity in UTF-16 code units
    @JsonKey(name: 'length') required int length,

    /// Optional. For "text_link" only, URL that will be opened after user taps
    /// on the text
    @JsonKey(name: 'url') String? url,

    /// Optional. For "text_mention" only, the mentioned user
    @JsonKey(name: 'user') User? user,

    /// Optional. For "pre" only, the programming language of the entity text
    @JsonKey(name: 'language') String? language,

    /// Optional. For "custom_emoji" only, unique identifier of the custom
    /// emoji. Use getCustomEmojiStickers to get full information about the
    /// sticker
    @JsonKey(name: 'custom_emoji_id') String? customEmojiId,
  }) = _MessageEntity;

  /// Converts a JSON object to a [MessageEntity]
  factory MessageEntity.fromJson(Map<String, dynamic> json) =>
      _$MessageEntityFromJson(json);
}
