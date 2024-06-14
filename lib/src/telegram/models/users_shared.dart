part of 'models.dart';

/// This object contains information about the users whose identifiers were shared with the bot using a [KeyboardButtonRequestUsers] button.
///
/// https://core.telegram.org/bots/api#usershared
class UsersShared {
  /// Identifier of the request
  final int requestId;

  /// Identifiers of the shared users. These numbers may have more than 32 significant bits and some programming languages may have difficulty/silent defects in interpreting them. But they have at most 52 significant bits, so 64-bit integers or double-precision float types are safe for storing these identifiers. The bot may not have access to the users and could be unable to use these identifiers, unless the users are already known to the bot by some other means.
  final List<SharedUser> users;

  /// Constructs a [UsersShared] object
  const UsersShared({
    required this.requestId,
    required this.users,
  });

  /// Creates a [UsersShared] object from JSON object
  factory UsersShared.fromJson(Map<String, dynamic> json) {
    return UsersShared(
      requestId: json['request_id']!,
      users: (json['users'] as List<dynamic>)
          .map((e) => SharedUser.fromJson(e))
          .toList(),
    );
  }

  /// Converts a [UsersShared] object to JSON object
  Map<String, dynamic> toJson() {
    return {
      'request_id': requestId,
      'users': users.map((user) => user.toJson()).toList(),
    };
  }
}
