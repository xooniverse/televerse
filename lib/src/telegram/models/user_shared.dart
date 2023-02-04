part of models;

/// This object contains information about the user whose identifier was shared with the bot using a [KeyboardButtonRequestUser] button.
///
/// https://core.telegram.org/bots/api#usershared
class UserShared {
  /// Identifier of the request
  int requestId;

  /// Identifier of the shared user. This number may have more than 32 significant bits and some programming languages may have difficulty/silent defects in interpreting it. But it has at most 52 significant bits, so a 64-bit integer or double-precision float type are safe for storing this identifier. The bot may not have access to the user and could be unable to use this identifier, unless the user is already known to the bot by some other means.
  int userId;

  UserShared({
    required this.requestId,
    required this.userId,
  });

  factory UserShared.fromJson(Map<String, dynamic> json) {
    return UserShared(
      requestId: json['request_id']!,
      userId: json['user_id']!,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'request_id': requestId,
      'user_id': userId,
    };
  }
}
