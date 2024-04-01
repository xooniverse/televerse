part of 'models.dart';

/// This object defines the criteria used to request a suitable chat. The identifier of the selected chat will be shared with the bot when the corresponding button is pressed.
///
/// https://core.telegram.org/bots/api#keyboardbuttonrequestchat
class KeyboardButtonRequestChat {
  /// Signed 32-bit identifier of the request
  final int requestId;

  /// Pass True to request a channel chat, pass False to request a group or a supergroup chat.
  final bool chatIsChannel;

  /// Optional. Pass True to request a forum supergroup, pass False to request a non-forum chat. If not specified, no additional restrictions are applied.
  final bool? chatIsForum;

  /// Optional. Pass True to request a supergroup or a channel with a username, pass False to request a chat without a username. If not specified, no additional restrictions are applied.
  final bool? chatHasUsername;

  /// Optional. Pass True to request a chat owned by the user. Otherwise, no additional restrictions are applied.
  final bool? chatIsCreated;

  /// Optional. A JSON-serialized object listing the required administrator rights of the user in the chat. If not specified, no additional restrictions are applied.
  final ChatAdministratorRights? userAdministratorRights;

  /// Optional. A JSON-serialized object listing the required administrator rights of the bot in the chat. The rights must be a subset of user_administrator_rights. If not specified, no additional restrictions are applied.
  final ChatAdministratorRights? botAdministratorRights;

  /// Optional. Pass True to request a chat with the bot as a member. Otherwise, no additional restrictions are applied.
  final bool? botIsMember;

  /// Optional. Pass True to request the chat's title
  final bool? requestTitle;

  /// Optional. Pass True to request the chat's username
  final bool? requestUsername;

  /// Optional. Pass True to request the chat's photo
  final bool? requestPhoto;

  /// This object defines the criteria used to request a suitable chat. The identifier of the selected chat will be shared with the bot when the corresponding button is pressed.
  const KeyboardButtonRequestChat({
    required this.requestId,
    required this.chatIsChannel,
    this.chatIsForum,
    this.chatHasUsername,
    this.chatIsCreated,
    this.userAdministratorRights,
    this.botAdministratorRights,
    this.botIsMember,
    this.requestPhoto,
    this.requestTitle,
    this.requestUsername,
  });

  /// Creates a [KeyboardButtonRequestChat] from JSON object
  factory KeyboardButtonRequestChat.fromJson(Map<String, dynamic> json) {
    return KeyboardButtonRequestChat(
      requestId: json['request_id']!,
      chatIsChannel: json['chat_is_channel']!,
      chatIsForum: json['chat_is_forum'],
      chatHasUsername: json['chat_has_username'],
      chatIsCreated: json['chat_is_created'],
      userAdministratorRights: json['user_administrator_rights'] != null
          ? ChatAdministratorRights.fromJson(json['user_administrator_rights']!)
          : null,
      botAdministratorRights: json['bot_administrator_rights'] != null
          ? ChatAdministratorRights.fromJson(json['bot_administrator_rights']!)
          : null,
      botIsMember: json['bot_is_member'],
      requestPhoto: json['request_photo'],
      requestTitle: json['request_title'],
      requestUsername: json['request_username'],
    );
  }

  /// Converts a [KeyboardButtonRequestChat] to JSON object
  Map<String, dynamic> toJson() {
    return {
      'request_id': requestId,
      'chat_is_channel': chatIsChannel,
      'chat_is_forum': chatIsForum,
      'chat_has_username': chatHasUsername,
      'chat_is_created': chatIsCreated,
      'user_administrator_rights': userAdministratorRights?.toJson(),
      'bot_administrator_rights': botAdministratorRights?.toJson(),
      'bot_is_member': botIsMember,
      'request_photo': requestPhoto,
      'request_title': requestTitle,
      'request_username': requestUsername,
    }..removeWhere(_nullFilter);
  }
}
