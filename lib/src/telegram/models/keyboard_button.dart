// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'keyboard_button_poll_type.dart';
import 'web_app_info.dart';
import 'keyboard_button_request_users.dart';
import 'keyboard_button_request_chat.dart';

part 'keyboard_button.freezed.dart';
part 'keyboard_button.g.dart';

/// This object represents one button of the reply keyboard. For simple text
/// buttons String can be used instead of this object to specify text of the
/// button. Optional fields web_app, request_contact, request_location, and
/// request_poll are mutually exclusive.
@freezed
abstract class KeyboardButton with _$KeyboardButton {
  /// Creates a new [KeyboardButton] with the specified [text].
  ///
  /// - [text] Text of the button. If none of the optional fields are used, it
  ///   will be sent as a message when the button is pressed
  /// - [requestContact] If True, the user's phone number will be sent as a
  ///   contact when the button is pressed. Available in private chats only
  /// - [requestLocation] If True, the user's current location will be sent when
  ///   the button is pressed. Available in private chats only.
  /// - [requestPoll] If specified, the user will be asked to create a poll and
  ///   send it to the bot when the button is pressed. Available in private
  ///   chats only.
  /// - [webApp] If specified, the described Web App will be launched when the
  ///   button is pressed. The Web App will be able to send a "web_app_data"
  ///   service message. Available in private chats only.
  /// - [requestUsers] If specified, pressing the button will open a list of
  ///   suitable users. Tapping on any user will send their identifier to the
  ///   bot in a "user_shared" service message. Available in private chats only.
  /// - [requestChat] If specified, pressing the button will open a list of
  ///   suitable chats. Tapping on a chat will send its identifier to the bot in
  ///   a "chat_shared" service message. Available in private chats only.
  const factory KeyboardButton({
    /// Text of the button. If none of the optional fields are used, it will be
    /// sent as a message when the button is pressed
    @JsonKey(name: 'text') required String text,

    /// Optional. If True, the user's phone number will be sent as a contact
    /// when the button is pressed. Available in private chats only
    ///
    /// Note: request_contact and request_location options will only work in
    /// Telegram versions released after 9 April, 2016. Older clients will
    /// display unsupported message.
    @JsonKey(name: 'request_contact') bool? requestContact,

    /// Optional. If True, the user's current location will be sent when the
    /// button is pressed. Available in private chats only.
    @JsonKey(name: 'request_location') bool? requestLocation,

    /// Optional. If specified, the user will be asked to create a poll and send
    /// it to the bot when the button is pressed. Available in private chats
    /// only.
    ///
    /// Note: request_poll option will only work in Telegram versions released
    /// after 23 January, 2020. Older clients will display unsupported message.
    @JsonKey(name: 'request_poll') KeyboardButtonPollType? requestPoll,

    /// Optional. If specified, the described Web App will be launched when the
    /// button is pressed. The Web App will be able to send a "web_app_data"
    /// service message. Available in private chats only.
    ///
    /// Note: web_app option will only work in Telegram versions released after
    /// 16 April, 2022. Older clients will display unsupported message.
    @JsonKey(name: 'web_app') WebAppInfo? webApp,

    /// Optional. If specified, pressing the button will open a list of suitable
    /// users. Tapping on any user will send their identifier to the bot in a
    /// "user_shared" service message. Available in private chats only.
    ///
    /// Since: Bot API 6.5
    @JsonKey(name: 'request_user') KeyboardButtonRequestUsers? requestUsers,

    /// Optional. If specified, pressing the button will open a list of suitable
    /// chats. Tapping on a chat will send its identifier to the bot in a
    /// "chat_shared" service message. Available in private chats only.
    ///
    /// Since: Bot API 6.5
    @JsonKey(name: 'request_chat') KeyboardButtonRequestChat? requestChat,
  }) = _KeyboardButton;

  /// Creates a [KeyboardButton] from a JSON map
  factory KeyboardButton.fromJson(Map<String, dynamic> json) =>
      _$KeyboardButtonFromJson(json);
}
