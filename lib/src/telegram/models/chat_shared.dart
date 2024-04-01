part of 'models.dart';

/// This object contains information about the chat whose identifier was shared with the bot using a [KeyboardButtonRequestChat] button.
class ChatShared {
  /// Identifier of the request
  final int requestId;

  /// Identifier of the shared chat. This number may have more than 32 significant bits and some programming languages may have difficulty/silent defects in interpreting it. But it has at most 52 significant bits, so a 64-bit integer or double-precision float type are safe for storing this identifier. The bot may not have access to the chat and could be unable to use this identifier, unless the chat is already known to the bot by some other means.
  final int chatId;

  /// Optional. Title of the chat, if the title was requested by the bot.
  final String? title;

  /// Optional. Username of the chat, if the username was requested by the bot and available.
  final String? username;

  /// Optional. Available sizes of the chat photo, if the photo was requested by the bot
  final List<PhotoSize>? photo;

  /// Creates a new [ChatShared] object.
  const ChatShared({
    required this.requestId,
    required this.chatId,
    this.title,
    this.username,
    this.photo,
  });

  /// Creates a new [ChatShared] object from json.
  factory ChatShared.fromJson(Map<String, dynamic> json) {
    return ChatShared(
      requestId: json['request_id']!,
      chatId: json['chat_id']!,
      title: json['title'],
      username: json['username'],
      photo: json['photo'] != null
          ? (json['photo'] as List<dynamic>)
              .map((e) => PhotoSize.fromJson(e))
              .toList()
          : null,
    );
  }

  /// Converts a [ChatShared] to a [Map] for JSON encoding.
  Map<String, dynamic> toJson() {
    return {
      'request_id': requestId,
      'chat_id': chatId,
      'title': title,
      'username': username,
      'photo': photo?.map((size) => size.toJson()).toList(),
    };
  }
}
