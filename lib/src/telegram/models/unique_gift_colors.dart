// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'unique_gift_colors.freezed.dart';
part 'unique_gift_colors.g.dart';

/// This object contains information about the color scheme for a user's name, message replies and link previews based on a unique gift.
@freezed
abstract class UniqueGiftColors with _$UniqueGiftColors {
  /// Creates a new [UniqueGiftColors] object.
  const factory UniqueGiftColors({
    /// Custom emoji identifier of the unique gift's model
    @JsonKey(name: 'model_custom_emoji_id') required String modelCustomEmojiId,

    /// Custom emoji identifier of the unique gift's symbol
    @JsonKey(name: 'symbol_custom_emoji_id')
    required String symbolCustomEmojiId,

    /// Main color used in light themes; RGB format
    @JsonKey(name: 'light_theme_main_color') required int lightThemeMainColor,

    /// List of 1-3 additional colors used in light themes; RGB format
    @JsonKey(name: 'light_theme_other_colors')
    required List<int> lightThemeOtherColors,

    /// Main color used in dark themes; RGB format
    @JsonKey(name: 'dark_theme_main_color') required int darkThemeMainColor,

    /// List of 1-3 additional colors used in dark themes; RGB format
    @JsonKey(name: 'dark_theme_other_colors')
    required List<int> darkThemeOtherColors,
  }) = _UniqueGiftColors;

  /// Creates a new [UniqueGiftColors] object from a JSON [Map].
  factory UniqueGiftColors.fromJson(Map<String, dynamic> json) =>
      _$UniqueGiftColorsFromJson(json);
}
