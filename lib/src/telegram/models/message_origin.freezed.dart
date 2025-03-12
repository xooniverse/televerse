// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_origin.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MessageOrigin _$MessageOriginFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'user':
      return MessageOriginUser.fromJson(json);
    case 'hidden_user':
      return MessageOriginHiddenUser.fromJson(json);
    case 'chat':
      return MessageOriginChat.fromJson(json);
    case 'channel':
      return MessageOriginChannel.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'MessageOrigin',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$MessageOrigin {
  /// Type of the message origin, must be "user"
  @JsonKey(defaultValue: MessageOriginType.user, name: 'type')
  MessageOriginType get type => throw _privateConstructorUsedError;

  /// Date the message was sent originally in Unix time
  @JsonKey(required: true, name: 'date')
  int get date => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessageOriginUser value) user,
    required TResult Function(MessageOriginHiddenUser value) hiddenUser,
    required TResult Function(MessageOriginChat value) chat,
    required TResult Function(MessageOriginChannel value) channel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MessageOriginUser value)? user,
    TResult? Function(MessageOriginHiddenUser value)? hiddenUser,
    TResult? Function(MessageOriginChat value)? chat,
    TResult? Function(MessageOriginChannel value)? channel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessageOriginUser value)? user,
    TResult Function(MessageOriginHiddenUser value)? hiddenUser,
    TResult Function(MessageOriginChat value)? chat,
    TResult Function(MessageOriginChannel value)? channel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this MessageOrigin to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MessageOrigin
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageOriginCopyWith<MessageOrigin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageOriginCopyWith<$Res> {
  factory $MessageOriginCopyWith(
          MessageOrigin value, $Res Function(MessageOrigin) then) =
      _$MessageOriginCopyWithImpl<$Res, MessageOrigin>;
  @useResult
  $Res call(
      {@JsonKey(defaultValue: MessageOriginType.user, name: 'type')
      MessageOriginType type,
      @JsonKey(required: true, name: 'date') int date});
}

/// @nodoc
class _$MessageOriginCopyWithImpl<$Res, $Val extends MessageOrigin>
    implements $MessageOriginCopyWith<$Res> {
  _$MessageOriginCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageOrigin
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MessageOriginType,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageOriginUserImplCopyWith<$Res>
    implements $MessageOriginCopyWith<$Res> {
  factory _$$MessageOriginUserImplCopyWith(_$MessageOriginUserImpl value,
          $Res Function(_$MessageOriginUserImpl) then) =
      __$$MessageOriginUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(defaultValue: MessageOriginType.user, name: 'type')
      MessageOriginType type,
      @JsonKey(required: true, name: 'date') int date,
      @JsonKey(name: 'sender_user') User senderUser});

  $UserCopyWith<$Res> get senderUser;
}

