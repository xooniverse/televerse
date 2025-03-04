// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reply_markup.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$ForceReplyImpl extends ForceReply {
  const _$ForceReplyImpl(
      {@JsonKey(name: 'force_reply') this.forceReply = true,
      @JsonKey(name: 'input_field_placeholder') this.inputFieldPlaceholder,
      @JsonKey(name: 'selective') this.selective,
      final String? $type})
      : $type = $type ?? 'forceReply',
        super._();

  factory _$ForceReplyImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForceReplyImplFromJson(json);

  /// Shows reply interface to the user, as if they manually selected the
  /// bot's message and tapped 'Reply'
  @override
  @JsonKey(name: 'force_reply')
  final bool forceReply;

  /// Optional. The placeholder to be shown in the input field when the reply
  /// is active; 1-64 characters
  @override
  @JsonKey(name: 'input_field_placeholder')
  final String? inputFieldPlaceholder;

  /// Optional. Use this parameter if you want to force reply from specific
  /// users only. Targets: 1) users that are @mentioned in the text of the
  /// Message object; 2) if the bot's message is a reply (has
  /// reply_to_message_id), sender of the original message.
  @override
  @JsonKey(name: 'selective')
  final bool? selective;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ReplyMarkup.forceReply(forceReply: $forceReply, inputFieldPlaceholder: $inputFieldPlaceholder, selective: $selective)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ForceReplyImplToJson(
      this,
    );
  }
}

abstract class ForceReply extends ReplyMarkup {
  const factory ForceReply(
      {@JsonKey(name: 'force_reply') final bool forceReply,
      @JsonKey(name: 'input_field_placeholder')
      final String? inputFieldPlaceholder,
      @JsonKey(name: 'selective') final bool? selective}) = _$ForceReplyImpl;
  const ForceReply._() : super._();

  factory ForceReply.fromJson(Map<String, dynamic> json) =
      _$ForceReplyImpl.fromJson;

  /// Shows reply interface to the user, as if they manually selected the
  /// bot's message and tapped 'Reply'
  @JsonKey(name: 'force_reply')
  bool get forceReply;

  /// Optional. The placeholder to be shown in the input field when the reply
  /// is active; 1-64 characters
  @JsonKey(name: 'input_field_placeholder')
  String? get inputFieldPlaceholder;

  /// Optional. Use this parameter if you want to force reply from specific
  /// users only. Targets: 1) users that are @mentioned in the text of the
  /// Message object; 2) if the bot's message is a reply (has
  /// reply_to_message_id), sender of the original message.
  @JsonKey(name: 'selective')
  bool? get selective;
}

/// @nodoc
@JsonSerializable()
class _$InlineKeyboardMarkupImpl extends InlineKeyboardMarkup {
  const _$InlineKeyboardMarkupImpl(
      {@JsonKey(name: 'inline_keyboard')
      final List<List<InlineKeyboardButton>> inlineKeyboard = const [
        <InlineKeyboardButton>[]
      ],
      final String? $type})
      : _inlineKeyboard = inlineKeyboard,
        $type = $type ?? 'inlineKeyboard',
        super._();

  factory _$InlineKeyboardMarkupImpl.fromJson(Map<String, dynamic> json) =>
      _$$InlineKeyboardMarkupImplFromJson(json);

  /// Array of button rows, each represented by an Array of
  /// InlineKeyboardButton objects
  final List<List<InlineKeyboardButton>> _inlineKeyboard;

  /// Array of button rows, each represented by an Array of
  /// InlineKeyboardButton objects
  @override
  @JsonKey(name: 'inline_keyboard')
  List<List<InlineKeyboardButton>> get inlineKeyboard {
    if (_inlineKeyboard is EqualUnmodifiableListView) return _inlineKeyboard;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_inlineKeyboard);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ReplyMarkup.inlineKeyboard(inlineKeyboard: $inlineKeyboard)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InlineKeyboardMarkupImplToJson(
      this,
    );
  }
}

abstract class InlineKeyboardMarkup extends ReplyMarkup {
  const factory InlineKeyboardMarkup(
          {@JsonKey(name: 'inline_keyboard')
          final List<List<InlineKeyboardButton>> inlineKeyboard}) =
      _$InlineKeyboardMarkupImpl;
  const InlineKeyboardMarkup._() : super._();

  factory InlineKeyboardMarkup.fromJson(Map<String, dynamic> json) =
      _$InlineKeyboardMarkupImpl.fromJson;

  /// Array of button rows, each represented by an Array of
  /// InlineKeyboardButton objects
  @JsonKey(name: 'inline_keyboard')
  List<List<InlineKeyboardButton>> get inlineKeyboard;
}

