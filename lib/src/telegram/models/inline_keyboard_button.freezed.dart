// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inline_keyboard_button.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InlineKeyboardButton {
  /// Label text on the button
  @JsonKey(name: 'text')
  String get text;

  /// Optional. HTTP or tg:// url to be opened when button is pressed
  @JsonKey(name: 'url')
  String? get url;

  /// Optional. An HTTP URL used to automatically authorize the user. Can be
  /// used as a replacement for the Telegram Login Widget.
  @JsonKey(name: 'login_url')
  LoginURL? get loginUrl;

  /// Optional. Data to be sent in a callback query to the bot when button is
  /// pressed, 1-64 bytes
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
  @JsonKey(name: 'switch_inline_query')
  String? get switchInlineQuery;

  /// Optional. If set, pressing the button will insert the bot's username and
  /// the specified inline query in the current chat's input field. Can be
  /// empty, in which case only the bot's username will be inserted.
  ///
  /// This offers a quick way for the user to open your bot in inline mode in
  /// the same chat – good for selecting something from multiple options.
  @JsonKey(name: 'switch_inline_query_current_chat')
  String? get switchInlineQueryCurrentChat;

  /// Optional. Description of the game that will be launched when the user
  /// presses the button.
  ///
  /// NOTE: This type of button must always be the first button in the first
  /// row.
  @JsonKey(name: 'callback_game')
  CallbackGame? get callbackGame;

  /// Optional. Specify True, to send a Pay button.
  ///
  /// NOTE: This type of button must always be the first button in the first
  /// row.
  @JsonKey(name: 'pay')
  bool? get pay;

  /// Optional. Description of the Web App that will be launched when the user
  /// presses the button. The Web App will be able to send an arbitrary
  /// message on behalf of the user using the method answerWebAppQuery.
  /// Available only in private chats between a user and the bot.
  @JsonKey(name: 'web_app')
  WebAppInfo? get webApp;

  /// Optional. If set, pressing the button will prompt the user to select one
  /// of their chats of the specified type, open that chat and insert the
  /// bot's username and the specified inline query in the input field
  ///
  /// Since Bot API 6.7
  @JsonKey(name: 'switch_inline_query_chosen_chat')
  SwitchInlineQueryChosenChat? get switchInlineQueryChosenChat;

  /// Optional. Description of the button that copies the specified text to
  /// the clipboard.
  ///
  /// Since Bot API 7.11
  @JsonKey(name: 'copy_text')
  CopyTextButton? get copyText;

  /// Optional. Unique identifier of the custom emoji shown before the text
  /// of the button. Can only be used by bots that purchased additional
  /// usernames on Fragment or in the messages directly sent by the bot to
  /// private, group and supergroup chats if the owner of the bot has a
  /// Telegram Premium subscription.
  ///
  /// Since: Bot API 9.4
  @JsonKey(name: 'icon_custom_emoji_id')
  String? get iconCustomEmojiId;

  /// Optional. Style of the button. Must be one of “danger” (red), “success”
  /// (green) or “primary” (blue). If omitted, then an app-specific style is
  /// used.
  ///
  /// Since: Bot API 9.4
  @JsonKey(name: 'style')
  StyleType? get style;

  /// Create a copy of InlineKeyboardButton
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InlineKeyboardButtonCopyWith<InlineKeyboardButton> get copyWith =>
      _$InlineKeyboardButtonCopyWithImpl<InlineKeyboardButton>(
        this as InlineKeyboardButton,
        _$identity,
      );

  /// Serializes this InlineKeyboardButton to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'InlineKeyboardButton(text: $text, url: $url, loginUrl: $loginUrl, callbackData: $callbackData, switchInlineQuery: $switchInlineQuery, switchInlineQueryCurrentChat: $switchInlineQueryCurrentChat, callbackGame: $callbackGame, pay: $pay, webApp: $webApp, switchInlineQueryChosenChat: $switchInlineQueryChosenChat, copyText: $copyText, iconCustomEmojiId: $iconCustomEmojiId, style: $style)';
  }
}