/// @nodoc
class __$$MessageOriginUserImplCopyWithImpl<$Res>
    extends _$MessageOriginCopyWithImpl<$Res, _$MessageOriginUserImpl>
    implements _$$MessageOriginUserImplCopyWith<$Res> {
  __$$MessageOriginUserImplCopyWithImpl(_$MessageOriginUserImpl _value,
      $Res Function(_$MessageOriginUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageOrigin
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? date = null,
    Object? senderUser = null,
  }) {
    return _then(_$MessageOriginUserImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MessageOriginType,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int,
      senderUser: null == senderUser
          ? _value.senderUser
          : senderUser // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  /// Create a copy of MessageOrigin
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get senderUser {
    return $UserCopyWith<$Res>(_value.senderUser, (value) {
      return _then(_value.copyWith(senderUser: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageOriginUserImpl implements MessageOriginUser {
  const _$MessageOriginUserImpl(
      {@JsonKey(defaultValue: MessageOriginType.user, name: 'type')
      this.type = MessageOriginType.user,
      @JsonKey(required: true, name: 'date') required this.date,
      @JsonKey(name: 'sender_user') required this.senderUser})
      : assert(type == MessageOriginType.user,
            'type must be MessageOriginType.user');

  factory _$MessageOriginUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageOriginUserImplFromJson(json);

  /// Type of the message origin, must be "user"
  @override
  @JsonKey(defaultValue: MessageOriginType.user, name: 'type')
  final MessageOriginType type;

  /// Date the message was sent originally in Unix time
  @override
  @JsonKey(required: true, name: 'date')
  final int date;

  /// User that sent the message originally
  @override
  @JsonKey(name: 'sender_user')
  final User senderUser;

  @override
  String toString() {
    return 'MessageOrigin.user(type: $type, date: $date, senderUser: $senderUser)';
  }

  /// Create a copy of MessageOrigin
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageOriginUserImplCopyWith<_$MessageOriginUserImpl> get copyWith =>
      __$$MessageOriginUserImplCopyWithImpl<_$MessageOriginUserImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessageOriginUser value) user,
    required TResult Function(MessageOriginHiddenUser value) hiddenUser,
    required TResult Function(MessageOriginChat value) chat,
    required TResult Function(MessageOriginChannel value) channel,
  }) {
    return user(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MessageOriginUser value)? user,
    TResult? Function(MessageOriginHiddenUser value)? hiddenUser,
    TResult? Function(MessageOriginChat value)? chat,
    TResult? Function(MessageOriginChannel value)? channel,
  }) {
    return user?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessageOriginUser value)? user,
    TResult Function(MessageOriginHiddenUser value)? hiddenUser,
    TResult Function(MessageOriginChat value)? chat,
    TResult Function(MessageOriginChannel value)? channel,
    required TResult orElse(),
  }) {
    if (user != null) {
      return user(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageOriginUserImplToJson(
      this,
    );
  }
}

abstract class MessageOriginUser implements MessageOrigin {
  const factory MessageOriginUser(
          {@JsonKey(defaultValue: MessageOriginType.user, name: 'type')
          final MessageOriginType type,
          @JsonKey(required: true, name: 'date') required final int date,
          @JsonKey(name: 'sender_user') required final User senderUser}) =
      _$MessageOriginUserImpl;

  factory MessageOriginUser.fromJson(Map<String, dynamic> json) =
      _$MessageOriginUserImpl.fromJson;

  /// Type of the message origin, must be "user"
  @override
  @JsonKey(defaultValue: MessageOriginType.user, name: 'type')
  MessageOriginType get type;

  /// Date the message was sent originally in Unix time
  @override
  @JsonKey(required: true, name: 'date')
  int get date;

  /// User that sent the message originally
  @JsonKey(name: 'sender_user')
  User get senderUser;

  /// Create a copy of MessageOrigin
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageOriginUserImplCopyWith<_$MessageOriginUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MessageOriginHiddenUserImplCopyWith<$Res>
    implements $MessageOriginCopyWith<$Res> {
  factory _$$MessageOriginHiddenUserImplCopyWith(
          _$MessageOriginHiddenUserImpl value,
          $Res Function(_$MessageOriginHiddenUserImpl) then) =
      __$$MessageOriginHiddenUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type', defaultValue: MessageOriginType.hiddenUser)
      MessageOriginType type,
      @JsonKey(name: 'date', required: true) int date,
      @JsonKey(name: 'sender_user_name') String senderUserName});
}

/// @nodoc
class __$$MessageOriginHiddenUserImplCopyWithImpl<$Res>
    extends _$MessageOriginCopyWithImpl<$Res, _$MessageOriginHiddenUserImpl>
    implements _$$MessageOriginHiddenUserImplCopyWith<$Res> {
  __$$MessageOriginHiddenUserImplCopyWithImpl(
      _$MessageOriginHiddenUserImpl _value,
      $Res Function(_$MessageOriginHiddenUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageOrigin
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? date = null,
    Object? senderUserName = null,
  }) {
    return _then(_$MessageOriginHiddenUserImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MessageOriginType,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int,
      senderUserName: null == senderUserName
          ? _value.senderUserName
          : senderUserName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageOriginHiddenUserImpl implements MessageOriginHiddenUser {
  const _$MessageOriginHiddenUserImpl(
      {@JsonKey(name: 'type', defaultValue: MessageOriginType.hiddenUser)
      this.type = MessageOriginType.hiddenUser,
      @JsonKey(name: 'date', required: true) required this.date,
      @JsonKey(name: 'sender_user_name') required this.senderUserName})
      : assert(type == MessageOriginType.hiddenUser,
            'type must be MessageOriginType.hiddenUser');

  factory _$MessageOriginHiddenUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageOriginHiddenUserImplFromJson(json);

  /// Type of the message origin, must be "hidden_user"
  @override
  @JsonKey(name: 'type', defaultValue: MessageOriginType.hiddenUser)
  final MessageOriginType type;

  /// Date the message was sent originally in Unix time
  @override
  @JsonKey(name: 'date', required: true)
  final int date;

  /// Name of the user that sent the message originally
  @override
  @JsonKey(name: 'sender_user_name')
  final String senderUserName;

  @override
  String toString() {
    return 'MessageOrigin.hiddenUser(type: $type, date: $date, senderUserName: $senderUserName)';
  }

  /// Create a copy of MessageOrigin
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageOriginHiddenUserImplCopyWith<_$MessageOriginHiddenUserImpl>
      get copyWith => __$$MessageOriginHiddenUserImplCopyWithImpl<
          _$MessageOriginHiddenUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessageOriginUser value) user,
    required TResult Function(MessageOriginHiddenUser value) hiddenUser,
    required TResult Function(MessageOriginChat value) chat,
    required TResult Function(MessageOriginChannel value) channel,
  }) {
    return hiddenUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MessageOriginUser value)? user,
    TResult? Function(MessageOriginHiddenUser value)? hiddenUser,
    TResult? Function(MessageOriginChat value)? chat,
    TResult? Function(MessageOriginChannel value)? channel,
  }) {
    return hiddenUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessageOriginUser value)? user,
    TResult Function(MessageOriginHiddenUser value)? hiddenUser,
    TResult Function(MessageOriginChat value)? chat,
    TResult Function(MessageOriginChannel value)? channel,
    required TResult orElse(),
  }) {
    if (hiddenUser != null) {
      return hiddenUser(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageOriginHiddenUserImplToJson(
      this,
    );
  }
}

abstract class MessageOriginHiddenUser implements MessageOrigin {
  const factory MessageOriginHiddenUser(
      {@JsonKey(name: 'type', defaultValue: MessageOriginType.hiddenUser)
      final MessageOriginType type,
      @JsonKey(name: 'date', required: true) required final int date,
      @JsonKey(name: 'sender_user_name')
      required final String senderUserName}) = _$MessageOriginHiddenUserImpl;

  factory MessageOriginHiddenUser.fromJson(Map<String, dynamic> json) =
      _$MessageOriginHiddenUserImpl.fromJson;

  /// Type of the message origin, must be "hidden_user"
  @override
  @JsonKey(name: 'type', defaultValue: MessageOriginType.hiddenUser)
  MessageOriginType get type;

  /// Date the message was sent originally in Unix time
  @override
  @JsonKey(name: 'date', required: true)
  int get date;

  /// Name of the user that sent the message originally
  @JsonKey(name: 'sender_user_name')
  String get senderUserName;

  /// Create a copy of MessageOrigin
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageOriginHiddenUserImplCopyWith<_$MessageOriginHiddenUserImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MessageOriginChatImplCopyWith<$Res>
    implements $MessageOriginCopyWith<$Res> {
  factory _$$MessageOriginChatImplCopyWith(_$MessageOriginChatImpl value,
          $Res Function(_$MessageOriginChatImpl) then) =
      __$$MessageOriginChatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type', defaultValue: MessageOriginType.chat)
      MessageOriginType type,
      @JsonKey(name: 'date', required: true) int date,
      @JsonKey(name: 'sender_chat') Chat senderChat,
      @JsonKey(name: 'author_signature') String? authorSignature});

  $ChatCopyWith<$Res> get senderChat;
}

