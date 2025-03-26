// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'keyboard_button.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$KeyboardButton {
  /// Text of the button. If none of the optional fields are used, it will be
  /// sent as a message when the button is pressed
  @JsonKey(name: 'text')
  String get text;

  /// Optional. If True, the user's phone number will be sent as a contact
  /// when the button is pressed. Available in private chats only
  ///
  /// Note: request_contact and request_location options will only work in
  /// Telegram versions released after 9 April, 2016. Older clients will
  /// display unsupported message.
  @JsonKey(name: 'request_contact')
  bool? get requestContact;

  /// Optional. If True, the user's current location will be sent when the
  /// button is pressed. Available in private chats only.
  @JsonKey(name: 'request_location')
  bool? get requestLocation;

  /// Optional. If specified, the user will be asked to create a poll and send
  /// it to the bot when the button is pressed. Available in private chats
  /// only.
  ///
  /// Note: request_poll option will only work in Telegram versions released
  /// after 23 January, 2020. Older clients will display unsupported message.
  @JsonKey(name: 'request_poll')
  KeyboardButtonPollType? get requestPoll;

  /// Optional. If specified, the described Web App will be launched when the
  /// button is pressed. The Web App will be able to send a "web_app_data"
  /// service message. Available in private chats only.
  ///
  /// Note: web_app option will only work in Telegram versions released after
  /// 16 April, 2022. Older clients will display unsupported message.
  @JsonKey(name: 'web_app')
  WebAppInfo? get webApp;

  /// Optional. If specified, pressing the button will open a list of suitable
  /// users. Tapping on any user will send their identifier to the bot in a
  /// "user_shared" service message. Available in private chats only.
  ///
  /// Since: Bot API 6.5
  @JsonKey(name: 'request_user')
  KeyboardButtonRequestUsers? get requestUsers;

  /// Optional. If specified, pressing the button will open a list of suitable
  /// chats. Tapping on a chat will send its identifier to the bot in a
  /// "chat_shared" service message. Available in private chats only.
  ///
  /// Since: Bot API 6.5
  @JsonKey(name: 'request_chat')
  KeyboardButtonRequestChat? get requestChat;

  /// Create a copy of KeyboardButton
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $KeyboardButtonCopyWith<KeyboardButton> get copyWith =>
      _$KeyboardButtonCopyWithImpl<KeyboardButton>(
          this as KeyboardButton, _$identity);

  /// Serializes this KeyboardButton to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'KeyboardButton(text: $text, requestContact: $requestContact, requestLocation: $requestLocation, requestPoll: $requestPoll, webApp: $webApp, requestUsers: $requestUsers, requestChat: $requestChat)';
  }
}

/// @nodoc
abstract mixin class $KeyboardButtonCopyWith<$Res> {
  factory $KeyboardButtonCopyWith(
          KeyboardButton value, $Res Function(KeyboardButton) _then) =
      _$KeyboardButtonCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'text') String text,
      @JsonKey(name: 'request_contact') bool? requestContact,
      @JsonKey(name: 'request_location') bool? requestLocation,
      @JsonKey(name: 'request_poll') KeyboardButtonPollType? requestPoll,
      @JsonKey(name: 'web_app') WebAppInfo? webApp,
      @JsonKey(name: 'request_user') KeyboardButtonRequestUsers? requestUsers,
      @JsonKey(name: 'request_chat') KeyboardButtonRequestChat? requestChat});

  $KeyboardButtonPollTypeCopyWith<$Res>? get requestPoll;
  $WebAppInfoCopyWith<$Res>? get webApp;
  $KeyboardButtonRequestUsersCopyWith<$Res>? get requestUsers;
  $KeyboardButtonRequestChatCopyWith<$Res>? get requestChat;
}