/// @nodoc
abstract mixin class $InlineKeyboardButtonCopyWith<$Res> {
  factory $InlineKeyboardButtonCopyWith(
    InlineKeyboardButton value,
    $Res Function(InlineKeyboardButton) _then,
  ) = _$InlineKeyboardButtonCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'text') String text,
    @JsonKey(name: 'url') String? url,
    @JsonKey(name: 'login_url') LoginURL? loginUrl,
    @JsonKey(name: 'callback_data') String? callbackData,
    @JsonKey(name: 'switch_inline_query') String? switchInlineQuery,
    @JsonKey(name: 'switch_inline_query_current_chat')
    String? switchInlineQueryCurrentChat,
    @JsonKey(name: 'callback_game') CallbackGame? callbackGame,
    @JsonKey(name: 'pay') bool? pay,
    @JsonKey(name: 'web_app') WebAppInfo? webApp,
    @JsonKey(name: 'switch_inline_query_chosen_chat')
    SwitchInlineQueryChosenChat? switchInlineQueryChosenChat,
    @JsonKey(name: 'copy_text') CopyTextButton? copyText,
    @JsonKey(name: 'icon_custom_emoji_id') String? iconCustomEmojiId,
    @JsonKey(name: 'style') StyleType? style,
  });

  $LoginURLCopyWith<$Res>? get loginUrl;
  $CallbackGameCopyWith<$Res>? get callbackGame;
  $WebAppInfoCopyWith<$Res>? get webApp;
  $SwitchInlineQueryChosenChatCopyWith<$Res>? get switchInlineQueryChosenChat;
  $CopyTextButtonCopyWith<$Res>? get copyText;
}

