// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reply_markup.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ReplyMarkup _$ReplyMarkupFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'forceReply':
      return ForceReply.fromJson(json);
    case 'inlineKeyboard':
      return InlineKeyboardMarkup.fromJson(json);
    case 'keyboard':
      return ReplyKeyboardMarkup.fromJson(json);
    case 'keyboardRemove':
      return ReplyKeyboardRemove.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ReplyMarkup',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ReplyMarkup {
  /// Serializes this ReplyMarkup to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'ReplyMarkup()';
  }
}

/// @nodoc
@JsonSerializable()
class ForceReply extends ReplyMarkup {
  const ForceReply(
      {@JsonKey(name: 'force_reply') this.forceReply = true,
      @JsonKey(name: 'input_field_placeholder') this.inputFieldPlaceholder,
      @JsonKey(name: 'selective') this.selective,
      final String? $type})
      : $type = $type ?? 'forceReply',
        super._();
  factory ForceReply.fromJson(Map<String, dynamic> json) =>
      _$ForceReplyFromJson(json);

  /// Shows reply interface to the user, as if they manually selected the
  /// bot's message and tapped 'Reply'
  @JsonKey(name: 'force_reply')
  final bool forceReply;

  /// Optional. The placeholder to be shown in the input field when the reply
  /// is active; 1-64 characters
  @JsonKey(name: 'input_field_placeholder')
  final String? inputFieldPlaceholder;

  /// Optional. Use this parameter if you want to force reply from specific
  /// users only. Targets: 1) users that are @mentioned in the text of the
  /// Message object; 2) if the bot's message is a reply (has
  /// reply_to_message_id), sender of the original message.
  @JsonKey(name: 'selective')
  final bool? selective;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$ForceReplyToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'ReplyMarkup.forceReply(forceReply: $forceReply, inputFieldPlaceholder: $inputFieldPlaceholder, selective: $selective)';
  }
}

/// @nodoc
@JsonSerializable()
class InlineKeyboardMarkup extends ReplyMarkup {
  const InlineKeyboardMarkup(
      {@JsonKey(name: 'inline_keyboard')
      final List<List<InlineKeyboardButton>> inlineKeyboard = const [
        <InlineKeyboardButton>[]
      ],
      final String? $type})
      : _inlineKeyboard = inlineKeyboard,
        $type = $type ?? 'inlineKeyboard',
        super._();
  factory InlineKeyboardMarkup.fromJson(Map<String, dynamic> json) =>
      _$InlineKeyboardMarkupFromJson(json);

  /// Array of button rows, each represented by an Array of
  /// InlineKeyboardButton objects
  final List<List<InlineKeyboardButton>> _inlineKeyboard;

  /// Array of button rows, each represented by an Array of
  /// InlineKeyboardButton objects
  @JsonKey(name: 'inline_keyboard')
  List<List<InlineKeyboardButton>> get inlineKeyboard {
    if (_inlineKeyboard is EqualUnmodifiableListView) return _inlineKeyboard;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_inlineKeyboard);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$InlineKeyboardMarkupToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'ReplyMarkup.inlineKeyboard(inlineKeyboard: $inlineKeyboard)';
  }
}

/// @nodoc
@JsonSerializable()
class ReplyKeyboardMarkup extends ReplyMarkup {
  const ReplyKeyboardMarkup(
      {@JsonKey(name: 'keyboard')
      required final List<List<KeyboardButton>> keyboard,
      @JsonKey(name: 'resize_keyboard') this.resizeKeyboard,
      @JsonKey(name: 'one_time_keyboard') this.oneTimeKeyboard,
      @JsonKey(name: 'input_field_placeholder') this.inputFieldPlaceholder,
      @JsonKey(name: 'selective') this.selective,
      @JsonKey(name: 'is_persistent') this.isPersistent,
      final String? $type})
      : _keyboard = keyboard,
        $type = $type ?? 'keyboard',
        super._();
  factory ReplyKeyboardMarkup.fromJson(Map<String, dynamic> json) =>
      _$ReplyKeyboardMarkupFromJson(json);

