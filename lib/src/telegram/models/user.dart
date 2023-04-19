part of models;

/// This object represents a Telegram user or bot.
class User {
  /// Unique identifier for this user or bot. This number may have more than 32 significant bits and some programming languages may have difficulty/silent defects in interpreting it. But it has at most 52 significant bits, so a 64-bit integer or double-precision float type are safe for storing this identifier.
  int id;

  /// True, if this user is a bot
  bool isBot;

  /// User's or bot's first name
  String firstName;

  /// Optional. User's or bot's last name
  String? lastName;

  /// Optional. User's or bot's username
  String? username;

  /// Optional. IETF language tag of the user's language
  String? languageCode;

  /// Optional. True, if this user is a Telegram Premium user
  bool? isPremium;

  /// Optional. True, if this user added the bot to the attachment menu
  bool? addedToAttachmentMenu;

  /// Optional. True, if the bot can be invited to groups. Returned only in getMe.
  bool? canJoinGroups;

  /// Optional. True, if privacy mode is disabled for the bot. Returned only in getMe.
  bool? canReadAllGroupMessages;

  /// Optional. True, if the bot supports inline queries. Returned only in getMe.
  bool? supportsInlineQueries;

  /// Constructs a [User] object
  User({
    required this.id,
    required this.isBot,
    required this.firstName,
    this.lastName,
    this.username,
    this.languageCode,
    this.isPremium,
    this.addedToAttachmentMenu,
    this.canJoinGroups,
    this.canReadAllGroupMessages,
    this.supportsInlineQueries,
  });

  /// Creates a [User] object from JSON object
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      isBot: json['is_bot'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      username: json['username'],
      languageCode: json['language_code'],
      isPremium: json['is_premium'],
      addedToAttachmentMenu: json['added_to_attachment_menu'],
      canJoinGroups: json['can_join_groups'],
      canReadAllGroupMessages: json['can_read_all_group_messages'],
      supportsInlineQueries: json['supports_inline_queries'],
    );
  }

  /// Converts a [User] object to JSON object
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'is_bot': isBot,
      'first_name': firstName,
      'last_name': lastName,
      'username': username,
      'language_code': languageCode,
      'is_premium': isPremium,
      'added_to_attachment_menu': addedToAttachmentMenu,
      'can_join_groups': canJoinGroups,
      'can_read_all_group_messages': canReadAllGroupMessages,
      'supports_inline_queries': supportsInlineQueries,
    }..removeWhere((key, value) => value == null);
  }
}