/// @nodoc
class _$InlineKeyboardButtonCopyWithImpl<$Res>
    implements $InlineKeyboardButtonCopyWith<$Res> {
  _$InlineKeyboardButtonCopyWithImpl(this._self, this._then);

  final InlineKeyboardButton _self;
  final $Res Function(InlineKeyboardButton) _then;

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
    Object? iconCustomEmojiId = freezed,
    Object? style = freezed,
  }) {
    return _then(
      _self.copyWith(
        text: null == text
            ? _self.text
            : text // ignore: cast_nullable_to_non_nullable
                  as String,
        url: freezed == url
            ? _self.url
            : url // ignore: cast_nullable_to_non_nullable
                  as String?,
        loginUrl: freezed == loginUrl
            ? _self.loginUrl
            : loginUrl // ignore: cast_nullable_to_non_nullable
                  as LoginURL?,
        callbackData: freezed == callbackData
            ? _self.callbackData
            : callbackData // ignore: cast_nullable_to_non_nullable
                  as String?,
        switchInlineQuery: freezed == switchInlineQuery
            ? _self.switchInlineQuery
            : switchInlineQuery // ignore: cast_nullable_to_non_nullable
                  as String?,
        switchInlineQueryCurrentChat: freezed == switchInlineQueryCurrentChat
            ? _self.switchInlineQueryCurrentChat
            : switchInlineQueryCurrentChat // ignore: cast_nullable_to_non_nullable
                  as String?,
        callbackGame: freezed == callbackGame
            ? _self.callbackGame
            : callbackGame // ignore: cast_nullable_to_non_nullable
                  as CallbackGame?,
        pay: freezed == pay
            ? _self.pay
            : pay // ignore: cast_nullable_to_non_nullable
                  as bool?,
        webApp: freezed == webApp
            ? _self.webApp
            : webApp // ignore: cast_nullable_to_non_nullable
                  as WebAppInfo?,
        switchInlineQueryChosenChat: freezed == switchInlineQueryChosenChat
            ? _self.switchInlineQueryChosenChat
            : switchInlineQueryChosenChat // ignore: cast_nullable_to_non_nullable
                  as SwitchInlineQueryChosenChat?,
        copyText: freezed == copyText
            ? _self.copyText
            : copyText // ignore: cast_nullable_to_non_nullable
                  as CopyTextButton?,
        iconCustomEmojiId: freezed == iconCustomEmojiId
            ? _self.iconCustomEmojiId
            : iconCustomEmojiId // ignore: cast_nullable_to_non_nullable
                  as String?,
        style: freezed == style
            ? _self.style
            : style // ignore: cast_nullable_to_non_nullable
                  as StyleType?,
      ),
    );
  }

  /// Create a copy of InlineKeyboardButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LoginURLCopyWith<$Res>? get loginUrl {
    if (_self.loginUrl == null) {
      return null;
    }

    return $LoginURLCopyWith<$Res>(_self.loginUrl!, (value) {
      return _then(_self.copyWith(loginUrl: value));
    });
  }

  /// Create a copy of InlineKeyboardButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CallbackGameCopyWith<$Res>? get callbackGame {
    if (_self.callbackGame == null) {
      return null;
    }

    return $CallbackGameCopyWith<$Res>(_self.callbackGame!, (value) {
      return _then(_self.copyWith(callbackGame: value));
    });
  }

  /// Create a copy of InlineKeyboardButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WebAppInfoCopyWith<$Res>? get webApp {
    if (_self.webApp == null) {
      return null;
    }

    return $WebAppInfoCopyWith<$Res>(_self.webApp!, (value) {
      return _then(_self.copyWith(webApp: value));
    });
  }

  /// Create a copy of InlineKeyboardButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SwitchInlineQueryChosenChatCopyWith<$Res>? get switchInlineQueryChosenChat {
    if (_self.switchInlineQueryChosenChat == null) {
      return null;
    }

    return $SwitchInlineQueryChosenChatCopyWith<$Res>(
      _self.switchInlineQueryChosenChat!,
      (value) {
        return _then(_self.copyWith(switchInlineQueryChosenChat: value));
      },
    );
  }

  /// Create a copy of InlineKeyboardButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CopyTextButtonCopyWith<$Res>? get copyText {
    if (_self.copyText == null) {
      return null;
    }

    return $CopyTextButtonCopyWith<$Res>(_self.copyText!, (value) {
      return _then(_self.copyWith(copyText: value));
    });
  }
}

/// Adds pattern-matching-related methods to [InlineKeyboardButton].
extension InlineKeyboardButtonPatterns on InlineKeyboardButton {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_InlineKeyboardButton value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _InlineKeyboardButton() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_InlineKeyboardButton value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InlineKeyboardButton():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_InlineKeyboardButton value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InlineKeyboardButton() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _InlineKeyboardButton implements InlineKeyboardButton {
  const _InlineKeyboardButton({
    @JsonKey(name: 'text') required this.text,
    @JsonKey(name: 'url') this.url,
    @JsonKey(name: 'login_url') this.loginUrl,
    @JsonKey(name: 'callback_data') this.callbackData,
    @JsonKey(name: 'switch_inline_query') this.switchInlineQuery,
    @JsonKey(name: 'switch_inline_query_current_chat')
    this.switchInlineQueryCurrentChat,
    @JsonKey(name: 'callback_game') this.callbackGame,
    @JsonKey(name: 'pay') this.pay,
    @JsonKey(name: 'web_app') this.webApp,
    @JsonKey(name: 'switch_inline_query_chosen_chat')
    this.switchInlineQueryChosenChat,
    @JsonKey(name: 'copy_text') this.copyText,
    @JsonKey(name: 'icon_custom_emoji_id') this.iconCustomEmojiId,
    @JsonKey(name: 'style') this.style,
  });
  factory _InlineKeyboardButton.fromJson(Map<String, dynamic> json) =>
      _$InlineKeyboardButtonFromJson(json);

