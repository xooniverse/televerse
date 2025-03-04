import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/chat_administrator_rights.dart';

part 'keyboard_button_request_chat.freezed.dart';
part 'keyboard_button_request_chat.g.dart';

/// This object defines the criteria used to request a suitable chat. The
/// identifier of the selected chat will be shared with the bot when the
/// corresponding button is pressed.
///
/// https://core.telegram.org/bots/api#keyboardbuttonrequestchat
@freezed
class KeyboardButtonRequestChat with _$KeyboardButtonRequestChat {
  /// Creates a new [KeyboardButtonRequestChat] object.
  const factory KeyboardButtonRequestChat({
    /// Signed 32-bit identifier of the request.
    @JsonKey(name: 'request_id') required int requestId,

    /// Pass True to request a channel chat, pass False to request a group or a
    /// supergroup chat.
    @JsonKey(name: 'chat_is_channel') required bool chatIsChannel,

    /// Optional. Pass True to request a forum supergroup, pass False to request
    /// a non-forum chat. If not specified, no additional restrictions are
    /// applied.
    @JsonKey(name: 'chat_is_forum') bool? chatIsForum,

    /// Optional. Pass True to request a supergroup or a channel with a
    /// username, pass False to request a chat without a username. If not
    /// specified, no additional restrictions are applied.
    @JsonKey(name: 'chat_has_username') bool? chatHasUsername,

    /// Optional. Pass True to request a chat owned by the user. Otherwise, no
    /// additional restrictions are applied.
    @JsonKey(name: 'chat_is_created') bool? chatIsCreated,

    /// Optional. A JSON-serialized object listing the required administrator
    /// rights of the user in the chat. If not specified, no additional
    /// restrictions are applied.
    @JsonKey(name: 'user_administrator_rights')
    ChatAdministratorRights? userAdministratorRights,

    /// Optional. A JSON-serialized object listing the required administrator
    /// rights of the bot in the chat. The rights must be a subset of
    /// user_administrator_rights. If not specified, no additional restrictions
    /// are applied.
    @JsonKey(name: 'bot_administrator_rights')
    ChatAdministratorRights? botAdministratorRights,

    /// Optional. Pass True to request a chat with the bot as a member.
    /// Otherwise, no additional restrictions are applied.
    @JsonKey(name: 'bot_is_member') bool? botIsMember,

    /// Optional. Pass True to request the chat's title.
    @JsonKey(name: 'request_title') bool? requestTitle,

    /// Optional. Pass True to request the chat's username.
    @JsonKey(name: 'request_username') bool? requestUsername,

    /// Optional. Pass True to request the chat's photo.
    @JsonKey(name: 'request_photo') bool? requestPhoto,
  }) = _KeyboardButtonRequestChat;

  /// Creates a new [KeyboardButtonRequestChat] from a JSON object.
  factory KeyboardButtonRequestChat.fromJson(Map<String, dynamic> json) =>
      _$KeyboardButtonRequestChatFromJson(json);
}
