part of models;

/// This object represents an incoming callback query from a callback button in an inline keyboard. If the button that originated the query was attached to a message sent by the bot, the field message will be present. If the button was attached to a message sent via the bot (in inline mode), the field inline_message_id will be present. Exactly one of the fields data or game_short_name will be present.
///
/// NOTE: After the user presses a callback button, Telegram clients will display a progress bar until you call [answerCallbackQuery](https://core.telegram.org/bots/api#answercallbackquery). It is, therefore, necessary to react by calling [answerCallbackQuery](https://core.telegram.org/bots/api#answercallbackquery) even if no notification to the user is needed (e.g., without specifying any of the optional parameters).
class CallbackQuery {
  /// Unique identifier for this query
  String id;

  /// Sender
  User user;

  /// Optional. Message with the callback button that originated the query. Note that message content and message date will not be available if the message is too old
  Message? message;

  /// Optional. Identifier of the message sent via the bot in inline mode, that originated the query.
  String? inlineMessageId;

  /// Global identifier, uniquely corresponding to the chat to which the message with the callback button was sent. Useful for high scores in games.
  String chatInstance;

  /// Optional. Data associated with the callback button. Be aware that the message originated the query can contain no callback buttons with this data.
  String? data;

  /// Optional. Short name of a Game to be returned, serves as the unique identifier for the game
  String? gameShortName;

  CallbackQuery({
    required this.id,
    required this.user,
    this.message,
    this.inlineMessageId,
    required this.chatInstance,
    this.data,
    this.gameShortName,
  });

  factory CallbackQuery.fromJson(Map<String, dynamic> json) {
    return CallbackQuery(
      id: json['id'],
      user: User.fromJson(json['from']),
      message:
          json['message'] == null ? null : Message.fromJson(json['message']),
      inlineMessageId: json['inline_message_id'],
      chatInstance: json['chat_instance'],
      data: json['data'],
      gameShortName: json['game_short_name'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'from': user.toJson(),
      'message': message?.toJson(),
      'inline_message_id': inlineMessageId,
      'chat_instance': chatInstance,
      'data': data,
      'game_short_name': gameShortName,
    };
  }
}
