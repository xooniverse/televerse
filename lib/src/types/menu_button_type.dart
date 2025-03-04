import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu_button_type.g.dart';

/// Represents the type of the MenuButton.
@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.snake)
enum MenuButtonType {
  /// Represents a default menu button
  @JsonValue('default')
  defaultButton,

  /// Represents web app menu button
  @JsonValue('web_app')
  webApp,

  /// Represents Menu Button Command
  @JsonValue('commands')
  commands;

  /// Gets the JSON value of the [MenuButtonType].
  String get value => _$MenuButtonTypeEnumMap[this]!;
}
