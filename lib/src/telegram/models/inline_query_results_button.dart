part of 'models.dart';

/// This object represents a button to be shown above inline query results. You must use exactly one of the optional fields.
///
/// Since: Bot API 6.7
class InlineQueryResultsButton {
  /// Label text on the button
  final String text;

  /// Optional. Description of the Web App that will be launched when the user presses the button. The Web App will be able to switch back to the inline mode using the method web_app_switch_inline_query inside the Web App.
  final WebAppInfo? webApp;

  /// Optional. Deep-linking parameter for the /start message sent to the bot when a user presses the button. 1-64 characters, only `A-Z`, `a-z`, `0-9`, `_` and `-` are allowed.
  ///
  /// Example: An inline bot that sends YouTube videos can ask the user to connect the bot to their YouTube account to adapt search results accordingly. To do this, it displays a 'Connect your YouTube account' button above the results, or even before showing any. The user presses the button, switches to a private chat with the bot and, in doing so, passes a start parameter that instructs the bot to return an OAuth link. Once done, the bot can offer a switch_inline button so that the user can easily return to the chat where they wanted to use the bot's inline capabilities.
  final String? startParameter;

  /// Constructs an [InlineQueryResultsButton]
  InlineQueryResultsButton({
    required this.text,
    this.webApp,
    this.startParameter,
  });

  /// Converts this object to a map in JSON format.
  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'web_app': webApp?.toJson(),
      'start_parameter': startParameter,
    }..removeWhere((_, v) => v == null);
  }

  /// Creates an [InlineQueryResultsButton] from a JSON object.
  factory InlineQueryResultsButton.fromJson(Map<String, dynamic> json) {
    return InlineQueryResultsButton(
      text: json['text'],
      webApp:
          json['web_app'] != null ? WebAppInfo.fromJson(json['web_app']) : null,
      startParameter: json['start_parameter'],
    );
  }
}
