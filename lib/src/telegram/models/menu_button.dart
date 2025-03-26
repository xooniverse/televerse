// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/web_app_info.dart';
import 'package:televerse/televerse.dart';

part 'menu_button.freezed.dart';
part 'menu_button.g.dart';

/// Abstract interface for exposing the type property on MenuButton
abstract interface class _MenuButtonImpl {
  /// Type of the menu button
  MenuButtonType get type;
}

/// This object describes the bot's menu button in a private chat. It should be
/// one of [MenuButtonCommands], [MenuButtonWebApp], or [MenuButtonDefault].
///
/// If a menu button other than MenuButtonDefault is set for a private chat,
/// then it is applied in the chat. Otherwise, the default menu button is
/// applied. By default, the menu button opens the list of bot commands.
@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.snake)
abstract class MenuButton with _$MenuButton implements _MenuButtonImpl {
  /// Describes that no specific value for the menu button was set.
  const factory MenuButton({
    /// Type of the menu button
    @JsonKey(name: 'type')
    @Default(MenuButtonType.defaultButton)
    MenuButtonType type,
  }) = MenuButtonDefault;

  /// Represents a menu button, which launches a Web App.
  const factory MenuButton.webApp({
    /// Type of the menu button
    @JsonKey(name: 'type') @Default(MenuButtonType.webApp) MenuButtonType type,

    /// Text on the button
    @JsonKey(name: 'text') required String text,

    /// Description of the Web App that will be launched when the user presses
    /// the button. The Web App will be able to send an arbitrary message on
    /// behalf of the user using the method answerWebAppQuery.
    ///
    /// Alternatively, a t.me link to a Web App of the bot can be specified in
    /// the object instead of the Web App's URL, in which case the Web App will
    /// be opened as if the user pressed the link.
    @JsonKey(name: 'web_app') required WebAppInfo webApp,
  }) = MenuButtonWebApp;

  /// Represents a menu button, which opens the bot's list of commands.
  const factory MenuButton.commands({
    /// Type of the menu button
    @JsonKey(name: 'type')
    @Default(MenuButtonType.commands)
    MenuButtonType type,
  }) = MenuButtonCommands;

  /// Creates a new [MenuButton] object. This method decides which [MenuButton]
  /// subclass to use based on the [type] field.
  factory MenuButton.fromJson(Map<String, dynamic> json) =>
      _$MenuButtonFromJson(json);
}
