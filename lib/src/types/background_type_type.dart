part of 'types.dart';

/// This object represents the type of a background.
enum BackgroundTypeType {
  /// The background is automatically filled based on the selected colors.
  fill("fill"),

  /// The background is a wallpaper in the JPEG format.
  wallpaper("wallpaper"),

  /// The background is a PNG or TGV pattern to be combined with the background fill chosen by the user.
  pattern("pattern"),

  /// The background is taken directly from a built-in chat theme.
  chatTheme("chat_theme"),
  ;

  /// The value of this enum.
  final String value;

  /// Constructs a new [BackgroundFillType].
  const BackgroundTypeType(this.value);

  /// Creates the type object from passed type string.
  static BackgroundTypeType fromJson(String json) {
    return values.firstWhere((e) {
      return e.value == json;
    });
  }
}
