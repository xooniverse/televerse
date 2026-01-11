import 'package:freezed_annotation/freezed_annotation.dart';

/// A class that represents the type of a sticker.
///
/// Currently, there are three types of stickers:
/// - Regular stickers
/// - Mask stickers
/// - Custom emoji stickers
@JsonEnum(fieldRename: FieldRename.snake)
enum StickerType {
  /// A regular sticker.
  @JsonValue("regular")
  regular,

  /// A sticker that is meant to be used as a mask.
  @JsonValue("mask")
  mask,

  /// A sticker that is meant to be used as a custom emoji.
  @JsonValue("custom_emoji")
  customEmoji,
}