  /// Array of button rows, each represented by an Array of [KeyboardButton]
  /// objects
  final List<List<KeyboardButton>> _keyboard;

  /// Array of button rows, each represented by an Array of [KeyboardButton]
  /// objects
  @JsonKey(name: 'keyboard')
  List<List<KeyboardButton>> get keyboard {
    if (_keyboard is EqualUnmodifiableListView) return _keyboard;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_keyboard);
  }

  /// Optional. Requests clients to resize the keyboard vertically for optimal
  /// fit (e.g., make the keyboard smaller if there are just two rows of
  /// buttons). Defaults to false, in which case the custom keyboard is always
  /// of the same height as the app's standard keyboard.
  @JsonKey(name: 'resize_keyboard')
  final bool? resizeKeyboard;

  /// Optional. Requests clients to hide the keyboard as soon as it's been
  /// used. The keyboard will still be available, but clients will
  /// automatically display the usual letter-keyboard in the chat – the user
  /// can press a special button in the input field to see the custom keyboard
  /// again. Defaults to false.
  @JsonKey(name: 'one_time_keyboard')
  final bool? oneTimeKeyboard;

  /// Optional. The placeholder to be shown in the input field when the
  /// keyboard is active; 1-64 characters
  @JsonKey(name: 'input_field_placeholder')
  final String? inputFieldPlaceholder;

  /// Optional. Use this parameter if you want to show the keyboard to
  /// specific users only. Targets:
  ///   1) users that are @mentioned in the text of the [Message] object;
  ///   2) if the bot's message is a reply (has [Message.replyToMessage]),
  ///      sender of the original message. Example: A user requests to change
  ///      the bot's language, bot replies to the request with a keyboard to
  ///      select the new language. Other users in the group don't see the
  ///      keyboard.
  @JsonKey(name: 'selective')
  final bool? selective;

  /// Optional. Requests clients to always show the keyboard when the regular
  /// keyboard is hidden. Defaults to false, in which case the custom keyboard
  /// can be hidden and opened with a keyboard icon.
  @JsonKey(name: 'is_persistent')
  final bool? isPersistent;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$ReplyKeyboardMarkupToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'ReplyMarkup.keyboard(keyboard: $keyboard, resizeKeyboard: $resizeKeyboard, oneTimeKeyboard: $oneTimeKeyboard, inputFieldPlaceholder: $inputFieldPlaceholder, selective: $selective, isPersistent: $isPersistent)';
  }
}

/// @nodoc
@JsonSerializable()
class ReplyKeyboardRemove extends ReplyMarkup {
  const ReplyKeyboardRemove(
      {@JsonKey(name: 'remove_keyboard') this.removeKeyboard = true,
      @JsonKey(name: 'selective') this.selective,
      final String? $type})
      : $type = $type ?? 'keyboardRemove',
        super._();
  factory ReplyKeyboardRemove.fromJson(Map<String, dynamic> json) =>
      _$ReplyKeyboardRemoveFromJson(json);

  /// Requests clients to remove the custom keyboard (user will not be able to
  /// summon this keyboard; if you want to hide the keyboard from sight but
  /// keep it accessible, use one_time_keyboard in ReplyKeyboardMarkup)
  @JsonKey(name: 'remove_keyboard')
  final bool removeKeyboard;

  /// Optional. Use this parameter if you want to remove the keyboard for
  /// specific users only. Targets:
  ///   1) users that are @mentioned in the text of the Message object;
  ///   2) if the bot's message is a reply (has reply_to_message_id), sender
  ///      of the original message.
  ///
  /// Example: A user votes in a poll, bot returns confirmation message in
  /// reply to the vote and removes the keyboard for that user, while still
  /// showing the keyboard with poll options to users who haven't voted yet.
  @JsonKey(name: 'selective')
  final bool? selective;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$ReplyKeyboardRemoveToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'ReplyMarkup.keyboardRemove(removeKeyboard: $removeKeyboard, selective: $selective)';
  }
}