/// @nodoc
class _$KeyboardButtonCopyWithImpl<$Res>
    implements $KeyboardButtonCopyWith<$Res> {
  _$KeyboardButtonCopyWithImpl(this._self, this._then);

  final KeyboardButton _self;
  final $Res Function(KeyboardButton) _then;

  /// Create a copy of KeyboardButton
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? requestContact = freezed,
    Object? requestLocation = freezed,
    Object? requestPoll = freezed,
    Object? webApp = freezed,
    Object? requestUsers = freezed,
    Object? requestChat = freezed,
  }) {
    return _then(_self.copyWith(
      text: null == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      requestContact: freezed == requestContact
          ? _self.requestContact
          : requestContact // ignore: cast_nullable_to_non_nullable
              as bool?,
      requestLocation: freezed == requestLocation
          ? _self.requestLocation
          : requestLocation // ignore: cast_nullable_to_non_nullable
              as bool?,
      requestPoll: freezed == requestPoll
          ? _self.requestPoll
          : requestPoll // ignore: cast_nullable_to_non_nullable
              as KeyboardButtonPollType?,
      webApp: freezed == webApp
          ? _self.webApp
          : webApp // ignore: cast_nullable_to_non_nullable
              as WebAppInfo?,
      requestUsers: freezed == requestUsers
          ? _self.requestUsers
          : requestUsers // ignore: cast_nullable_to_non_nullable
              as KeyboardButtonRequestUsers?,
      requestChat: freezed == requestChat
          ? _self.requestChat
          : requestChat // ignore: cast_nullable_to_non_nullable
              as KeyboardButtonRequestChat?,
    ));
  }

  /// Create a copy of KeyboardButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $KeyboardButtonPollTypeCopyWith<$Res>? get requestPoll {
    if (_self.requestPoll == null) {
      return null;
    }

    return $KeyboardButtonPollTypeCopyWith<$Res>(_self.requestPoll!, (value) {
      return _then(_self.copyWith(requestPoll: value));
    });
  }

  /// Create a copy of KeyboardButton
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

  /// Create a copy of KeyboardButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $KeyboardButtonRequestUsersCopyWith<$Res>? get requestUsers {
    if (_self.requestUsers == null) {
      return null;
    }

    return $KeyboardButtonRequestUsersCopyWith<$Res>(_self.requestUsers!,
        (value) {
      return _then(_self.copyWith(requestUsers: value));
    });
  }

  /// Create a copy of KeyboardButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $KeyboardButtonRequestChatCopyWith<$Res>? get requestChat {
    if (_self.requestChat == null) {
      return null;
    }

    return $KeyboardButtonRequestChatCopyWith<$Res>(_self.requestChat!,
        (value) {
      return _then(_self.copyWith(requestChat: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _KeyboardButton implements KeyboardButton {
  const _KeyboardButton(
      {@JsonKey(name: 'text') required this.text,
      @JsonKey(name: 'request_contact') this.requestContact,
      @JsonKey(name: 'request_location') this.requestLocation,
      @JsonKey(name: 'request_poll') this.requestPoll,
      @JsonKey(name: 'web_app') this.webApp,
      @JsonKey(name: 'request_user') this.requestUsers,
      @JsonKey(name: 'request_chat') this.requestChat});
  factory _KeyboardButton.fromJson(Map<String, dynamic> json) =>
      _$KeyboardButtonFromJson(json);

  /// Text of the button. If none of the optional fields are used, it will be
  /// sent as a message when the button is pressed
  @override
  @JsonKey(name: 'text')
  final String text;

  /// Optional. If True, the user's phone number will be sent as a contact
  /// when the button is pressed. Available in private chats only
  ///
  /// Note: request_contact and request_location options will only work in
  /// Telegram versions released after 9 April, 2016. Older clients will
  /// display unsupported message.
  @override
  @JsonKey(name: 'request_contact')
  final bool? requestContact;

  /// Optional. If True, the user's current location will be sent when the
  /// button is pressed. Available in private chats only.
  @override
  @JsonKey(name: 'request_location')
  final bool? requestLocation;

  /// Optional. If specified, the user will be asked to create a poll and send
  /// it to the bot when the button is pressed. Available in private chats
  /// only.
  ///
  /// Note: request_poll option will only work in Telegram versions released
  /// after 23 January, 2020. Older clients will display unsupported message.
  @override
  @JsonKey(name: 'request_poll')
  final KeyboardButtonPollType? requestPoll;

  /// Optional. If specified, the described Web App will be launched when the
  /// button is pressed. The Web App will be able to send a "web_app_data"
  /// service message. Available in private chats only.
  ///
  /// Note: web_app option will only work in Telegram versions released after
  /// 16 April, 2022. Older clients will display unsupported message.
  @override
  @JsonKey(name: 'web_app')
  final WebAppInfo? webApp;

  /// Optional. If specified, pressing the button will open a list of suitable
  /// users. Tapping on any user will send their identifier to the bot in a
  /// "user_shared" service message. Available in private chats only.
  ///
  /// Since: Bot API 6.5
  @override
  @JsonKey(name: 'request_user')
  final KeyboardButtonRequestUsers? requestUsers;

  /// Optional. If specified, pressing the button will open a list of suitable
  /// chats. Tapping on a chat will send its identifier to the bot in a
  /// "chat_shared" service message. Available in private chats only.
  ///
  /// Since: Bot API 6.5
  @override
  @JsonKey(name: 'request_chat')
  final KeyboardButtonRequestChat? requestChat;

  /// Create a copy of KeyboardButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$KeyboardButtonCopyWith<_KeyboardButton> get copyWith =>
      __$KeyboardButtonCopyWithImpl<_KeyboardButton>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$KeyboardButtonToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'KeyboardButton(text: $text, requestContact: $requestContact, requestLocation: $requestLocation, requestPoll: $requestPoll, webApp: $webApp, requestUsers: $requestUsers, requestChat: $requestChat)';
  }
}

/// @nodoc
abstract mixin class _$KeyboardButtonCopyWith<$Res>
    implements $KeyboardButtonCopyWith<$Res> {
  factory _$KeyboardButtonCopyWith(
          _KeyboardButton value, $Res Function(_KeyboardButton) _then) =
      __$KeyboardButtonCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'text') String text,
      @JsonKey(name: 'request_contact') bool? requestContact,
      @JsonKey(name: 'request_location') bool? requestLocation,
      @JsonKey(name: 'request_poll') KeyboardButtonPollType? requestPoll,
      @JsonKey(name: 'web_app') WebAppInfo? webApp,
      @JsonKey(name: 'request_user') KeyboardButtonRequestUsers? requestUsers,
      @JsonKey(name: 'request_chat') KeyboardButtonRequestChat? requestChat});

  @override
  $KeyboardButtonPollTypeCopyWith<$Res>? get requestPoll;
  @override
  $WebAppInfoCopyWith<$Res>? get webApp;
  @override
  $KeyboardButtonRequestUsersCopyWith<$Res>? get requestUsers;
  @override
  $KeyboardButtonRequestChatCopyWith<$Res>? get requestChat;
}