/// @nodoc
@JsonSerializable()
class _$ReplyKeyboardMarkupImpl extends ReplyKeyboardMarkup {
  const _$ReplyKeyboardMarkupImpl(
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

  factory _$ReplyKeyboardMarkupImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReplyKeyboardMarkupImplFromJson(json);

  /// Array of button rows, each represented by an Array of [KeyboardButton]
  /// objects
  final List<List<KeyboardButton>> _keyboard;

  /// Array of button rows, each represented by an Array of [KeyboardButton]
  /// objects
  @override
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
  @override
  @JsonKey(name: 'resize_keyboard')
  final bool? resizeKeyboard;

  /// Optional. Requests clients to hide the keyboard as soon as it's been
  /// used. The keyboard will still be available, but clients will
  /// automatically display the usual letter-keyboard in the chat – the user
  /// can press a special button in the input field to see the custom keyboard
  /// again. Defaults to false.
  @override
  @JsonKey(name: 'one_time_keyboard')
  final bool? oneTimeKeyboard;

  /// Optional. The placeholder to be shown in the input field when the
  /// keyboard is active; 1-64 characters
  @override
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
  @override
  @JsonKey(name: 'selective')
  final bool? selective;

  /// Optional. Requests clients to always show the keyboard when the regular
  /// keyboard is hidden. Defaults to false, in which case the custom keyboard
  /// can be hidden and opened with a keyboard icon.
  @override
  @JsonKey(name: 'is_persistent')
  final bool? isPersistent;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ReplyMarkup.keyboard(keyboard: $keyboard, resizeKeyboard: $resizeKeyboard, oneTimeKeyboard: $oneTimeKeyboard, inputFieldPlaceholder: $inputFieldPlaceholder, selective: $selective, isPersistent: $isPersistent)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ReplyKeyboardMarkupImplToJson(
      this,
    );
  }
}

abstract class ReplyKeyboardMarkup extends ReplyMarkup {
  const factory ReplyKeyboardMarkup(
          {@JsonKey(name: 'keyboard')
          required final List<List<KeyboardButton>> keyboard,
          @JsonKey(name: 'resize_keyboard') final bool? resizeKeyboard,
          @JsonKey(name: 'one_time_keyboard') final bool? oneTimeKeyboard,
          @JsonKey(name: 'input_field_placeholder')
          final String? inputFieldPlaceholder,
          @JsonKey(name: 'selective') final bool? selective,
          @JsonKey(name: 'is_persistent') final bool? isPersistent}) =
      _$ReplyKeyboardMarkupImpl;
  const ReplyKeyboardMarkup._() : super._();

  factory ReplyKeyboardMarkup.fromJson(Map<String, dynamic> json) =
      _$ReplyKeyboardMarkupImpl.fromJson;

  /// Array of button rows, each represented by an Array of [KeyboardButton]
  /// objects
  @JsonKey(name: 'keyboard')
  List<List<KeyboardButton>> get keyboard;

  /// Optional. Requests clients to resize the keyboard vertically for optimal
  /// fit (e.g., make the keyboard smaller if there are just two rows of
  /// buttons). Defaults to false, in which case the custom keyboard is always
  /// of the same height as the app's standard keyboard.
  @JsonKey(name: 'resize_keyboard')
  bool? get resizeKeyboard;

  /// Optional. Requests clients to hide the keyboard as soon as it's been
  /// used. The keyboard will still be available, but clients will
  /// automatically display the usual letter-keyboard in the chat – the user
  /// can press a special button in the input field to see the custom keyboard
  /// again. Defaults to false.
  @JsonKey(name: 'one_time_keyboard')
  bool? get oneTimeKeyboard;

  /// Optional. The placeholder to be shown in the input field when the
  /// keyboard is active; 1-64 characters
  @JsonKey(name: 'input_field_placeholder')
  String? get inputFieldPlaceholder;

  /// Optional. Use this parameter if you want to show the keyboard to
  /// specific users only. Targets:
  ///   1) users that are @mentioned in the text of the [Message] object;
  ///   2) if the bot's message is a reply (has [Message.replyToMessage]),
  ///      sender of the original message. Example: A user requests to change
  ///      the bot's language, bot replies to the request with a keyboard to
  ///      select the new language. Other users in the group don't see the
  ///      keyboard.
  @JsonKey(name: 'selective')
  bool? get selective;

  /// Optional. Requests clients to always show the keyboard when the regular
  /// keyboard is hidden. Defaults to false, in which case the custom keyboard
  /// can be hidden and opened with a keyboard icon.
  @JsonKey(name: 'is_persistent')
  bool? get isPersistent;
}

/// @nodoc
@JsonSerializable()
class _$ReplyKeyboardRemoveImpl extends ReplyKeyboardRemove {
  const _$ReplyKeyboardRemoveImpl(
      {@JsonKey(name: 'remove_keyboard') this.removeKeyboard = true,
      @JsonKey(name: 'selective') this.selective,
      final String? $type})
      : $type = $type ?? 'keyboardRemove',
        super._();

  factory _$ReplyKeyboardRemoveImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReplyKeyboardRemoveImplFromJson(json);

  /// Requests clients to remove the custom keyboard (user will not be able to
  /// summon this keyboard; if you want to hide the keyboard from sight but
  /// keep it accessible, use one_time_keyboard in ReplyKeyboardMarkup)
  @override
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
  @override
  @JsonKey(name: 'selective')
  final bool? selective;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ReplyMarkup.keyboardRemove(removeKeyboard: $removeKeyboard, selective: $selective)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ReplyKeyboardRemoveImplToJson(
      this,
    );
  }
}

abstract class ReplyKeyboardRemove extends ReplyMarkup {
  const factory ReplyKeyboardRemove(
          {@JsonKey(name: 'remove_keyboard') final bool removeKeyboard,
          @JsonKey(name: 'selective') final bool? selective}) =
      _$ReplyKeyboardRemoveImpl;
  const ReplyKeyboardRemove._() : super._();

  factory ReplyKeyboardRemove.fromJson(Map<String, dynamic> json) =
      _$ReplyKeyboardRemoveImpl.fromJson;

  /// Requests clients to remove the custom keyboard (user will not be able to
  /// summon this keyboard; if you want to hide the keyboard from sight but
  /// keep it accessible, use one_time_keyboard in ReplyKeyboardMarkup)
  @JsonKey(name: 'remove_keyboard')
  bool get removeKeyboard;

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
  bool? get selective;
}
