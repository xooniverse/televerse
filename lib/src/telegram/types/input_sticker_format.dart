import 'package:freezed_annotation/freezed_annotation.dart';

/// Type of the sticker to be added to a sticker set.
@JsonEnum(fieldRename: FieldRename.snake)
enum InputStickerFormat {
  /// For a .WEBP or .PNG image
  @JsonValue("static")
  static,

  /// For a .TGS animation
  @JsonValue("animated")
  animated,

  /// For a WEBM video
  @JsonValue("video")
  video;
}
