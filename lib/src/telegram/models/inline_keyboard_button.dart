import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/callback_game.dart';
import 'package:televerse/src/telegram/models/copy_text_button.dart';
import 'package:televerse/src/telegram/models/login_url.dart';
import 'package:televerse/src/telegram/models/switch_inline_query_chosen_chat.dart';
import 'package:televerse/src/telegram/models/web_app_info.dart';

part 'inline_keyboard_button.freezed.dart';
part 'inline_keyboard_button.g.dart';

/// This object represents one button of an inline keyboard. You must use
/// exactly one of the optional fields.
@freezed
class InlineKeyboardButton with _$InlineKeyboardButton {
  /// This object represents one button of an inline keyboard.
  ///
  /// The inline keyboard consists of a row of buttons, each represented by an
  /// [InlineKeyboardButton] object. You can use the various fields to specify
  /// the behavior of the button.
  const factory InlineKeyboardButton({
    /// Label text on the button
    @JsonKey(name: 'text') required String text,

    /// Optional. HTTP or tg:// url to be opened when button is pressed
    @JsonKey(name: 'url') String? url,

    /// Optional. An HTTP URL used to automatically authorize the user. Can be
    /// used as a replacement for the Telegram Login Widget.
    @JsonKey(name: 'login_url') LoginURL? loginUrl,

    /// Optional. Data to be sent in a callback query to the bot when button is
    /// pressed, 1-64 bytes
    @JsonKey(name: 'callback_data') String? callbackData,

    /// Optional. If set, pressing the button will prompt the user to select one
    /// of their chats, open that chat and insert the bot's username and the
    /// specified inline query in the input field. Can be empty, in which case
    /// just the bot's username will be inserted.
    ///
    /// Note: This offers an easy way for users to start using your bot in
    /// inline mode when they are currently in a private chat with it.
    /// Especially useful when combined with switch_pm… actions – in this case
    /// the user will be automatically returned to the chat they switched from,
    /// skipping the chat selection screen.
    @JsonKey(name: 'switch_inline_query') String? switchInlineQuery,

    /// Optional. If set, pressing the button will insert the bot's username and
    /// the specified inline query in the current chat's input field. Can be
    /// empty, in which case only the bot's username will be inserted.
    ///
    /// This offers a quick way for the user to open your bot in inline mode in
    /// the same chat – good for selecting something from multiple options.
    @JsonKey(name: 'switch_inline_query_current_chat')
    String? switchInlineQueryCurrentChat,

    /// Optional. Description of the game that will be launched when the user
    /// presses the button.
    ///
    /// NOTE: This type of button must always be the first button in the first
    /// row.
    @JsonKey(name: 'callback_game') CallbackGame? callbackGame,

    /// Optional. Specify True, to send a Pay button.
    ///
    /// NOTE: This type of button must always be the first button in the first
    /// row.
    @JsonKey(name: 'pay') bool? pay,

    /// Optional. Description of the Web App that will be launched when the user
    /// presses the button. The Web App will be able to send an arbitrary
    /// message on behalf of the user using the method answerWebAppQuery.
    /// Available only in private chats between a user and the bot.
    @JsonKey(name: 'web_app') WebAppInfo? webApp,

    /// Optional. If set, pressing the button will prompt the user to select one
    /// of their chats of the specified type, open that chat and insert the
    /// bot's username and the specified inline query in the input field
    ///
    /// Since Bot API 6.7
    @JsonKey(name: 'switch_inline_query_chosen_chat')
    SwitchInlineQueryChosenChat? switchInlineQueryChosenChat,

    /// Optional. Description of the button that copies the specified text to
    /// the clipboard.
    ///
    /// Since Bot API 7.11
    @JsonKey(name: 'copy_text') CopyTextButton? copyText,
  }) = _InlineKeyboardButton;

  /// Creates an [InlineKeyboardButton] from JSON object
  factory InlineKeyboardButton.fromJson(Map<String, dynamic> json) =>
      _$InlineKeyboardButtonFromJson(json);
}
