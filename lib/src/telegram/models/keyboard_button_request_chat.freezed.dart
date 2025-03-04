// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'keyboard_button_request_chat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

KeyboardButtonRequestChat _$KeyboardButtonRequestChatFromJson(
    Map<String, dynamic> json) {
  return _KeyboardButtonRequestChat.fromJson(json);
}

/// @nodoc
mixin _$KeyboardButtonRequestChat {
  /// Signed 32-bit identifier of the request.
  @JsonKey(name: 'request_id')
  int get requestId => throw _privateConstructorUsedError;

  /// Pass True to request a channel chat, pass False to request a group or a
  /// supergroup chat.
  @JsonKey(name: 'chat_is_channel')
  bool get chatIsChannel => throw _privateConstructorUsedError;

  /// Optional. Pass True to request a forum supergroup, pass False to request
  /// a non-forum chat. If not specified, no additional restrictions are
  /// applied.
  @JsonKey(name: 'chat_is_forum')
  bool? get chatIsForum => throw _privateConstructorUsedError;

  /// Optional. Pass True to request a supergroup or a channel with a
  /// username, pass False to request a chat without a username. If not
  /// specified, no additional restrictions are applied.
  @JsonKey(name: 'chat_has_username')
  bool? get chatHasUsername => throw _privateConstructorUsedError;

  /// Optional. Pass True to request a chat owned by the user. Otherwise, no
  /// additional restrictions are applied.
  @JsonKey(name: 'chat_is_created')
  bool? get chatIsCreated => throw _privateConstructorUsedError;

  /// Optional. A JSON-serialized object listing the required administrator
  /// rights of the user in the chat. If not specified, no additional
  /// restrictions are applied.
  @JsonKey(name: 'user_administrator_rights')
  ChatAdministratorRights? get userAdministratorRights =>
      throw _privateConstructorUsedError;

  /// Optional. A JSON-serialized object listing the required administrator
  /// rights of the bot in the chat. The rights must be a subset of
  /// user_administrator_rights. If not specified, no additional restrictions
  /// are applied.
  @JsonKey(name: 'bot_administrator_rights')
  ChatAdministratorRights? get botAdministratorRights =>
      throw _privateConstructorUsedError;

  /// Optional. Pass True to request a chat with the bot as a member.
  /// Otherwise, no additional restrictions are applied.
  @JsonKey(name: 'bot_is_member')
  bool? get botIsMember => throw _privateConstructorUsedError;

  /// Optional. Pass True to request the chat's title.
  @JsonKey(name: 'request_title')
  bool? get requestTitle => throw _privateConstructorUsedError;

  /// Optional. Pass True to request the chat's username.
  @JsonKey(name: 'request_username')
  bool? get requestUsername => throw _privateConstructorUsedError;

  /// Optional. Pass True to request the chat's photo.
  @JsonKey(name: 'request_photo')
  bool? get requestPhoto => throw _privateConstructorUsedError;

  /// Serializes this KeyboardButtonRequestChat to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of KeyboardButtonRequestChat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KeyboardButtonRequestChatCopyWith<KeyboardButtonRequestChat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeyboardButtonRequestChatCopyWith<$Res> {
  factory $KeyboardButtonRequestChatCopyWith(KeyboardButtonRequestChat value,
          $Res Function(KeyboardButtonRequestChat) then) =
      _$KeyboardButtonRequestChatCopyWithImpl<$Res, KeyboardButtonRequestChat>;
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
class _$KeyboardButtonRequestChatCopyWithImpl<$Res,
        $Val extends KeyboardButtonRequestChat>
    implements $KeyboardButtonRequestChatCopyWith<$Res> {
  _$KeyboardButtonRequestChatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as int,
      chatIsChannel: null == chatIsChannel
          ? _value.chatIsChannel
          : chatIsChannel // ignore: cast_nullable_to_non_nullable
              as bool,
      chatIsForum: freezed == chatIsForum
          ? _value.chatIsForum
          : chatIsForum // ignore: cast_nullable_to_non_nullable
              as bool?,
      chatHasUsername: freezed == chatHasUsername
          ? _value.chatHasUsername
          : chatHasUsername // ignore: cast_nullable_to_non_nullable
              as bool?,
      chatIsCreated: freezed == chatIsCreated
          ? _value.chatIsCreated
          : chatIsCreated // ignore: cast_nullable_to_non_nullable
              as bool?,
      userAdministratorRights: freezed == userAdministratorRights
          ? _value.userAdministratorRights
          : userAdministratorRights // ignore: cast_nullable_to_non_nullable
              as ChatAdministratorRights?,
      botAdministratorRights: freezed == botAdministratorRights
          ? _value.botAdministratorRights
          : botAdministratorRights // ignore: cast_nullable_to_non_nullable
              as ChatAdministratorRights?,
      botIsMember: freezed == botIsMember
          ? _value.botIsMember
          : botIsMember // ignore: cast_nullable_to_non_nullable
              as bool?,
      requestTitle: freezed == requestTitle
          ? _value.requestTitle
          : requestTitle // ignore: cast_nullable_to_non_nullable
              as bool?,
      requestUsername: freezed == requestUsername
          ? _value.requestUsername
          : requestUsername // ignore: cast_nullable_to_non_nullable
              as bool?,
      requestPhoto: freezed == requestPhoto
          ? _value.requestPhoto
          : requestPhoto // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  /// Create a copy of KeyboardButtonRequestChat
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatAdministratorRightsCopyWith<$Res>? get userAdministratorRights {
    if (_value.userAdministratorRights == null) {
      return null;
    }

    return $ChatAdministratorRightsCopyWith<$Res>(
        _value.userAdministratorRights!, (value) {
      return _then(_value.copyWith(userAdministratorRights: value) as $Val);
    });
  }

  /// Create a copy of KeyboardButtonRequestChat
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatAdministratorRightsCopyWith<$Res>? get botAdministratorRights {
    if (_value.botAdministratorRights == null) {
      return null;
    }

    return $ChatAdministratorRightsCopyWith<$Res>(
        _value.botAdministratorRights!, (value) {
      return _then(_value.copyWith(botAdministratorRights: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$KeyboardButtonRequestChatImplCopyWith<$Res>
    implements $KeyboardButtonRequestChatCopyWith<$Res> {
  factory _$$KeyboardButtonRequestChatImplCopyWith(
          _$KeyboardButtonRequestChatImpl value,
          $Res Function(_$KeyboardButtonRequestChatImpl) then) =
      __$$KeyboardButtonRequestChatImplCopyWithImpl<$Res>;
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
class __$$KeyboardButtonRequestChatImplCopyWithImpl<$Res>
    extends _$KeyboardButtonRequestChatCopyWithImpl<$Res,
        _$KeyboardButtonRequestChatImpl>
    implements _$$KeyboardButtonRequestChatImplCopyWith<$Res> {
  __$$KeyboardButtonRequestChatImplCopyWithImpl(
      _$KeyboardButtonRequestChatImpl _value,
      $Res Function(_$KeyboardButtonRequestChatImpl) _then)
      : super(_value, _then);

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
    return _then(_$KeyboardButtonRequestChatImpl(
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as int,
      chatIsChannel: null == chatIsChannel
          ? _value.chatIsChannel
          : chatIsChannel // ignore: cast_nullable_to_non_nullable
              as bool,
      chatIsForum: freezed == chatIsForum
          ? _value.chatIsForum
          : chatIsForum // ignore: cast_nullable_to_non_nullable
              as bool?,
      chatHasUsername: freezed == chatHasUsername
          ? _value.chatHasUsername
          : chatHasUsername // ignore: cast_nullable_to_non_nullable
              as bool?,
      chatIsCreated: freezed == chatIsCreated
          ? _value.chatIsCreated
          : chatIsCreated // ignore: cast_nullable_to_non_nullable
              as bool?,
      userAdministratorRights: freezed == userAdministratorRights
          ? _value.userAdministratorRights
          : userAdministratorRights // ignore: cast_nullable_to_non_nullable
              as ChatAdministratorRights?,
      botAdministratorRights: freezed == botAdministratorRights
          ? _value.botAdministratorRights
          : botAdministratorRights // ignore: cast_nullable_to_non_nullable
              as ChatAdministratorRights?,
      botIsMember: freezed == botIsMember
          ? _value.botIsMember
          : botIsMember // ignore: cast_nullable_to_non_nullable
              as bool?,
      requestTitle: freezed == requestTitle
          ? _value.requestTitle
          : requestTitle // ignore: cast_nullable_to_non_nullable
              as bool?,
      requestUsername: freezed == requestUsername
          ? _value.requestUsername
          : requestUsername // ignore: cast_nullable_to_non_nullable
              as bool?,
      requestPhoto: freezed == requestPhoto
          ? _value.requestPhoto
          : requestPhoto // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KeyboardButtonRequestChatImpl implements _KeyboardButtonRequestChat {
  const _$KeyboardButtonRequestChatImpl(
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

  factory _$KeyboardButtonRequestChatImpl.fromJson(Map<String, dynamic> json) =>
      _$$KeyboardButtonRequestChatImplFromJson(json);

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

  @override
  String toString() {
    return 'KeyboardButtonRequestChat(requestId: $requestId, chatIsChannel: $chatIsChannel, chatIsForum: $chatIsForum, chatHasUsername: $chatHasUsername, chatIsCreated: $chatIsCreated, userAdministratorRights: $userAdministratorRights, botAdministratorRights: $botAdministratorRights, botIsMember: $botIsMember, requestTitle: $requestTitle, requestUsername: $requestUsername, requestPhoto: $requestPhoto)';
  }

  /// Create a copy of KeyboardButtonRequestChat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KeyboardButtonRequestChatImplCopyWith<_$KeyboardButtonRequestChatImpl>
      get copyWith => __$$KeyboardButtonRequestChatImplCopyWithImpl<
          _$KeyboardButtonRequestChatImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KeyboardButtonRequestChatImplToJson(
      this,
    );
  }
}

abstract class _KeyboardButtonRequestChat implements KeyboardButtonRequestChat {
  const factory _KeyboardButtonRequestChat(
          {@JsonKey(name: 'request_id') required final int requestId,
          @JsonKey(name: 'chat_is_channel') required final bool chatIsChannel,
          @JsonKey(name: 'chat_is_forum') final bool? chatIsForum,
          @JsonKey(name: 'chat_has_username') final bool? chatHasUsername,
          @JsonKey(name: 'chat_is_created') final bool? chatIsCreated,
          @JsonKey(name: 'user_administrator_rights')
          final ChatAdministratorRights? userAdministratorRights,
          @JsonKey(name: 'bot_administrator_rights')
          final ChatAdministratorRights? botAdministratorRights,
          @JsonKey(name: 'bot_is_member') final bool? botIsMember,
          @JsonKey(name: 'request_title') final bool? requestTitle,
          @JsonKey(name: 'request_username') final bool? requestUsername,
          @JsonKey(name: 'request_photo') final bool? requestPhoto}) =
      _$KeyboardButtonRequestChatImpl;

  factory _KeyboardButtonRequestChat.fromJson(Map<String, dynamic> json) =
      _$KeyboardButtonRequestChatImpl.fromJson;

  /// Signed 32-bit identifier of the request.
  @override
  @JsonKey(name: 'request_id')
  int get requestId;

  /// Pass True to request a channel chat, pass False to request a group or a
  /// supergroup chat.
  @override
  @JsonKey(name: 'chat_is_channel')
  bool get chatIsChannel;

  /// Optional. Pass True to request a forum supergroup, pass False to request
  /// a non-forum chat. If not specified, no additional restrictions are
  /// applied.
  @override
  @JsonKey(name: 'chat_is_forum')
  bool? get chatIsForum;

  /// Optional. Pass True to request a supergroup or a channel with a
  /// username, pass False to request a chat without a username. If not
  /// specified, no additional restrictions are applied.
  @override
  @JsonKey(name: 'chat_has_username')
  bool? get chatHasUsername;

  /// Optional. Pass True to request a chat owned by the user. Otherwise, no
  /// additional restrictions are applied.
  @override
  @JsonKey(name: 'chat_is_created')
  bool? get chatIsCreated;

  /// Optional. A JSON-serialized object listing the required administrator
  /// rights of the user in the chat. If not specified, no additional
  /// restrictions are applied.
  @override
  @JsonKey(name: 'user_administrator_rights')
  ChatAdministratorRights? get userAdministratorRights;

  /// Optional. A JSON-serialized object listing the required administrator
  /// rights of the bot in the chat. The rights must be a subset of
  /// user_administrator_rights. If not specified, no additional restrictions
  /// are applied.
  @override
  @JsonKey(name: 'bot_administrator_rights')
  ChatAdministratorRights? get botAdministratorRights;

  /// Optional. Pass True to request a chat with the bot as a member.
  /// Otherwise, no additional restrictions are applied.
  @override
  @JsonKey(name: 'bot_is_member')
  bool? get botIsMember;

  /// Optional. Pass True to request the chat's title.
  @override
  @JsonKey(name: 'request_title')
  bool? get requestTitle;

  /// Optional. Pass True to request the chat's username.
  @override
  @JsonKey(name: 'request_username')
  bool? get requestUsername;

  /// Optional. Pass True to request the chat's photo.
  @override
  @JsonKey(name: 'request_photo')
  bool? get requestPhoto;

  /// Create a copy of KeyboardButtonRequestChat
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KeyboardButtonRequestChatImplCopyWith<_$KeyboardButtonRequestChatImpl>
      get copyWith => throw _privateConstructorUsedError;
}
