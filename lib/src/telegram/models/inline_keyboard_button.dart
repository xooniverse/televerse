part of models;

/// This object represents one button of an inline keyboard. You must use exactly one of the optional fields.
class InlineKeyboardButton {
  /// Label text on the button
  String text;

  /// Optional. HTTP or tg:// url to be opened when button is pressed
  String? url;

  /// Optional. An HTTP URL used to automatically authorize the user. Can be used as a replacement for the Telegram Login Widget.
  LoginURL? loginUrl;

  /// Optional. Data to be sent in a callback query to the bot when button is pressed, 1-64 bytes
  String? callbackData;

  /// Optional. If set, pressing the button will prompt the user to select one of their chats, open that chat and insert the bot's username and the specified inline query in the input field. Can be empty, in which case just the bot's username will be inserted.
  ///
  /// Note: This offers an easy way for users to start using your bot in inline mode when they are currently in a private chat with it. Especially useful when combined with switch_pm… actions – in this case the user will be automatically returned to the chat they switched from, skipping the chat selection screen.
  String? switchInlineQuery;

  /// Optional. If set, pressing the button will insert the bot's username and the specified inline query in the current chat's input field. Can be empty, in which case only the bot's username will be inserted.
  ///
  /// This offers a quick way for the user to open your bot in inline mode in the same chat – good for selecting something from multiple options.
  String? switchInlineQueryCurrentChat;

  /// Optional. Description of the game that will be launched when the user presses the button.
  ///
  /// NOTE: This type of button must always be the first button in the first row.
  CallbackGame? callbackGame;

  /// Optional. Specify True, to send a Pay button.
  ///
  /// NOTE: This type of button must always be the first button in the first row.
  bool? pay;

  /// Optional. Description of the Web App that will be launched when the user presses the button. The Web App will be able to send an arbitrary message on behalf of the user using the method answerWebAppQuery. Available only in private chats between a user and the bot.
  WebAppInfo? webAppInfo;

  /// This object represents one button of an inline keyboard.
  ///
  /// The inline keyboard consists of a row of buttons, each represented by an [InlineKeyboardButton] object. You can use the various fields to specify the behavior of the button.
  InlineKeyboardButton({
    required this.text,
    this.url,
    this.loginUrl,
    this.callbackData,
    this.switchInlineQuery,
    this.switchInlineQueryCurrentChat,
    this.callbackGame,
    this.pay,
    this.webAppInfo,
  });

  /// Creates an [InlineKeyboardButton] from JSON object
  factory InlineKeyboardButton.fromJson(Map<String, dynamic> json) {
    return InlineKeyboardButton(
      text: json['text'],
      url: json['url'],
      loginUrl: json['login_url'] != null
          ? LoginURL.fromJson(json['login_url'])
          : null,
      callbackData: json['callback_data'],
      switchInlineQuery: json['switch_inline_query'],
      switchInlineQueryCurrentChat: json['switch_inline_query_current_chat'],
      callbackGame: json['callback_game'] != null
          ? CallbackGame.fromJson(json['callback_game'])
          : null,
      pay: json['pay'],
      webAppInfo: json['web_app_info'] != null
          ? WebAppInfo.fromJson(json['web_app_info'])
          : null,
    );
  }

  /// Converts an [InlineKeyboardButton] to JSON object
  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'url': url,
      'login_url': loginUrl?.toJson(),
      'callback_data': callbackData,
      'switch_inline_query': switchInlineQuery,
      'switch_inline_query_current_chat': switchInlineQueryCurrentChat,
      'callback_game': callbackGame?.toJson(),
      'pay': pay,
      'web_app_info': webAppInfo?.toJson(),
    }..removeWhere((key, value) => value == null);
  }
}