  /// Label text on the button
  @override
  @JsonKey(name: 'text')
  final String text;

  /// Optional. HTTP or tg:// url to be opened when button is pressed
  @override
  @JsonKey(name: 'url')
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
  @JsonKey(name: 'pay')
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

  /// Optional. Unique identifier of the custom emoji shown before the text
  /// of the button. Can only be used by bots that purchased additional
  /// usernames on Fragment or in the messages directly sent by the bot to
  /// private, group and supergroup chats if the owner of the bot has a
  /// Telegram Premium subscription.
  ///
  /// Since: Bot API 9.4
  @override
  @JsonKey(name: 'icon_custom_emoji_id')
  final String? iconCustomEmojiId;

  /// Optional. Style of the button. Must be one of “danger” (red), “success”
  /// (green) or “primary” (blue). If omitted, then an app-specific style is
  /// used.
  ///
  /// Since: Bot API 9.4
  @override
  @JsonKey(name: 'style')
  final StyleType? style;

  /// Create a copy of InlineKeyboardButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InlineKeyboardButtonCopyWith<_InlineKeyboardButton> get copyWith =>
      __$InlineKeyboardButtonCopyWithImpl<_InlineKeyboardButton>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$InlineKeyboardButtonToJson(this);
  }

  @override
  String toString() {
    return 'InlineKeyboardButton(text: $text, url: $url, loginUrl: $loginUrl, callbackData: $callbackData, switchInlineQuery: $switchInlineQuery, switchInlineQueryCurrentChat: $switchInlineQueryCurrentChat, callbackGame: $callbackGame, pay: $pay, webApp: $webApp, switchInlineQueryChosenChat: $switchInlineQueryChosenChat, copyText: $copyText, iconCustomEmojiId: $iconCustomEmojiId, style: $style)';
  }
}

