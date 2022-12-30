import 'package:televerse/src/telegram/models/web_app_info.dart';
import 'package:televerse/src/types/menu_button_type.dart';

import 'abstracts/menu_button.dart';

/// Represents a menu button, which launches a Web App.
class MenuButtonWebApp extends MenuButton {
  @override
  MenuButtonType get type => MenuButtonType.webApp;

  /// Text on the button
  final String text;

  /// Description of the Web App that will be launched when the user presses the button. The Web App will be able to send an arbitrary message on behalf of the user using the method answerWebAppQuery.
  final WebAppInfo webApp;

  const MenuButtonWebApp({
    required this.text,
    required this.webApp,
  });

  factory MenuButtonWebApp.fromJson(Map<String, dynamic> json) {
    return MenuButtonWebApp(
      text: json['text'] as String,
      webApp: WebAppInfo.fromJson(json['web_app'] as Map<String, dynamic>),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
      'text': text,
      'web_app': webApp.toJson(),
    };
  }
}
