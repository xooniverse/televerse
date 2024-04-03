part of 'models.dart';

/// Represents the connection of the bot with a business account.
class BusinessConnection implements WithUser {
  /// Unique identifier of the business connection.
  final String id;

  /// Business account user that created the business connection.
  final User user;

  /// Identifier of a private chat with the user who created the business connection.
  /// This number may have more than 32 significant bits and some programming languages may have difficulty/silent defects in interpreting it.
  /// But it has at most 52 significant bits, so a 64-bit integer or double-precision float type are safe for storing this identifier.
  final int userChatId;

  /// Date the connection was established in Unix time.
  final int date;

  /// Indicates whether the bot can act on behalf of the business account in chats that were active in the last 24 hours.
  final bool canReply;

  /// Indicates whether the connection is active.
  final bool isEnabled;

  /// Constructs a new BusinessConnection instance with the provided parameters.
  const BusinessConnection({
    required this.id,
    required this.user,
    required this.userChatId,
    required this.date,
    required this.canReply,
    required this.isEnabled,
  });

  /// Constructs a BusinessConnection instance from a JSON map.
  factory BusinessConnection.fromJson(Map<String, dynamic> json) {
    return BusinessConnection(
      id: json['id'],
      user: User.fromJson(json['user']),
      userChatId: json['user_chat_id'],
      date: json['date'],
      canReply: json['can_reply'],
      isEnabled: json['is_enabled'],
    );
  }

  /// Converts the BusinessConnection instance to a JSON map.
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'user': user.toJson(),
      'user_chat_id': userChatId,
      'date': date,
      'can_reply': canReply,
      'is_enabled': isEnabled,
    };
  }

  /// Business account user that created the business connection.
  @override
  User get from => user;
}