/// @nodoc
abstract mixin class _$InlineKeyboardButtonCopyWith<$Res>
    implements $InlineKeyboardButtonCopyWith<$Res> {
  factory _$InlineKeyboardButtonCopyWith(
    _InlineKeyboardButton value,
    $Res Function(_InlineKeyboardButton) _then,
  ) = __$InlineKeyboardButtonCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'text') String text,
    @JsonKey(name: 'url') String? url,
    @JsonKey(name: 'login_url') LoginURL? loginUrl,
    @JsonKey(name: 'callback_data') String? callbackData,
    @JsonKey(name: 'switch_inline_query') String? switchInlineQuery,
    @JsonKey(name: 'switch_inline_query_current_chat')
    String? switchInlineQueryCurrentChat,
    @JsonKey(name: 'callback_game') CallbackGame? callbackGame,
    @JsonKey(name: 'pay') bool? pay,
    @JsonKey(name: 'web_app') WebAppInfo? webApp,
    @JsonKey(name: 'switch_inline_query_chosen_chat')
    SwitchInlineQueryChosenChat? switchInlineQueryChosenChat,
    @JsonKey(name: 'copy_text') CopyTextButton? copyText,
    @JsonKey(name: 'icon_custom_emoji_id') String? iconCustomEmojiId,
    @JsonKey(name: 'style') StyleType? style,
  });

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
class __$InlineKeyboardButtonCopyWithImpl<$Res>
    implements _$InlineKeyboardButtonCopyWith<$Res> {
  __$InlineKeyboardButtonCopyWithImpl(this._self, this._then);

  final _InlineKeyboardButton _self;
  final $Res Function(_InlineKeyboardButton) _then;

  /// Create a copy of InlineKeyboardButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    Object? iconCustomEmojiId = freezed,
    Object? style = freezed,
  }) {
    return _then(
      _InlineKeyboardButton(
        text: null == text
            ? _self.text
            : text // ignore: cast_nullable_to_non_nullable
                  as String,
        url: freezed == url
            ? _self.url
            : url // ignore: cast_nullable_to_non_nullable
                  as String?,
        loginUrl: freezed == loginUrl
            ? _self.loginUrl
            : loginUrl // ignore: cast_nullable_to_non_nullable
                  as LoginURL?,
        callbackData: freezed == callbackData
            ? _self.callbackData
            : callbackData // ignore: cast_nullable_to_non_nullable
                  as String?,
        switchInlineQuery: freezed == switchInlineQuery
            ? _self.switchInlineQuery
            : switchInlineQuery // ignore: cast_nullable_to_non_nullable
                  as String?,
        switchInlineQueryCurrentChat: freezed == switchInlineQueryCurrentChat
            ? _self.switchInlineQueryCurrentChat
            : switchInlineQueryCurrentChat // ignore: cast_nullable_to_non_nullable
                  as String?,
        callbackGame: freezed == callbackGame
            ? _self.callbackGame
            : callbackGame // ignore: cast_nullable_to_non_nullable
                  as CallbackGame?,
        pay: freezed == pay
            ? _self.pay
            : pay // ignore: cast_nullable_to_non_nullable
                  as bool?,
        webApp: freezed == webApp
            ? _self.webApp
            : webApp // ignore: cast_nullable_to_non_nullable
                  as WebAppInfo?,
        switchInlineQueryChosenChat: freezed == switchInlineQueryChosenChat
            ? _self.switchInlineQueryChosenChat
            : switchInlineQueryChosenChat // ignore: cast_nullable_to_non_nullable
                  as SwitchInlineQueryChosenChat?,
        copyText: freezed == copyText
            ? _self.copyText
            : copyText // ignore: cast_nullable_to_non_nullable
                  as CopyTextButton?,
        iconCustomEmojiId: freezed == iconCustomEmojiId
            ? _self.iconCustomEmojiId
            : iconCustomEmojiId // ignore: cast_nullable_to_non_nullable
                  as String?,
        style: freezed == style
            ? _self.style
            : style // ignore: cast_nullable_to_non_nullable
                  as StyleType?,
      ),
    );
  }

  /// Create a copy of InlineKeyboardButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LoginURLCopyWith<$Res>? get loginUrl {
    if (_self.loginUrl == null) {
      return null;
    }

    return $LoginURLCopyWith<$Res>(_self.loginUrl!, (value) {
      return _then(_self.copyWith(loginUrl: value));
    });
  }

  /// Create a copy of InlineKeyboardButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CallbackGameCopyWith<$Res>? get callbackGame {
    if (_self.callbackGame == null) {
      return null;
    }

    return $CallbackGameCopyWith<$Res>(_self.callbackGame!, (value) {
      return _then(_self.copyWith(callbackGame: value));
    });
  }

  /// Create a copy of InlineKeyboardButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WebAppInfoCopyWith<$Res>? get webApp {
    if (_self.webApp == null) {
      return null;
    }

    return $WebAppInfoCopyWith<$Res>(_self.webApp!, (value) {
      return _then(_self.copyWith(webApp: value));
    });
  }

  /// Create a copy of InlineKeyboardButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SwitchInlineQueryChosenChatCopyWith<$Res>? get switchInlineQueryChosenChat {
    if (_self.switchInlineQueryChosenChat == null) {
      return null;
    }

    return $SwitchInlineQueryChosenChatCopyWith<$Res>(
      _self.switchInlineQueryChosenChat!,
      (value) {
        return _then(_self.copyWith(switchInlineQueryChosenChat: value));
      },
    );
  }

  /// Create a copy of InlineKeyboardButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CopyTextButtonCopyWith<$Res>? get copyText {
    if (_self.copyText == null) {
      return null;
    }

    return $CopyTextButtonCopyWith<$Res>(_self.copyText!, (value) {
      return _then(_self.copyWith(copyText: value));
    });
  }
}
