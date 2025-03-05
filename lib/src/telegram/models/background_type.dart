// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/background_fill.dart';
import 'package:televerse/src/telegram/models/document.dart';
import 'package:televerse/televerse.dart';

part 'background_type.freezed.dart';
part 'background_type.g.dart';

/// This object describes the type of a background.
@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.snake)
sealed class BackgroundType with _$BackgroundType {
  /// The background is automatically filled based on the selected colors.
  const factory BackgroundType.fill({
    /// Type of the background - always fill
    @JsonKey(name: 'type')
    @Default(BackgroundTypeType.fill)
    BackgroundTypeType type,

    /// The background fill.
    @JsonKey(name: 'fill') required final BackgroundFill fill,

    /// Dimming of the background in dark themes, as a percentage; 0-100.
    @JsonKey(name: 'dark_theme_dimming') @Default(0) final int darkThemeDimming,
  }) = BackgroundTypeFill;

  /// The background is automatically filled based on the selected colors.
  const factory BackgroundType.wallpaper({
    /// Type of the background - always `wallpaper`
    @JsonKey(name: 'type')
    @Default(BackgroundTypeType.wallpaper)
    BackgroundTypeType type,

    /// Document with the wallpaper.
    @JsonKey(name: 'document') required final Document document,

    /// Dimming of the background in dark themes, as a percentage; 0-100.
    @JsonKey(name: "dark_theme_dimming") @Default(0) final int darkThemeDimming,

    /// True, if the wallpaper is downscaled to fit in a 450x450 square and then
    /// box-blurred with radius 12.
    @JsonKey(name: "is_blurred") final bool? isBlurred,

    /// True, if the background moves slightly when the device is tilted.
    @JsonKey(name: "is_moving") final bool? isMoving,
  }) = BackgroundTypeWallpaper;

  /// The background is a .PNG or .TGV (gzipped subset of SVG with MIME type
  /// “application/x-tgwallpattern”) pattern to be combined with the background
  /// fill chosen by the user.
  const factory BackgroundType.pattern({
    /// Type of the background - always `pattern`
    @JsonKey(name: 'type')
    @Default(BackgroundTypeType.pattern)
    BackgroundTypeType type,

    /// Document with the wallpaper.
    @JsonKey(name: 'document') required final Document document,

    /// The background fill that is combined with the pattern.
    @JsonKey(name: 'fill') required final BackgroundFill fill,

    /// Intensity of the pattern when it is shown above the filled background;
    /// 0-100.
    @JsonKey(name: 'intensity') @Default(0) final int intensity,

    /// True, if the background fill must be applied only to the pattern itself.
    /// All other pixels are black in this case. For dark themes only.
    @JsonKey(name: "is_inverted") final bool? isInverted,

    /// True, if the background moves slightly when the device is tilted.
    @JsonKey(name: "is_moving") final bool? isMoving,
  }) = BackgroundTypePattern;

  /// The background is taken directly from a built-in chat theme.
  const factory BackgroundType.chatTheme({
    /// Type of the background - always fill
    @JsonKey(name: 'type')
    @Default(BackgroundTypeType.chatTheme)
    BackgroundTypeType type,

    /// Name of the chat theme, which is usually an emoji
    @JsonKey(name: 'theme_name') required final String themeName,
  }) = BackgroundTypeChatTheme;

  /// Create the BackgroundType instance from JSON Map
  factory BackgroundType.fromJson(Map<String, Object?> json) =>
      _$BackgroundTypeFromJson(json);
}
