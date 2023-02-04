part of models;

/// This object represents one button of the reply keyboard. For simple text buttons String can be used instead of this object to specify text of the button. Optional fields web_app, request_contact, request_location, and request_poll are mutually exclusive.
class KeyboardButton {
  /// Text of the button. If none of the optional fields are used, it will be sent as a message when the button is pressed
  String text;

  /// Optional. If True, the user's phone number will be sent as a contact when the button is pressed. Available in private chats only
  ///
  /// Note: request_contact and request_location options will only work in Telegram versions released after 9 April, 2016. Older clients will display unsupported message.
  bool? requestContact;

  /// Optional. If True, the user's current location will be sent when the button is pressed. Available in private chats only.
  bool? requestLocation;

  /// Optional. If specified, the user will be asked to create a poll and send it to the bot when the button is pressed. Available in private chats only.
  ///
  /// Note: request_poll option will only work in Telegram versions released after 23 January, 2020. Older clients will display unsupported message.
  KeyboardButtonPollType? requestPoll;

  /// Optional. If specified, the described Web App will be launched when the button is pressed. The Web App will be able to send a “web_app_data” service message. Available in private chats only.
  ///
  /// Note: web_app option will only work in Telegram versions released after 16 April, 2022. Older clients will display unsupported message.
  WebAppInfo? webApp;

  /// Optional. If specified, pressing the button will open a list of suitable users. Tapping on any user will send their identifier to the bot in a “user_shared” service message. Available in private chats only.
  ///
  /// Since: Bot API 6.5
  KeyboardButtonRequestUser? requestUser;

  KeyboardButton({
    required this.text,
    this.requestContact,
    this.requestLocation,
    this.requestPoll,
    this.webApp,
    this.requestUser,
  });

  factory KeyboardButton.fromJson(Map<String, dynamic> json) {
    return KeyboardButton(
      text: json['text'],
      requestContact: json['request_contact'] ?? false,
      requestLocation: json['request_location'] ?? false,
      requestPoll: json['request_poll'] != null
          ? KeyboardButtonPollType.fromJson(json['request_poll'])
          : null,
      webApp:
          json['web_app'] != null ? WebAppInfo.fromJson(json['web_app']) : null,
      requestUser: json['request_user'] != null
          ? KeyboardButtonRequestUser.fromJson(json['request_user'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'request_contact': requestContact,
      'request_location': requestLocation,
      'request_poll': requestPoll?.toJson(),
      'web_app': webApp?.toJson(),
    }..removeWhere((key, value) => value == null);
  }
}
