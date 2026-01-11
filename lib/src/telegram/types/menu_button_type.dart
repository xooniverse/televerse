import 'package:freezed_annotation/freezed_annotation.dart';

/// Represents the type of the MenuButton.
@JsonEnum(fieldRename: FieldRename.snake)
enum MenuButtonType {
  /// Represents a default menu button
  @JsonValue('default')
  defaultButton,

  /// Represents web app menu button
  @JsonValue('web_app')
  webApp,

  /// Represents Menu Button Command
  @JsonValue('commands')
  commands,
}
