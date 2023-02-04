part of models;

/// This object defines the criteria used to request a suitable user. The identifier of the selected user will be shared with the bot when the corresponding button is pressed.
class KeyboardButtonRequestUser {
  /// Signed 32-bit identifier of the request
  int requestId;

  /// Optional. Pass True to request a bot, pass False to request a regular user. If not specified, no additional restrictions are applied.
  bool? userIsBot;

  /// Optional. Pass True to request a premium user, pass False to request a non-premium user. If not specified, no additional restrictions are applied.
  bool? userIsPremium;

  KeyboardButtonRequestUser({
    required this.requestId,
    this.userIsBot,
    this.userIsPremium,
  });

  factory KeyboardButtonRequestUser.fromJson(Map<String, dynamic> json) {
    return KeyboardButtonRequestUser(
      requestId: json['request_id']!,
      userIsBot: json['user_is_bot'],
      userIsPremium: json['user_is_premium'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'request_id': requestId,
      'user_is_bot': userIsBot,
      'user_is_premium': userIsPremium,
    }..removeWhere((key, value) => value == null);
  }
}
