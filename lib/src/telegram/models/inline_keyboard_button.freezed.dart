// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inline_keyboard_button.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InlineKeyboardButton _$InlineKeyboardButtonFromJson(Map<String, dynamic> json) {
  return _InlineKeyboardButton.fromJson(json);
}

/// @nodoc
mixin _$InlineKeyboardButton {
  /// Label text on the button
  String get text => throw _privateConstructorUsedError;

  /// Optional. HTTP or tg:// url to be opened when button is pressed
  String? get url => throw _privateConstructorUsedError;

  /// Optional. An HTTP URL used to automatically authorize the user. Can be
  /// used as a replacement for the Telegram Login Widget.
  @JsonKey(name: 'login_url')
  LoginURL? get loginUrl => throw _privateConstructorUsedError;

  /// Optional. Data to be sent in a callback query to the bot when button is
  /// pressed, 1-64 bytes
  @JsonKey(name: 'callback_data')
  String? get callbackData => throw _privateConstructorUsedError;

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
  @JsonKey(name: 'switch_inline_query')
  String? get switchInlineQuery => throw _privateConstructorUsedError;

  /// Optional. If set, pressing the button will insert the bot's username and
  /// the specified inline query in the current chat's input field. Can be
  /// empty, in which case only the bot's username will be inserted.
  ///
  /// This offers a quick way for the user to open your bot in inline mode in
  /// the same chat – good for selecting something from multiple options.
  @JsonKey(name: 'switch_inline_query_current_chat')
  String? get switchInlineQueryCurrentChat =>
      throw _privateConstructorUsedError;

  /// Optional. Description of the game that will be launched when the user
  /// presses the button.
  ///
  /// NOTE: This type of button must always be the first button in the first
  /// row.
  @JsonKey(name: 'callback_game')
  CallbackGame? get callbackGame => throw _privateConstructorUsedError;

  /// Optional. Specify True, to send a Pay button.
  ///
  /// NOTE: This type of button must always be the first button in the first
  /// row.
  bool? get pay => throw _privateConstructorUsedError;

  /// Optional. Description of the Web App that will be launched when the user
  /// presses the button. The Web App will be able to send an arbitrary
  /// message on behalf of the user using the method answerWebAppQuery.
  /// Available only in private chats between a user and the bot.
  @JsonKey(name: 'web_app')
  WebAppInfo? get webApp => throw _privateConstructorUsedError;

  /// Optional. If set, pressing the button will prompt the user to select one
  /// of their chats of the specified type, open that chat and insert the
  /// bot's username and the specified inline query in the input field
  ///
  /// Since Bot API 6.7
  @JsonKey(name: 'switch_inline_query_chosen_chat')
  SwitchInlineQueryChosenChat? get switchInlineQueryChosenChat =>
      throw _privateConstructorUsedError;

  /// Optional. Description of the button that copies the specified text to
  /// the clipboard.
  ///
  /// Since Bot API 7.11
  @JsonKey(name: 'copy_text')
  CopyTextButton? get copyText => throw _privateConstructorUsedError;

  /// Serializes this InlineKeyboardButton to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InlineKeyboardButton
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InlineKeyboardButtonCopyWith<InlineKeyboardButton> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InlineKeyboardButtonCopyWith<$Res> {
  factory $InlineKeyboardButtonCopyWith(InlineKeyboardButton value,
          $Res Function(InlineKeyboardButton) then) =
      _$InlineKeyboardButtonCopyWithImpl<$Res, InlineKeyboardButton>;
  @useResult
  $Res call(
      {String text,
      String? url,
      @JsonKey(name: 'login_url') LoginURL? loginUrl,
      @JsonKey(name: 'callback_data') String? callbackData,
      @JsonKey(name: 'switch_inline_query') String? switchInlineQuery,
      @JsonKey(name: 'switch_inline_query_current_chat')
      String? switchInlineQueryCurrentChat,
      @JsonKey(name: 'callback_game') CallbackGame? callbackGame,
      bool? pay,
      @JsonKey(name: 'web_app') WebAppInfo? webApp,
      @JsonKey(name: 'switch_inline_query_chosen_chat')
      SwitchInlineQueryChosenChat? switchInlineQueryChosenChat,
      @JsonKey(name: 'copy_text') CopyTextButton? copyText});

  $LoginURLCopyWith<$Res>? get loginUrl;
  $CallbackGameCopyWith<$Res>? get callbackGame;
  $WebAppInfoCopyWith<$Res>? get webApp;
  $SwitchInlineQueryChosenChatCopyWith<$Res>? get switchInlineQueryChosenChat;
  $CopyTextButtonCopyWith<$Res>? get copyText;
}

/// @nodoc
class _$InlineKeyboardButtonCopyWithImpl<$Res,
        $Val extends InlineKeyboardButton>
    implements $InlineKeyboardButtonCopyWith<$Res> {
  _$InlineKeyboardButtonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InlineKeyboardButton
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? url = freezed,
    Object? loginUrl = freezed,
    Object? callbackData = freezed,
    Object? switchInlineQuery = freezed,
    Object? switchInlineQueryCurrentChat = freezed,
    Object? callbackGame = freezed,
    Object? pay = freezed,
    Object? webApp = freezed,
    Object? switchInlineQueryChosenChat = freezed,
    Object? copyText = freezed,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      loginUrl: freezed == loginUrl
          ? _value.loginUrl
          : loginUrl // ignore: cast_nullable_to_non_nullable
              as LoginURL?,
      callbackData: freezed == callbackData
          ? _value.callbackData
          : callbackData // ignore: cast_nullable_to_non_nullable
              as String?,
      switchInlineQuery: freezed == switchInlineQuery
          ? _value.switchInlineQuery
          : switchInlineQuery // ignore: cast_nullable_to_non_nullable
              as String?,
      switchInlineQueryCurrentChat: freezed == switchInlineQueryCurrentChat
          ? _value.switchInlineQueryCurrentChat
          : switchInlineQueryCurrentChat // ignore: cast_nullable_to_non_nullable
              as String?,
      callbackGame: freezed == callbackGame
          ? _value.callbackGame
          : callbackGame // ignore: cast_nullable_to_non_nullable
              as CallbackGame?,
      pay: freezed == pay
          ? _value.pay
          : pay // ignore: cast_nullable_to_non_nullable
              as bool?,
      webApp: freezed == webApp
          ? _value.webApp
          : webApp // ignore: cast_nullable_to_non_nullable
              as WebAppInfo?,
      switchInlineQueryChosenChat: freezed == switchInlineQueryChosenChat
          ? _value.switchInlineQueryChosenChat
          : switchInlineQueryChosenChat // ignore: cast_nullable_to_non_nullable
              as SwitchInlineQueryChosenChat?,
      copyText: freezed == copyText
          ? _value.copyText
          : copyText // ignore: cast_nullable_to_non_nullable
              as CopyTextButton?,
    ) as $Val);
  }

  /// Create a copy of InlineKeyboardButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LoginURLCopyWith<$Res>? get loginUrl {
    if (_value.loginUrl == null) {
      return null;
    }

    return $LoginURLCopyWith<$Res>(_value.loginUrl!, (value) {
      return _then(_value.copyWith(loginUrl: value) as $Val);
    });
  }

  /// Create a copy of InlineKeyboardButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CallbackGameCopyWith<$Res>? get callbackGame {
    if (_value.callbackGame == null) {
      return null;
    }

    return $CallbackGameCopyWith<$Res>(_value.callbackGame!, (value) {
      return _then(_value.copyWith(callbackGame: value) as $Val);
    });
  }

  /// Create a copy of InlineKeyboardButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WebAppInfoCopyWith<$Res>? get webApp {
    if (_value.webApp == null) {
      return null;
    }

    return $WebAppInfoCopyWith<$Res>(_value.webApp!, (value) {
      return _then(_value.copyWith(webApp: value) as $Val);
    });
  }

  /// Create a copy of InlineKeyboardButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SwitchInlineQueryChosenChatCopyWith<$Res>? get switchInlineQueryChosenChat {
    if (_value.switchInlineQueryChosenChat == null) {
      return null;
    }

    return $SwitchInlineQueryChosenChatCopyWith<$Res>(
        _value.switchInlineQueryChosenChat!, (value) {
      return _then(_value.copyWith(switchInlineQueryChosenChat: value) as $Val);
    });
  }

  /// Create a copy of InlineKeyboardButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CopyTextButtonCopyWith<$Res>? get copyText {
    if (_value.copyText == null) {
      return null;
    }

    return $CopyTextButtonCopyWith<$Res>(_value.copyText!, (value) {
      return _then(_value.copyWith(copyText: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InlineKeyboardButtonImplCopyWith<$Res>
    implements $InlineKeyboardButtonCopyWith<$Res> {
  factory _$$InlineKeyboardButtonImplCopyWith(_$InlineKeyboardButtonImpl value,
          $Res Function(_$InlineKeyboardButtonImpl) then) =
      __$$InlineKeyboardButtonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String text,
      String? url,
      @JsonKey(name: 'login_url') LoginURL? loginUrl,
      @JsonKey(name: 'callback_data') String? callbackData,
      @JsonKey(name: 'switch_inline_query') String? switchInlineQuery,
      @JsonKey(name: 'switch_inline_query_current_chat')
      String? switchInlineQueryCurrentChat,
      @JsonKey(name: 'callback_game') CallbackGame? callbackGame,
      bool? pay,
      @JsonKey(name: 'web_app') WebAppInfo? webApp,
      @JsonKey(name: 'switch_inline_query_chosen_chat')
      SwitchInlineQueryChosenChat? switchInlineQueryChosenChat,
      @JsonKey(name: 'copy_text') CopyTextButton? copyText});

  @override
  $LoginURLCopyWith<$Res>? get loginUrl;
  @override
  $CallbackGameCopyWith<$Res>? get callbackGame;
  @override
  $WebAppInfoCopyWith<$Res>? get webApp;
  @override
  $SwitchInlineQueryChosenChatCopyWith<$Res>? get switchInlineQueryChosenChat;
  @override
  $CopyTextButtonCopyWith<$Res>? get copyText;
}

/// @nodoc
class __$$InlineKeyboardButtonImplCopyWithImpl<$Res>
    extends _$InlineKeyboardButtonCopyWithImpl<$Res, _$InlineKeyboardButtonImpl>
    implements _$$InlineKeyboardButtonImplCopyWith<$Res> {
  __$$InlineKeyboardButtonImplCopyWithImpl(_$InlineKeyboardButtonImpl _value,
      $Res Function(_$InlineKeyboardButtonImpl) _then)
      : super(_value, _then);

  /// Create a copy of InlineKeyboardButton
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? url = freezed,
    Object? loginUrl = freezed,
    Object? callbackData = freezed,
    Object? switchInlineQuery = freezed,
    Object? switchInlineQueryCurrentChat = freezed,
    Object? callbackGame = freezed,
    Object? pay = freezed,
    Object? webApp = freezed,
    Object? switchInlineQueryChosenChat = freezed,
    Object? copyText = freezed,
  }) {
    return _then(_$InlineKeyboardButtonImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      loginUrl: freezed == loginUrl
          ? _value.loginUrl
          : loginUrl // ignore: cast_nullable_to_non_nullable
              as LoginURL?,
      callbackData: freezed == callbackData
          ? _value.callbackData
          : callbackData // ignore: cast_nullable_to_non_nullable
              as String?,
      switchInlineQuery: freezed == switchInlineQuery
          ? _value.switchInlineQuery
          : switchInlineQuery // ignore: cast_nullable_to_non_nullable
              as String?,
      switchInlineQueryCurrentChat: freezed == switchInlineQueryCurrentChat
          ? _value.switchInlineQueryCurrentChat
          : switchInlineQueryCurrentChat // ignore: cast_nullable_to_non_nullable
              as String?,
      callbackGame: freezed == callbackGame
          ? _value.callbackGame
          : callbackGame // ignore: cast_nullable_to_non_nullable
              as CallbackGame?,
      pay: freezed == pay
          ? _value.pay
          : pay // ignore: cast_nullable_to_non_nullable
              as bool?,
      webApp: freezed == webApp
          ? _value.webApp
          : webApp // ignore: cast_nullable_to_non_nullable
              as WebAppInfo?,
      switchInlineQueryChosenChat: freezed == switchInlineQueryChosenChat
          ? _value.switchInlineQueryChosenChat
          : switchInlineQueryChosenChat // ignore: cast_nullable_to_non_nullable
              as SwitchInlineQueryChosenChat?,
      copyText: freezed == copyText
          ? _value.copyText
          : copyText // ignore: cast_nullable_to_non_nullable
              as CopyTextButton?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InlineKeyboardButtonImpl implements _InlineKeyboardButton {
  const _$InlineKeyboardButtonImpl(
      {required this.text,
      this.url,
      @JsonKey(name: 'login_url') this.loginUrl,
      @JsonKey(name: 'callback_data') this.callbackData,
      @JsonKey(name: 'switch_inline_query') this.switchInlineQuery,
      @JsonKey(name: 'switch_inline_query_current_chat')
      this.switchInlineQueryCurrentChat,
      @JsonKey(name: 'callback_game') this.callbackGame,
      this.pay,
      @JsonKey(name: 'web_app') this.webApp,
      @JsonKey(name: 'switch_inline_query_chosen_chat')
      this.switchInlineQueryChosenChat,
      @JsonKey(name: 'copy_text') this.copyText});

  factory _$InlineKeyboardButtonImpl.fromJson(Map<String, dynamic> json) =>
      _$$InlineKeyboardButtonImplFromJson(json);

  /// Label text on the button
  @override
  final String text;

  /// Optional. HTTP or tg:// url to be opened when button is pressed
  @override
  final String? url;

  /// Optional. An HTTP URL used to automatically authorize the user. Can be
  /// used as a replacement for the Telegram Login Widget.
  @override
  @JsonKey(name: 'login_url')
  final LoginURL? loginUrl;

  /// Optional. Data to be sent in a callback query to the bot when button is
  /// pressed, 1-64 bytes
  @override
  @JsonKey(name: 'callback_data')
  final String? callbackData;

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
  @override
  @JsonKey(name: 'switch_inline_query')
  final String? switchInlineQuery;

  /// Optional. If set, pressing the button will insert the bot's username and
  /// the specified inline query in the current chat's input field. Can be
  /// empty, in which case only the bot's username will be inserted.
  ///
  /// This offers a quick way for the user to open your bot in inline mode in
  /// the same chat – good for selecting something from multiple options.
  @override
  @JsonKey(name: 'switch_inline_query_current_chat')
  final String? switchInlineQueryCurrentChat;

  /// Optional. Description of the game that will be launched when the user
  /// presses the button.
  ///
  /// NOTE: This type of button must always be the first button in the first
  /// row.
  @override
  @JsonKey(name: 'callback_game')
  final CallbackGame? callbackGame;

  /// Optional. Specify True, to send a Pay button.
  ///
  /// NOTE: This type of button must always be the first button in the first
  /// row.
  @override
  final bool? pay;

  /// Optional. Description of the Web App that will be launched when the user
  /// presses the button. The Web App will be able to send an arbitrary
  /// message on behalf of the user using the method answerWebAppQuery.
  /// Available only in private chats between a user and the bot.
  @override
  @JsonKey(name: 'web_app')
  final WebAppInfo? webApp;

  /// Optional. If set, pressing the button will prompt the user to select one
  /// of their chats of the specified type, open that chat and insert the
  /// bot's username and the specified inline query in the input field
  ///
  /// Since Bot API 6.7
  @override
  @JsonKey(name: 'switch_inline_query_chosen_chat')
  final SwitchInlineQueryChosenChat? switchInlineQueryChosenChat;

  /// Optional. Description of the button that copies the specified text to
  /// the clipboard.
  ///
  /// Since Bot API 7.11
  @override
  @JsonKey(name: 'copy_text')
  final CopyTextButton? copyText;

  @override
  String toString() {
    return 'InlineKeyboardButton(text: $text, url: $url, loginUrl: $loginUrl, callbackData: $callbackData, switchInlineQuery: $switchInlineQuery, switchInlineQueryCurrentChat: $switchInlineQueryCurrentChat, callbackGame: $callbackGame, pay: $pay, webApp: $webApp, switchInlineQueryChosenChat: $switchInlineQueryChosenChat, copyText: $copyText)';
  }

  /// Create a copy of InlineKeyboardButton
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InlineKeyboardButtonImplCopyWith<_$InlineKeyboardButtonImpl>
      get copyWith =>
          __$$InlineKeyboardButtonImplCopyWithImpl<_$InlineKeyboardButtonImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InlineKeyboardButtonImplToJson(
      this,
    );
  }
}

abstract class _InlineKeyboardButton implements InlineKeyboardButton {
  const factory _InlineKeyboardButton(
          {required final String text,
          final String? url,
          @JsonKey(name: 'login_url') final LoginURL? loginUrl,
          @JsonKey(name: 'callback_data') final String? callbackData,
          @JsonKey(name: 'switch_inline_query') final String? switchInlineQuery,
          @JsonKey(name: 'switch_inline_query_current_chat')
          final String? switchInlineQueryCurrentChat,
          @JsonKey(name: 'callback_game') final CallbackGame? callbackGame,
          final bool? pay,
          @JsonKey(name: 'web_app') final WebAppInfo? webApp,
          @JsonKey(name: 'switch_inline_query_chosen_chat')
          final SwitchInlineQueryChosenChat? switchInlineQueryChosenChat,
          @JsonKey(name: 'copy_text') final CopyTextButton? copyText}) =
      _$InlineKeyboardButtonImpl;

  factory _InlineKeyboardButton.fromJson(Map<String, dynamic> json) =
      _$InlineKeyboardButtonImpl.fromJson;

  /// Label text on the button
  @override
  String get text;

  /// Optional. HTTP or tg:// url to be opened when button is pressed
  @override
  String? get url;

  /// Optional. An HTTP URL used to automatically authorize the user. Can be
  /// used as a replacement for the Telegram Login Widget.
  @override
  @JsonKey(name: 'login_url')
  LoginURL? get loginUrl;

  /// Optional. Data to be sent in a callback query to the bot when button is
  /// pressed, 1-64 bytes
  @override
  @JsonKey(name: 'callback_data')
  String? get callbackData;

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
  @override
  @JsonKey(name: 'switch_inline_query')
  String? get switchInlineQuery;

  /// Optional. If set, pressing the button will insert the bot's username and
  /// the specified inline query in the current chat's input field. Can be
  /// empty, in which case only the bot's username will be inserted.
  ///
  /// This offers a quick way for the user to open your bot in inline mode in
  /// the same chat – good for selecting something from multiple options.
  @override
  @JsonKey(name: 'switch_inline_query_current_chat')
  String? get switchInlineQueryCurrentChat;

  /// Optional. Description of the game that will be launched when the user
  /// presses the button.
  ///
  /// NOTE: This type of button must always be the first button in the first
  /// row.
  @override
  @JsonKey(name: 'callback_game')
  CallbackGame? get callbackGame;

  /// Optional. Specify True, to send a Pay button.
  ///
  /// NOTE: This type of button must always be the first button in the first
  /// row.
  @override
  bool? get pay;

  /// Optional. Description of the Web App that will be launched when the user
  /// presses the button. The Web App will be able to send an arbitrary
  /// message on behalf of the user using the method answerWebAppQuery.
  /// Available only in private chats between a user and the bot.
  @override
  @JsonKey(name: 'web_app')
  WebAppInfo? get webApp;

  /// Optional. If set, pressing the button will prompt the user to select one
  /// of their chats of the specified type, open that chat and insert the
  /// bot's username and the specified inline query in the input field
  ///
  /// Since Bot API 6.7
  @override
  @JsonKey(name: 'switch_inline_query_chosen_chat')
  SwitchInlineQueryChosenChat? get switchInlineQueryChosenChat;

  /// Optional. Description of the button that copies the specified text to
  /// the clipboard.
  ///
  /// Since Bot API 7.11
  @override
  @JsonKey(name: 'copy_text')
  CopyTextButton? get copyText;

  /// Create a copy of InlineKeyboardButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InlineKeyboardButtonImplCopyWith<_$InlineKeyboardButtonImpl>
      get copyWith => throw _privateConstructorUsedError;
}
