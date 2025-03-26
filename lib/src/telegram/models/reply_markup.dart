// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/inline_keyboard_button.dart';
import 'package:televerse/src/telegram/models/keyboard_button.dart';
import 'message.dart';

part 'reply_markup.freezed.dart';
part 'reply_markup.g.dart';

/// Represents a [ReplyMarkup] that can be used to send a message with custom
/// keyboard, instructions to hide keyboard or to force a reply from the user.
@Freezed(
  fromJson: true,
  toJson: true,
  copyWith: false,
)
sealed class ReplyMarkup with _$ReplyMarkup {
  const ReplyMarkup._();

  /// Upon receiving a message with this object, Telegram clients will display a
  /// reply interface to the user (act as if the user has selected the bot's
  /// message and tapped 'Reply'). This can be extremely useful if you want to
  /// create user-friendly step-by-step interfaces without having to sacrifice
  /// privacy mode.
  const factory ReplyMarkup.forceReply({
    /// Shows reply interface to the user, as if they manually selected the
    /// bot's message and tapped 'Reply'
    @JsonKey(name: 'force_reply') @Default(true) bool forceReply,

    /// Optional. The placeholder to be shown in the input field when the reply
    /// is active; 1-64 characters
    @JsonKey(name: 'input_field_placeholder') String? inputFieldPlaceholder,

    /// Optional. Use this parameter if you want to force reply from specific
    /// users only. Targets: 1) users that are @mentioned in the text of the
    /// Message object; 2) if the bot's message is a reply (has
    /// reply_to_message_id), sender of the original message.
    @JsonKey(name: 'selective') bool? selective,
  }) = ForceReply;

  /// This object represents an inline keyboard that appears right next to the
  /// message it belongs to.
  const factory ReplyMarkup.inlineKeyboard({
    /// Array of button rows, each represented by an Array of
    /// InlineKeyboardButton objects
    @JsonKey(name: 'inline_keyboard')
    @Default([<InlineKeyboardButton>[]])
    List<List<InlineKeyboardButton>> inlineKeyboard,
  }) = InlineKeyboardMarkup;

  /// This object represents a custom keyboard with reply options (see
  /// Introduction to bots for details and examples).
  const factory ReplyMarkup.keyboard({
    /// Array of button rows, each represented by an Array of [KeyboardButton]
    /// objects
    @JsonKey(name: 'keyboard') required List<List<KeyboardButton>> keyboard,

    /// Optional. Requests clients to resize the keyboard vertically for optimal
    /// fit (e.g., make the keyboard smaller if there are just two rows of
    /// buttons). Defaults to false, in which case the custom keyboard is always
    /// of the same height as the app's standard keyboard.
    @JsonKey(name: 'resize_keyboard') bool? resizeKeyboard,

    /// Optional. Requests clients to hide the keyboard as soon as it's been
    /// used. The keyboard will still be available, but clients will
    /// automatically display the usual letter-keyboard in the chat – the user
    /// can press a special button in the input field to see the custom keyboard
    /// again. Defaults to false.
    @JsonKey(name: 'one_time_keyboard') bool? oneTimeKeyboard,

    /// Optional. The placeholder to be shown in the input field when the
    /// keyboard is active; 1-64 characters
    @JsonKey(name: 'input_field_placeholder') String? inputFieldPlaceholder,

    /// Optional. Use this parameter if you want to show the keyboard to
    /// specific users only. Targets:
    ///   1) users that are @mentioned in the text of the [Message] object;
    ///   2) if the bot's message is a reply (has [Message.replyToMessage]),
    ///      sender of the original message. Example: A user requests to change
    ///      the bot's language, bot replies to the request with a keyboard to
    ///      select the new language. Other users in the group don't see the
    ///      keyboard.
    @JsonKey(name: 'selective') bool? selective,

    /// Optional. Requests clients to always show the keyboard when the regular
    /// keyboard is hidden. Defaults to false, in which case the custom keyboard
    /// can be hidden and opened with a keyboard icon.
    @JsonKey(name: 'is_persistent') bool? isPersistent,
  }) = ReplyKeyboardMarkup;

  /// Upon receiving a message with this object, Telegram clients will remove
  /// the current custom keyboard and display the default letter-keyboard.
  ///
  /// By default, custom keyboards are displayed until a new keyboard is sent by
  /// a bot. An exception is made for one-time keyboards that are hidden
  /// immediately after the user presses a button (see ReplyKeyboardMarkup).
  const factory ReplyMarkup.keyboardRemove({
    /// Requests clients to remove the custom keyboard (user will not be able to
    /// summon this keyboard; if you want to hide the keyboard from sight but
    /// keep it accessible, use one_time_keyboard in ReplyKeyboardMarkup)
    @JsonKey(name: 'remove_keyboard') @Default(true) bool removeKeyboard,

    /// Optional. Use this parameter if you want to remove the keyboard for
    /// specific users only. Targets:
    ///   1) users that are @mentioned in the text of the Message object;
    ///   2) if the bot's message is a reply (has reply_to_message_id), sender
    ///      of the original message.
    ///
    /// Example: A user votes in a poll, bot returns confirmation message in
    /// reply to the vote and removes the keyboard for that user, while still
    /// showing the keyboard with poll options to users who haven't voted yet.
    @JsonKey(name: 'selective') bool? selective,
  }) = ReplyKeyboardRemove;

  /// Easy way to create an inline keyboard with buttons that can be pressed inline.
  /// This is a shortcut for [InlineKeyboardMarkup]
  static InlineKeyboardMarkup inline() =>
      const InlineKeyboardMarkup(inlineKeyboard: [[]]);

  /// Create the Reply Markup from JSON
  factory ReplyMarkup.fromJson(Map<String, dynamic> json) =>
      _$ReplyMarkupFromJson(json);
}
