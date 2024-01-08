part of 'models.dart';

/// This object defines the criteria used to request a suitable user. The identifier of the selected user will be shared with the bot when the corresponding button is pressed.
class KeyboardButtonRequestUsers {
  /// Signed 32-bit identifier of the request
  final int requestId;

  /// Optional. Pass True to request a bot, pass False to request a regular user. If not specified, no additional restrictions are applied.
  final bool? userIsBot;

  /// Optional. Pass True to request a premium user, pass False to request a non-premium user. If not specified, no additional restrictions are applied.
  final bool? userIsPremium;

  /// Optional. The maximum number of users to be selected; 1-10. Defaults to 1.
  final int? maxQuantity;

  /// Creates a new [KeyboardButtonRequestUsers] object
  const KeyboardButtonRequestUsers({
    required this.requestId,
    this.userIsBot,
    this.userIsPremium,
    this.maxQuantity,
  });

  /// Creates a new [KeyboardButtonRequestUsers] from a JSON object.
  factory KeyboardButtonRequestUsers.fromJson(Map<String, dynamic> json) {
    return KeyboardButtonRequestUsers(
      requestId: json['request_id']!,
      userIsBot: json['user_is_bot'],
      userIsPremium: json['user_is_premium'],
      maxQuantity: json['max_quantity'],
    );
  }

  /// Generates a JSON object from this object.
  Map<String, dynamic> toJson() {
    return {
      'request_id': requestId,
      'user_is_bot': userIsBot,
      'user_is_premium': userIsPremium,
      'max_quantity': maxQuantity,
    }..removeWhere((_, value) => value == null);
  }
}
