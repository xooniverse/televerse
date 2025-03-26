// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'keyboard_button_request_chat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$KeyboardButtonRequestChat {
  /// Signed 32-bit identifier of the request.
  @JsonKey(name: 'request_id')
  int get requestId;

  /// Pass True to request a channel chat, pass False to request a group or a
  /// supergroup chat.
  @JsonKey(name: 'chat_is_channel')
  bool get chatIsChannel;

  /// Optional. Pass True to request a forum supergroup, pass False to request
  /// a non-forum chat. If not specified, no additional restrictions are
  /// applied.
  @JsonKey(name: 'chat_is_forum')
  bool? get chatIsForum;

  /// Optional. Pass True to request a supergroup or a channel with a
  /// username, pass False to request a chat without a username. If not
  /// specified, no additional restrictions are applied.
  @JsonKey(name: 'chat_has_username')
  bool? get chatHasUsername;

  /// Optional. Pass True to request a chat owned by the user. Otherwise, no
  /// additional restrictions are applied.
  @JsonKey(name: 'chat_is_created')
  bool? get chatIsCreated;

  /// Optional. A JSON-serialized object listing the required administrator
  /// rights of the user in the chat. If not specified, no additional
  /// restrictions are applied.
  @JsonKey(name: 'user_administrator_rights')
  ChatAdministratorRights? get userAdministratorRights;

  /// Optional. A JSON-serialized object listing the required administrator
  /// rights of the bot in the chat. The rights must be a subset of
  /// user_administrator_rights. If not specified, no additional restrictions
  /// are applied.
  @JsonKey(name: 'bot_administrator_rights')
  ChatAdministratorRights? get botAdministratorRights;

  /// Optional. Pass True to request a chat with the bot as a member.
  /// Otherwise, no additional restrictions are applied.
  @JsonKey(name: 'bot_is_member')
  bool? get botIsMember;

  /// Optional. Pass True to request the chat's title.
  @JsonKey(name: 'request_title')
  bool? get requestTitle;

  /// Optional. Pass True to request the chat's username.
  @JsonKey(name: 'request_username')
  bool? get requestUsername;

  /// Optional. Pass True to request the chat's photo.
  @JsonKey(name: 'request_photo')
  bool? get requestPhoto;

  /// Create a copy of KeyboardButtonRequestChat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $KeyboardButtonRequestChatCopyWith<KeyboardButtonRequestChat> get copyWith =>
      _$KeyboardButtonRequestChatCopyWithImpl<KeyboardButtonRequestChat>(
          this as KeyboardButtonRequestChat, _$identity);

  /// Serializes this KeyboardButtonRequestChat to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'KeyboardButtonRequestChat(requestId: $requestId, chatIsChannel: $chatIsChannel, chatIsForum: $chatIsForum, chatHasUsername: $chatHasUsername, chatIsCreated: $chatIsCreated, userAdministratorRights: $userAdministratorRights, botAdministratorRights: $botAdministratorRights, botIsMember: $botIsMember, requestTitle: $requestTitle, requestUsername: $requestUsername, requestPhoto: $requestPhoto)';
  }
}

/// @nodoc
abstract mixin class $KeyboardButtonRequestChatCopyWith<$Res> {
  factory $KeyboardButtonRequestChatCopyWith(KeyboardButtonRequestChat value,
          $Res Function(KeyboardButtonRequestChat) _then) =
      _$KeyboardButtonRequestChatCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'request_id') int requestId,
      @JsonKey(name: 'chat_is_channel') bool chatIsChannel,
      @JsonKey(name: 'chat_is_forum') bool? chatIsForum,
      @JsonKey(name: 'chat_has_username') bool? chatHasUsername,
      @JsonKey(name: 'chat_is_created') bool? chatIsCreated,
      @JsonKey(name: 'user_administrator_rights')
      ChatAdministratorRights? userAdministratorRights,
      @JsonKey(name: 'bot_administrator_rights')
      ChatAdministratorRights? botAdministratorRights,
      @JsonKey(name: 'bot_is_member') bool? botIsMember,
      @JsonKey(name: 'request_title') bool? requestTitle,
      @JsonKey(name: 'request_username') bool? requestUsername,
      @JsonKey(name: 'request_photo') bool? requestPhoto});

  $ChatAdministratorRightsCopyWith<$Res>? get userAdministratorRights;
  $ChatAdministratorRightsCopyWith<$Res>? get botAdministratorRights;
}

