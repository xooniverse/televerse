import 'package:freezed_annotation/freezed_annotation.dart';
part 'input_sticker_format.g.dart';

/// Type of the sticker to be added to a sticker set.
@JsonEnum(fieldRename: FieldRename.snake, alwaysCreate: true)
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

  /// Converts the [InputStickerFormat] to its corresponding JSON value.
  String toJson() => _$InputStickerFormatEnumMap[this]!;
}