/// @nodoc
class __$$MessageOriginChatImplCopyWithImpl<$Res>
    extends _$MessageOriginCopyWithImpl<$Res, _$MessageOriginChatImpl>
    implements _$$MessageOriginChatImplCopyWith<$Res> {
  __$$MessageOriginChatImplCopyWithImpl(_$MessageOriginChatImpl _value,
      $Res Function(_$MessageOriginChatImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageOrigin
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? date = null,
    Object? senderChat = null,
    Object? authorSignature = freezed,
  }) {
    return _then(_$MessageOriginChatImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MessageOriginType,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int,
      senderChat: null == senderChat
          ? _value.senderChat
          : senderChat // ignore: cast_nullable_to_non_nullable
              as Chat,
      authorSignature: freezed == authorSignature
          ? _value.authorSignature
          : authorSignature // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of MessageOrigin
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatCopyWith<$Res> get senderChat {
    return $ChatCopyWith<$Res>(_value.senderChat, (value) {
      return _then(_value.copyWith(senderChat: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageOriginChatImpl implements MessageOriginChat {
  const _$MessageOriginChatImpl(
      {@JsonKey(name: 'type', defaultValue: MessageOriginType.chat)
      this.type = MessageOriginType.chat,
      @JsonKey(name: 'date', required: true) required this.date,
      @JsonKey(name: 'sender_chat') required this.senderChat,
      @JsonKey(name: 'author_signature') this.authorSignature})
      : assert(type == MessageOriginType.chat,
            'type must be MessageOriginType.chat');

  factory _$MessageOriginChatImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageOriginChatImplFromJson(json);

  /// Type of the message origin, must be "chat"
  @override
  @JsonKey(name: 'type', defaultValue: MessageOriginType.chat)
  final MessageOriginType type;

  /// Date the message was sent originally in Unix time
  @override
  @JsonKey(name: 'date', required: true)
  final int date;

  /// Chat that sent the message originally
  @override
  @JsonKey(name: 'sender_chat')
  final Chat senderChat;

  /// For messages originally sent by an anonymous chat administrator,
  /// original message author signature
  @override
  @JsonKey(name: 'author_signature')
  final String? authorSignature;

  @override
  String toString() {
    return 'MessageOrigin.chat(type: $type, date: $date, senderChat: $senderChat, authorSignature: $authorSignature)';
  }

  /// Create a copy of MessageOrigin
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageOriginChatImplCopyWith<_$MessageOriginChatImpl> get copyWith =>
      __$$MessageOriginChatImplCopyWithImpl<_$MessageOriginChatImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessageOriginUser value) user,
    required TResult Function(MessageOriginHiddenUser value) hiddenUser,
    required TResult Function(MessageOriginChat value) chat,
    required TResult Function(MessageOriginChannel value) channel,
  }) {
    return chat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MessageOriginUser value)? user,
    TResult? Function(MessageOriginHiddenUser value)? hiddenUser,
    TResult? Function(MessageOriginChat value)? chat,
    TResult? Function(MessageOriginChannel value)? channel,
  }) {
    return chat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessageOriginUser value)? user,
    TResult Function(MessageOriginHiddenUser value)? hiddenUser,
    TResult Function(MessageOriginChat value)? chat,
    TResult Function(MessageOriginChannel value)? channel,
    required TResult orElse(),
  }) {
    if (chat != null) {
      return chat(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageOriginChatImplToJson(
      this,
    );
  }
}

abstract class MessageOriginChat implements MessageOrigin {
  const factory MessageOriginChat(
          {@JsonKey(name: 'type', defaultValue: MessageOriginType.chat)
          final MessageOriginType type,
          @JsonKey(name: 'date', required: true) required final int date,
          @JsonKey(name: 'sender_chat') required final Chat senderChat,
          @JsonKey(name: 'author_signature') final String? authorSignature}) =
      _$MessageOriginChatImpl;

  factory MessageOriginChat.fromJson(Map<String, dynamic> json) =
      _$MessageOriginChatImpl.fromJson;

  /// Type of the message origin, must be "chat"
  @override
  @JsonKey(name: 'type', defaultValue: MessageOriginType.chat)
  MessageOriginType get type;

  /// Date the message was sent originally in Unix time
  @override
  @JsonKey(name: 'date', required: true)
  int get date;

  /// Chat that sent the message originally
  @JsonKey(name: 'sender_chat')
  Chat get senderChat;

  /// For messages originally sent by an anonymous chat administrator,
  /// original message author signature
  @JsonKey(name: 'author_signature')
  String? get authorSignature;

  /// Create a copy of MessageOrigin
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageOriginChatImplCopyWith<_$MessageOriginChatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MessageOriginChannelImplCopyWith<$Res>
    implements $MessageOriginCopyWith<$Res> {
  factory _$$MessageOriginChannelImplCopyWith(_$MessageOriginChannelImpl value,
          $Res Function(_$MessageOriginChannelImpl) then) =
      __$$MessageOriginChannelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type', defaultValue: MessageOriginType.channel)
      MessageOriginType type,
      @JsonKey(name: 'date', required: true) int date,
      @JsonKey(name: 'chat') Chat chat,
      @JsonKey(name: 'message_id') int messageId,
      @JsonKey(name: 'author_signature') String? authorSignature});

  $ChatCopyWith<$Res> get chat;
}

/// @nodoc
class __$$MessageOriginChannelImplCopyWithImpl<$Res>
    extends _$MessageOriginCopyWithImpl<$Res, _$MessageOriginChannelImpl>
    implements _$$MessageOriginChannelImplCopyWith<$Res> {
  __$$MessageOriginChannelImplCopyWithImpl(_$MessageOriginChannelImpl _value,
      $Res Function(_$MessageOriginChannelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageOrigin
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? date = null,
    Object? chat = null,
    Object? messageId = null,
    Object? authorSignature = freezed,
  }) {
    return _then(_$MessageOriginChannelImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MessageOriginType,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int,
      chat: null == chat
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as Chat,
      messageId: null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as int,
      authorSignature: freezed == authorSignature
          ? _value.authorSignature
          : authorSignature // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of MessageOrigin
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatCopyWith<$Res> get chat {
    return $ChatCopyWith<$Res>(_value.chat, (value) {
      return _then(_value.copyWith(chat: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageOriginChannelImpl implements MessageOriginChannel {
  const _$MessageOriginChannelImpl(
      {@JsonKey(name: 'type', defaultValue: MessageOriginType.channel)
      this.type = MessageOriginType.channel,
      @JsonKey(name: 'date', required: true) required this.date,
      @JsonKey(name: 'chat') required this.chat,
      @JsonKey(name: 'message_id') required this.messageId,
      @JsonKey(name: 'author_signature') this.authorSignature})
      : assert(type == MessageOriginType.channel,
            'type must be MessageOriginType.channel');

  factory _$MessageOriginChannelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageOriginChannelImplFromJson(json);

  /// Type of the message origin, must be "channel"
  @override
  @JsonKey(name: 'type', defaultValue: MessageOriginType.channel)
  final MessageOriginType type;

  /// Date the message was sent originally in Unix time
  @override
  @JsonKey(name: 'date', required: true)
  final int date;

  /// Channel chat to which the message was originally sent
  @override
  @JsonKey(name: 'chat')
  final Chat chat;

  /// Unique message identifier inside the chat
  @override
  @JsonKey(name: 'message_id')
  final int messageId;

  /// Signature of the original post author
  @override
  @JsonKey(name: 'author_signature')
  final String? authorSignature;

  @override
  String toString() {
    return 'MessageOrigin.channel(type: $type, date: $date, chat: $chat, messageId: $messageId, authorSignature: $authorSignature)';
  }

  /// Create a copy of MessageOrigin
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageOriginChannelImplCopyWith<_$MessageOriginChannelImpl>
      get copyWith =>
          __$$MessageOriginChannelImplCopyWithImpl<_$MessageOriginChannelImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessageOriginUser value) user,
    required TResult Function(MessageOriginHiddenUser value) hiddenUser,
    required TResult Function(MessageOriginChat value) chat,
    required TResult Function(MessageOriginChannel value) channel,
  }) {
    return channel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MessageOriginUser value)? user,
    TResult? Function(MessageOriginHiddenUser value)? hiddenUser,
    TResult? Function(MessageOriginChat value)? chat,
    TResult? Function(MessageOriginChannel value)? channel,
  }) {
    return channel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessageOriginUser value)? user,
    TResult Function(MessageOriginHiddenUser value)? hiddenUser,
    TResult Function(MessageOriginChat value)? chat,
    TResult Function(MessageOriginChannel value)? channel,
    required TResult orElse(),
  }) {
    if (channel != null) {
      return channel(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageOriginChannelImplToJson(
      this,
    );
  }
}

abstract class MessageOriginChannel implements MessageOrigin {
  const factory MessageOriginChannel(
          {@JsonKey(name: 'type', defaultValue: MessageOriginType.channel)
          final MessageOriginType type,
          @JsonKey(name: 'date', required: true) required final int date,
          @JsonKey(name: 'chat') required final Chat chat,
          @JsonKey(name: 'message_id') required final int messageId,
          @JsonKey(name: 'author_signature') final String? authorSignature}) =
      _$MessageOriginChannelImpl;

  factory MessageOriginChannel.fromJson(Map<String, dynamic> json) =
      _$MessageOriginChannelImpl.fromJson;

  /// Type of the message origin, must be "channel"
  @override
  @JsonKey(name: 'type', defaultValue: MessageOriginType.channel)
  MessageOriginType get type;

  /// Date the message was sent originally in Unix time
  @override
  @JsonKey(name: 'date', required: true)
  int get date;

  /// Channel chat to which the message was originally sent
  @JsonKey(name: 'chat')
  Chat get chat;

  /// Unique message identifier inside the chat
  @JsonKey(name: 'message_id')
  int get messageId;

  /// Signature of the original post author
  @JsonKey(name: 'author_signature')
  String? get authorSignature;

  /// Create a copy of MessageOrigin
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageOriginChannelImplCopyWith<_$MessageOriginChannelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