/// @nodoc
class _$KeyboardButtonRequestChatCopyWithImpl<$Res>
    implements $KeyboardButtonRequestChatCopyWith<$Res> {
  _$KeyboardButtonRequestChatCopyWithImpl(this._self, this._then);

  final KeyboardButtonRequestChat _self;
  final $Res Function(KeyboardButtonRequestChat) _then;

  /// Create a copy of KeyboardButtonRequestChat
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = null,
    Object? chatIsChannel = null,
    Object? chatIsForum = freezed,
    Object? chatHasUsername = freezed,
    Object? chatIsCreated = freezed,
    Object? userAdministratorRights = freezed,
    Object? botAdministratorRights = freezed,
    Object? botIsMember = freezed,
    Object? requestTitle = freezed,
    Object? requestUsername = freezed,
    Object? requestPhoto = freezed,
  }) {
    return _then(_self.copyWith(
      requestId: null == requestId
          ? _self.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as int,
      chatIsChannel: null == chatIsChannel
          ? _self.chatIsChannel
          : chatIsChannel // ignore: cast_nullable_to_non_nullable
              as bool,
      chatIsForum: freezed == chatIsForum
          ? _self.chatIsForum
          : chatIsForum // ignore: cast_nullable_to_non_nullable
              as bool?,
      chatHasUsername: freezed == chatHasUsername
          ? _self.chatHasUsername
          : chatHasUsername // ignore: cast_nullable_to_non_nullable
              as bool?,
      chatIsCreated: freezed == chatIsCreated
          ? _self.chatIsCreated
          : chatIsCreated // ignore: cast_nullable_to_non_nullable
              as bool?,
      userAdministratorRights: freezed == userAdministratorRights
          ? _self.userAdministratorRights
          : userAdministratorRights // ignore: cast_nullable_to_non_nullable
              as ChatAdministratorRights?,
      botAdministratorRights: freezed == botAdministratorRights
          ? _self.botAdministratorRights
          : botAdministratorRights // ignore: cast_nullable_to_non_nullable
              as ChatAdministratorRights?,
      botIsMember: freezed == botIsMember
          ? _self.botIsMember
          : botIsMember // ignore: cast_nullable_to_non_nullable
              as bool?,
      requestTitle: freezed == requestTitle
          ? _self.requestTitle
          : requestTitle // ignore: cast_nullable_to_non_nullable
              as bool?,
      requestUsername: freezed == requestUsername
          ? _self.requestUsername
          : requestUsername // ignore: cast_nullable_to_non_nullable
              as bool?,
      requestPhoto: freezed == requestPhoto
          ? _self.requestPhoto
          : requestPhoto // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  /// Create a copy of KeyboardButtonRequestChat
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatAdministratorRightsCopyWith<$Res>? get userAdministratorRights {
    if (_self.userAdministratorRights == null) {
      return null;
    }

    return $ChatAdministratorRightsCopyWith<$Res>(
        _self.userAdministratorRights!, (value) {
      return _then(_self.copyWith(userAdministratorRights: value));
    });
  }

  /// Create a copy of KeyboardButtonRequestChat
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatAdministratorRightsCopyWith<$Res>? get botAdministratorRights {
    if (_self.botAdministratorRights == null) {
      return null;
    }

    return $ChatAdministratorRightsCopyWith<$Res>(_self.botAdministratorRights!,
        (value) {
      return _then(_self.copyWith(botAdministratorRights: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _KeyboardButtonRequestChat implements KeyboardButtonRequestChat {
  const _KeyboardButtonRequestChat(
      {@JsonKey(name: 'request_id') required this.requestId,
      @JsonKey(name: 'chat_is_channel') required this.chatIsChannel,
      @JsonKey(name: 'chat_is_forum') this.chatIsForum,
      @JsonKey(name: 'chat_has_username') this.chatHasUsername,
      @JsonKey(name: 'chat_is_created') this.chatIsCreated,
      @JsonKey(name: 'user_administrator_rights') this.userAdministratorRights,
      @JsonKey(name: 'bot_administrator_rights') this.botAdministratorRights,
      @JsonKey(name: 'bot_is_member') this.botIsMember,
      @JsonKey(name: 'request_title') this.requestTitle,
      @JsonKey(name: 'request_username') this.requestUsername,
      @JsonKey(name: 'request_photo') this.requestPhoto});
  factory _KeyboardButtonRequestChat.fromJson(Map<String, dynamic> json) =>
      _$KeyboardButtonRequestChatFromJson(json);

  /// Signed 32-bit identifier of the request.
  @override
  @JsonKey(name: 'request_id')
  final int requestId;

  /// Pass True to request a channel chat, pass False to request a group or a
  /// supergroup chat.
  @override
  @JsonKey(name: 'chat_is_channel')
  final bool chatIsChannel;

  /// Optional. Pass True to request a forum supergroup, pass False to request
  /// a non-forum chat. If not specified, no additional restrictions are
  /// applied.
  @override
  @JsonKey(name: 'chat_is_forum')
  final bool? chatIsForum;

  /// Optional. Pass True to request a supergroup or a channel with a
  /// username, pass False to request a chat without a username. If not
  /// specified, no additional restrictions are applied.
  @override
  @JsonKey(name: 'chat_has_username')
  final bool? chatHasUsername;

  /// Optional. Pass True to request a chat owned by the user. Otherwise, no
  /// additional restrictions are applied.
  @override
  @JsonKey(name: 'chat_is_created')
  final bool? chatIsCreated;

  /// Optional. A JSON-serialized object listing the required administrator
  /// rights of the user in the chat. If not specified, no additional
  /// restrictions are applied.
  @override
  @JsonKey(name: 'user_administrator_rights')
  final ChatAdministratorRights? userAdministratorRights;

  /// Optional. A JSON-serialized object listing the required administrator
  /// rights of the bot in the chat. The rights must be a subset of
  /// user_administrator_rights. If not specified, no additional restrictions
  /// are applied.
  @override
  @JsonKey(name: 'bot_administrator_rights')
  final ChatAdministratorRights? botAdministratorRights;

  /// Optional. Pass True to request a chat with the bot as a member.
  /// Otherwise, no additional restrictions are applied.
  @override
  @JsonKey(name: 'bot_is_member')
  final bool? botIsMember;

  /// Optional. Pass True to request the chat's title.
  @override
  @JsonKey(name: 'request_title')
  final bool? requestTitle;

  /// Optional. Pass True to request the chat's username.
  @override
  @JsonKey(name: 'request_username')
  final bool? requestUsername;

  /// Optional. Pass True to request the chat's photo.
  @override
  @JsonKey(name: 'request_photo')
  final bool? requestPhoto;

  /// Create a copy of KeyboardButtonRequestChat
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$KeyboardButtonRequestChatCopyWith<_KeyboardButtonRequestChat>
      get copyWith =>
          __$KeyboardButtonRequestChatCopyWithImpl<_KeyboardButtonRequestChat>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$KeyboardButtonRequestChatToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'KeyboardButtonRequestChat(requestId: $requestId, chatIsChannel: $chatIsChannel, chatIsForum: $chatIsForum, chatHasUsername: $chatHasUsername, chatIsCreated: $chatIsCreated, userAdministratorRights: $userAdministratorRights, botAdministratorRights: $botAdministratorRights, botIsMember: $botIsMember, requestTitle: $requestTitle, requestUsername: $requestUsername, requestPhoto: $requestPhoto)';
  }
}

/// @nodoc
abstract mixin class _$KeyboardButtonRequestChatCopyWith<$Res>
    implements $KeyboardButtonRequestChatCopyWith<$Res> {
  factory _$KeyboardButtonRequestChatCopyWith(_KeyboardButtonRequestChat value,
          $Res Function(_KeyboardButtonRequestChat) _then) =
      __$KeyboardButtonRequestChatCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'request_id') int requestId,
      @JsonKey(name: 'chat_is_channel') bool chatIsChannel,
      @JsonKey(name: 'chat_is_forum') bool? chatIsForum,
      @JsonKey(name: 'chat_has_username') bool? chatHasUsername,
      @JsonKey(name: 'chat_is_created') bool? chatIsCreated,
      @JsonKey(name: 'user_administrator_rights')
      ChatAdministratorRights? userAdministratorRights,
      @JsonKey(name: 'bot_administrator_rights')
      ChatAdministratorRights? botAdministratorRights,
      @JsonKey(name: 'bot_is_member') bool? botIsMember,
      @JsonKey(name: 'request_title') bool? requestTitle,
      @JsonKey(name: 'request_username') bool? requestUsername,
      @JsonKey(name: 'request_photo') bool? requestPhoto});

  @override
  $ChatAdministratorRightsCopyWith<$Res>? get userAdministratorRights;
  @override
  $ChatAdministratorRightsCopyWith<$Res>? get botAdministratorRights;
}

/// @nodoc
class __$KeyboardButtonRequestChatCopyWithImpl<$Res>
    implements _$KeyboardButtonRequestChatCopyWith<$Res> {
  __$KeyboardButtonRequestChatCopyWithImpl(this._self, this._then);

  final _KeyboardButtonRequestChat _self;
  final $Res Function(_KeyboardButtonRequestChat) _then;

  /// Create a copy of KeyboardButtonRequestChat
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? requestId = null,
    Object? chatIsChannel = null,
    Object? chatIsForum = freezed,
    Object? chatHasUsername = freezed,
    Object? chatIsCreated = freezed,
    Object? userAdministratorRights = freezed,
    Object? botAdministratorRights = freezed,
    Object? botIsMember = freezed,
    Object? requestTitle = freezed,
    Object? requestUsername = freezed,
    Object? requestPhoto = freezed,
  }) {
    return _then(_KeyboardButtonRequestChat(
      requestId: null == requestId
          ? _self.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as int,
      chatIsChannel: null == chatIsChannel
          ? _self.chatIsChannel
          : chatIsChannel // ignore: cast_nullable_to_non_nullable
              as bool,
      chatIsForum: freezed == chatIsForum
          ? _self.chatIsForum
          : chatIsForum // ignore: cast_nullable_to_non_nullable
              as bool?,
      chatHasUsername: freezed == chatHasUsername
          ? _self.chatHasUsername
          : chatHasUsername // ignore: cast_nullable_to_non_nullable
              as bool?,
      chatIsCreated: freezed == chatIsCreated
          ? _self.chatIsCreated
          : chatIsCreated // ignore: cast_nullable_to_non_nullable
              as bool?,
      userAdministratorRights: freezed == userAdministratorRights
          ? _self.userAdministratorRights
          : userAdministratorRights // ignore: cast_nullable_to_non_nullable
              as ChatAdministratorRights?,
      botAdministratorRights: freezed == botAdministratorRights
          ? _self.botAdministratorRights
          : botAdministratorRights // ignore: cast_nullable_to_non_nullable
              as ChatAdministratorRights?,
      botIsMember: freezed == botIsMember
          ? _self.botIsMember
          : botIsMember // ignore: cast_nullable_to_non_nullable
              as bool?,
      requestTitle: freezed == requestTitle
          ? _self.requestTitle
          : requestTitle // ignore: cast_nullable_to_non_nullable
              as bool?,
      requestUsername: freezed == requestUsername
          ? _self.requestUsername
          : requestUsername // ignore: cast_nullable_to_non_nullable
              as bool?,
      requestPhoto: freezed == requestPhoto
          ? _self.requestPhoto
          : requestPhoto // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  /// Create a copy of KeyboardButtonRequestChat
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatAdministratorRightsCopyWith<$Res>? get userAdministratorRights {
    if (_self.userAdministratorRights == null) {
      return null;
    }

    return $ChatAdministratorRightsCopyWith<$Res>(
        _self.userAdministratorRights!, (value) {
      return _then(_self.copyWith(userAdministratorRights: value));
    });
  }

  /// Create a copy of KeyboardButtonRequestChat
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatAdministratorRightsCopyWith<$Res>? get botAdministratorRights {
    if (_self.botAdministratorRights == null) {
      return null;
    }

    return $ChatAdministratorRightsCopyWith<$Res>(_self.botAdministratorRights!,
        (value) {
      return _then(_self.copyWith(botAdministratorRights: value));
    });
  }
}
