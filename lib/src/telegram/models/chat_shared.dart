import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/keyboard_button_request_chat.dart'
    show KeyboardButtonRequestChat;
import 'photo_size.dart';

part 'chat_shared.freezed.dart';
part 'chat_shared.g.dart';

/// This object contains information about the chat whose identifier was shared
/// with the bot using a [KeyboardButtonRequestChat] button.
@freezed
class ChatShared with _$ChatShared {
  /// Creates a new [ChatShared] object.
  const factory ChatShared({
    /// Identifier of the request
    @JsonKey(name: 'request_id') required int requestId,

    /// Identifier of the shared chat. This number may have more than 32
    /// significant bits and some programming languages may have
    /// difficulty/silent defects in interpreting it. But it has at most 52
    /// significant bits, so a 64-bit integer or double-precision float type are
    /// safe for storing this identifier. The bot may not have access to the
    /// chat and could be unable to use this identifier, unless the chat is
    /// already known to the bot by some other means.
    @JsonKey(name: 'chat_id') required int chatId,

    /// Optional. Title of the chat, if the title was requested by the bot.
    @JsonKey(name: 'title') String? title,

    /// Optional. Username of the chat, if the username was requested by the bot
    /// and available.
    @JsonKey(name: 'username') String? username,

    /// Optional. Available sizes of the chat photo, if the photo was requested
    /// by the bot
    @JsonKey(name: 'photo') List<PhotoSize>? photo,
  }) = _ChatShared;

  /// Creates a new [ChatShared] object from json.
  factory ChatShared.fromJson(Map<String, dynamic> json) =>
      _$ChatSharedFromJson(json);
}