/// @nodoc
class __$KeyboardButtonCopyWithImpl<$Res>
    implements _$KeyboardButtonCopyWith<$Res> {
  __$KeyboardButtonCopyWithImpl(this._self, this._then);

  final _KeyboardButton _self;
  final $Res Function(_KeyboardButton) _then;

  /// Create a copy of KeyboardButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? text = null,
    Object? requestContact = freezed,
    Object? requestLocation = freezed,
    Object? requestPoll = freezed,
    Object? webApp = freezed,
    Object? requestUsers = freezed,
    Object? requestChat = freezed,
  }) {
    return _then(_KeyboardButton(
      text: null == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      requestContact: freezed == requestContact
          ? _self.requestContact
          : requestContact // ignore: cast_nullable_to_non_nullable
              as bool?,
      requestLocation: freezed == requestLocation
          ? _self.requestLocation
          : requestLocation // ignore: cast_nullable_to_non_nullable
              as bool?,
      requestPoll: freezed == requestPoll
          ? _self.requestPoll
          : requestPoll // ignore: cast_nullable_to_non_nullable
              as KeyboardButtonPollType?,
      webApp: freezed == webApp
          ? _self.webApp
          : webApp // ignore: cast_nullable_to_non_nullable
              as WebAppInfo?,
      requestUsers: freezed == requestUsers
          ? _self.requestUsers
          : requestUsers // ignore: cast_nullable_to_non_nullable
              as KeyboardButtonRequestUsers?,
      requestChat: freezed == requestChat
          ? _self.requestChat
          : requestChat // ignore: cast_nullable_to_non_nullable
              as KeyboardButtonRequestChat?,
    ));
  }

  /// Create a copy of KeyboardButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $KeyboardButtonPollTypeCopyWith<$Res>? get requestPoll {
    if (_self.requestPoll == null) {
      return null;
    }

    return $KeyboardButtonPollTypeCopyWith<$Res>(_self.requestPoll!, (value) {
      return _then(_self.copyWith(requestPoll: value));
    });
  }

  /// Create a copy of KeyboardButton
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

  /// Create a copy of KeyboardButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $KeyboardButtonRequestUsersCopyWith<$Res>? get requestUsers {
    if (_self.requestUsers == null) {
      return null;
    }

    return $KeyboardButtonRequestUsersCopyWith<$Res>(_self.requestUsers!,
        (value) {
      return _then(_self.copyWith(requestUsers: value));
    });
  }

  /// Create a copy of KeyboardButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $KeyboardButtonRequestChatCopyWith<$Res>? get requestChat {
    if (_self.requestChat == null) {
      return null;
    }

    return $KeyboardButtonRequestChatCopyWith<$Res>(_self.requestChat!,
        (value) {
      return _then(_self.copyWith(requestChat: value));
    });
  }
}
