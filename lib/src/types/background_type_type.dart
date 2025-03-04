import 'package:freezed_annotation/freezed_annotation.dart';
part 'background_type_type.g.dart';

/// Represents the type of the Background
@JsonEnum(fieldRename: FieldRename.snake, alwaysCreate: true)
enum BackgroundTypeType {
  /// The background is automatically filled based on the selected colors.
  @JsonValue("fill")
  fill,

  /// The background is a wallpaper in the JPEG format.
  @JsonValue("wallpaper")
  wallpaper,

  /// The background is a PNG or TGV pattern to be combined with the background
  /// fill chosen by the user.
  @JsonValue("pattern")
  pattern,

  /// The background is taken directly from a built-in chat theme.
  @JsonValue("chat_theme")
  chatTheme,
  ;

  /// Converts the [BackgroundTypeType] to its corresponding JSON value.
  String toJson() => _$BackgroundTypeTypeEnumMap[this]!;
}
