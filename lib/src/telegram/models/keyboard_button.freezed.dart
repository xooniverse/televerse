// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'keyboard_button.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

KeyboardButton _$KeyboardButtonFromJson(Map<String, dynamic> json) {
  return _KeyboardButton.fromJson(json);
}

/// @nodoc
mixin _$KeyboardButton {
  /// Text of the button. If none of the optional fields are used, it will be
  /// sent as a message when the button is pressed
  @JsonKey(name: 'text')
  String get text => throw _privateConstructorUsedError;

  /// Optional. If True, the user's phone number will be sent as a contact
  /// when the button is pressed. Available in private chats only
  ///
  /// Note: request_contact and request_location options will only work in
  /// Telegram versions released after 9 April, 2016. Older clients will
  /// display unsupported message.
  @JsonKey(name: 'request_contact')
  bool? get requestContact => throw _privateConstructorUsedError;

  /// Optional. If True, the user's current location will be sent when the
  /// button is pressed. Available in private chats only.
  @JsonKey(name: 'request_location')
  bool? get requestLocation => throw _privateConstructorUsedError;

  /// Optional. If specified, the user will be asked to create a poll and send
  /// it to the bot when the button is pressed. Available in private chats
  /// only.
  ///
  /// Note: request_poll option will only work in Telegram versions released
  /// after 23 January, 2020. Older clients will display unsupported message.
  @JsonKey(name: 'request_poll')
  KeyboardButtonPollType? get requestPoll => throw _privateConstructorUsedError;

  /// Optional. If specified, the described Web App will be launched when the
  /// button is pressed. The Web App will be able to send a "web_app_data"
  /// service message. Available in private chats only.
  ///
  /// Note: web_app option will only work in Telegram versions released after
  /// 16 April, 2022. Older clients will display unsupported message.
  @JsonKey(name: 'web_app')
  WebAppInfo? get webApp => throw _privateConstructorUsedError;

  /// Optional. If specified, pressing the button will open a list of suitable
  /// users. Tapping on any user will send their identifier to the bot in a
  /// "user_shared" service message. Available in private chats only.
  ///
  /// Since: Bot API 6.5
  @JsonKey(name: 'request_user')
  KeyboardButtonRequestUsers? get requestUsers =>
      throw _privateConstructorUsedError;

  /// Optional. If specified, pressing the button will open a list of suitable
  /// chats. Tapping on a chat will send its identifier to the bot in a
  /// "chat_shared" service message. Available in private chats only.
  ///
  /// Since: Bot API 6.5
  @JsonKey(name: 'request_chat')
  KeyboardButtonRequestChat? get requestChat =>
      throw _privateConstructorUsedError;

  /// Serializes this KeyboardButton to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of KeyboardButton
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KeyboardButtonCopyWith<KeyboardButton> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeyboardButtonCopyWith<$Res> {
  factory $KeyboardButtonCopyWith(
          KeyboardButton value, $Res Function(KeyboardButton) then) =
      _$KeyboardButtonCopyWithImpl<$Res, KeyboardButton>;
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
class _$KeyboardButtonCopyWithImpl<$Res, $Val extends KeyboardButton>
    implements $KeyboardButtonCopyWith<$Res> {
  _$KeyboardButtonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      requestContact: freezed == requestContact
          ? _value.requestContact
          : requestContact // ignore: cast_nullable_to_non_nullable
              as bool?,
      requestLocation: freezed == requestLocation
          ? _value.requestLocation
          : requestLocation // ignore: cast_nullable_to_non_nullable
              as bool?,
      requestPoll: freezed == requestPoll
          ? _value.requestPoll
          : requestPoll // ignore: cast_nullable_to_non_nullable
              as KeyboardButtonPollType?,
      webApp: freezed == webApp
          ? _value.webApp
          : webApp // ignore: cast_nullable_to_non_nullable
              as WebAppInfo?,
      requestUsers: freezed == requestUsers
          ? _value.requestUsers
          : requestUsers // ignore: cast_nullable_to_non_nullable
              as KeyboardButtonRequestUsers?,
      requestChat: freezed == requestChat
          ? _value.requestChat
          : requestChat // ignore: cast_nullable_to_non_nullable
              as KeyboardButtonRequestChat?,
    ) as $Val);
  }

  /// Create a copy of KeyboardButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $KeyboardButtonPollTypeCopyWith<$Res>? get requestPoll {
    if (_value.requestPoll == null) {
      return null;
    }

    return $KeyboardButtonPollTypeCopyWith<$Res>(_value.requestPoll!, (value) {
      return _then(_value.copyWith(requestPoll: value) as $Val);
    });
  }

  /// Create a copy of KeyboardButton
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

  /// Create a copy of KeyboardButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $KeyboardButtonRequestUsersCopyWith<$Res>? get requestUsers {
    if (_value.requestUsers == null) {
      return null;
    }

    return $KeyboardButtonRequestUsersCopyWith<$Res>(_value.requestUsers!,
        (value) {
      return _then(_value.copyWith(requestUsers: value) as $Val);
    });
  }

  /// Create a copy of KeyboardButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $KeyboardButtonRequestChatCopyWith<$Res>? get requestChat {
    if (_value.requestChat == null) {
      return null;
    }

    return $KeyboardButtonRequestChatCopyWith<$Res>(_value.requestChat!,
        (value) {
      return _then(_value.copyWith(requestChat: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$KeyboardButtonImplCopyWith<$Res>
    implements $KeyboardButtonCopyWith<$Res> {
  factory _$$KeyboardButtonImplCopyWith(_$KeyboardButtonImpl value,
          $Res Function(_$KeyboardButtonImpl) then) =
      __$$KeyboardButtonImplCopyWithImpl<$Res>;
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
class __$$KeyboardButtonImplCopyWithImpl<$Res>
    extends _$KeyboardButtonCopyWithImpl<$Res, _$KeyboardButtonImpl>
    implements _$$KeyboardButtonImplCopyWith<$Res> {
  __$$KeyboardButtonImplCopyWithImpl(
      _$KeyboardButtonImpl _value, $Res Function(_$KeyboardButtonImpl) _then)
      : super(_value, _then);

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
    return _then(_$KeyboardButtonImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      requestContact: freezed == requestContact
          ? _value.requestContact
          : requestContact // ignore: cast_nullable_to_non_nullable
              as bool?,
      requestLocation: freezed == requestLocation
          ? _value.requestLocation
          : requestLocation // ignore: cast_nullable_to_non_nullable
              as bool?,
      requestPoll: freezed == requestPoll
          ? _value.requestPoll
          : requestPoll // ignore: cast_nullable_to_non_nullable
              as KeyboardButtonPollType?,
      webApp: freezed == webApp
          ? _value.webApp
          : webApp // ignore: cast_nullable_to_non_nullable
              as WebAppInfo?,
      requestUsers: freezed == requestUsers
          ? _value.requestUsers
          : requestUsers // ignore: cast_nullable_to_non_nullable
              as KeyboardButtonRequestUsers?,
      requestChat: freezed == requestChat
          ? _value.requestChat
          : requestChat // ignore: cast_nullable_to_non_nullable
              as KeyboardButtonRequestChat?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KeyboardButtonImpl implements _KeyboardButton {
  const _$KeyboardButtonImpl(
      {@JsonKey(name: 'text') required this.text,
      @JsonKey(name: 'request_contact') this.requestContact,
      @JsonKey(name: 'request_location') this.requestLocation,
      @JsonKey(name: 'request_poll') this.requestPoll,
      @JsonKey(name: 'web_app') this.webApp,
      @JsonKey(name: 'request_user') this.requestUsers,
      @JsonKey(name: 'request_chat') this.requestChat});

  factory _$KeyboardButtonImpl.fromJson(Map<String, dynamic> json) =>
      _$$KeyboardButtonImplFromJson(json);

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

  @override
  String toString() {
    return 'KeyboardButton(text: $text, requestContact: $requestContact, requestLocation: $requestLocation, requestPoll: $requestPoll, webApp: $webApp, requestUsers: $requestUsers, requestChat: $requestChat)';
  }

  /// Create a copy of KeyboardButton
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KeyboardButtonImplCopyWith<_$KeyboardButtonImpl> get copyWith =>
      __$$KeyboardButtonImplCopyWithImpl<_$KeyboardButtonImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KeyboardButtonImplToJson(
      this,
    );
  }
}

abstract class _KeyboardButton implements KeyboardButton {
  const factory _KeyboardButton(
      {@JsonKey(name: 'text') required final String text,
      @JsonKey(name: 'request_contact') final bool? requestContact,
      @JsonKey(name: 'request_location') final bool? requestLocation,
      @JsonKey(name: 'request_poll') final KeyboardButtonPollType? requestPoll,
      @JsonKey(name: 'web_app') final WebAppInfo? webApp,
      @JsonKey(name: 'request_user')
      final KeyboardButtonRequestUsers? requestUsers,
      @JsonKey(name: 'request_chat')
      final KeyboardButtonRequestChat? requestChat}) = _$KeyboardButtonImpl;

  factory _KeyboardButton.fromJson(Map<String, dynamic> json) =
      _$KeyboardButtonImpl.fromJson;

  /// Text of the button. If none of the optional fields are used, it will be
  /// sent as a message when the button is pressed
  @override
  @JsonKey(name: 'text')
  String get text;

  /// Optional. If True, the user's phone number will be sent as a contact
  /// when the button is pressed. Available in private chats only
  ///
  /// Note: request_contact and request_location options will only work in
  /// Telegram versions released after 9 April, 2016. Older clients will
  /// display unsupported message.
  @override
  @JsonKey(name: 'request_contact')
  bool? get requestContact;

  /// Optional. If True, the user's current location will be sent when the
  /// button is pressed. Available in private chats only.
  @override
  @JsonKey(name: 'request_location')
  bool? get requestLocation;

  /// Optional. If specified, the user will be asked to create a poll and send
  /// it to the bot when the button is pressed. Available in private chats
  /// only.
  ///
  /// Note: request_poll option will only work in Telegram versions released
  /// after 23 January, 2020. Older clients will display unsupported message.
  @override
  @JsonKey(name: 'request_poll')
  KeyboardButtonPollType? get requestPoll;

  /// Optional. If specified, the described Web App will be launched when the
  /// button is pressed. The Web App will be able to send a "web_app_data"
  /// service message. Available in private chats only.
  ///
  /// Note: web_app option will only work in Telegram versions released after
  /// 16 April, 2022. Older clients will display unsupported message.
  @override
  @JsonKey(name: 'web_app')
  WebAppInfo? get webApp;

  /// Optional. If specified, pressing the button will open a list of suitable
  /// users. Tapping on any user will send their identifier to the bot in a
  /// "user_shared" service message. Available in private chats only.
  ///
  /// Since: Bot API 6.5
  @override
  @JsonKey(name: 'request_user')
  KeyboardButtonRequestUsers? get requestUsers;

  /// Optional. If specified, pressing the button will open a list of suitable
  /// chats. Tapping on a chat will send its identifier to the bot in a
  /// "chat_shared" service message. Available in private chats only.
  ///
  /// Since: Bot API 6.5
  @override
  @JsonKey(name: 'request_chat')
  KeyboardButtonRequestChat? get requestChat;

  /// Create a copy of KeyboardButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KeyboardButtonImplCopyWith<_$KeyboardButtonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
