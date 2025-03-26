// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_origin.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
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
  @JsonKey(name: 'type', defaultValue: MessageOriginType.hiddenUser)
  @JsonKey(name: 'type', defaultValue: MessageOriginType.chat)
  @JsonKey(name: 'type', defaultValue: MessageOriginType.channel)
  MessageOriginType get type;

  /// Date the message was sent originally in Unix time
  @JsonKey(required: true, name: 'date')
  @JsonKey(name: 'date', required: true)
  int get date;

  /// Create a copy of MessageOrigin
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MessageOriginCopyWith<MessageOrigin> get copyWith =>
      _$MessageOriginCopyWithImpl<MessageOrigin>(
          this as MessageOrigin, _$identity);

  /// Serializes this MessageOrigin to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'MessageOrigin(type: $type, date: $date)';
  }
}

/// @nodoc
abstract mixin class $MessageOriginCopyWith<$Res> {
  factory $MessageOriginCopyWith(
          MessageOrigin value, $Res Function(MessageOrigin) _then) =
      _$MessageOriginCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(defaultValue: MessageOriginType.user, name: 'type')
      MessageOriginType type,
      @JsonKey(required: true, name: 'date') int date});
}

/// @nodoc
class _$MessageOriginCopyWithImpl<$Res>
    implements $MessageOriginCopyWith<$Res> {
  _$MessageOriginCopyWithImpl(this._self, this._then);

  final MessageOrigin _self;
  final $Res Function(MessageOrigin) _then;

  /// Create a copy of MessageOrigin
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? date = null,
  }) {
    return _then(_self.copyWith(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as MessageOriginType,
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class MessageOriginUser implements MessageOrigin {
  const MessageOriginUser(
      {@JsonKey(defaultValue: MessageOriginType.user, name: 'type')
      this.type = MessageOriginType.user,
      @JsonKey(required: true, name: 'date') required this.date,
      @JsonKey(name: 'sender_user') required this.senderUser})
      : assert(type == MessageOriginType.user,
            'type must be MessageOriginType.user');
  factory MessageOriginUser.fromJson(Map<String, dynamic> json) =>
      _$MessageOriginUserFromJson(json);

  /// Type of the message origin, must be "user"
  @override
  @JsonKey(defaultValue: MessageOriginType.user, name: 'type')
  final MessageOriginType type;

  /// Date the message was sent originally in Unix time
  @override
  @JsonKey(required: true, name: 'date')
  final int date;

  /// User that sent the message originally
  @JsonKey(name: 'sender_user')
  final User senderUser;

  /// Create a copy of MessageOrigin
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MessageOriginUserCopyWith<MessageOriginUser> get copyWith =>
      _$MessageOriginUserCopyWithImpl<MessageOriginUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MessageOriginUserToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'MessageOrigin.user(type: $type, date: $date, senderUser: $senderUser)';
  }
}

/// @nodoc
abstract mixin class $MessageOriginUserCopyWith<$Res>
    implements $MessageOriginCopyWith<$Res> {
  factory $MessageOriginUserCopyWith(
          MessageOriginUser value, $Res Function(MessageOriginUser) _then) =
      _$MessageOriginUserCopyWithImpl;
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
class _$MessageOriginUserCopyWithImpl<$Res>
    implements $MessageOriginUserCopyWith<$Res> {
  _$MessageOriginUserCopyWithImpl(this._self, this._then);

  final MessageOriginUser _self;
  final $Res Function(MessageOriginUser) _then;

  /// Create a copy of MessageOrigin
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? date = null,
    Object? senderUser = null,
  }) {
    return _then(MessageOriginUser(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as MessageOriginType,
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as int,
      senderUser: null == senderUser
          ? _self.senderUser
          : senderUser // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  /// Create a copy of MessageOrigin
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get senderUser {
    return $UserCopyWith<$Res>(_self.senderUser, (value) {
      return _then(_self.copyWith(senderUser: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class MessageOriginHiddenUser implements MessageOrigin {
  const MessageOriginHiddenUser(
      {@JsonKey(name: 'type', defaultValue: MessageOriginType.hiddenUser)
      this.type = MessageOriginType.hiddenUser,
      @JsonKey(name: 'date', required: true) required this.date,
      @JsonKey(name: 'sender_user_name') required this.senderUserName})
      : assert(type == MessageOriginType.hiddenUser,
            'type must be MessageOriginType.hiddenUser');
  factory MessageOriginHiddenUser.fromJson(Map<String, dynamic> json) =>
      _$MessageOriginHiddenUserFromJson(json);

  /// Type of the message origin, must be "hidden_user"
  @override
  @JsonKey(name: 'type', defaultValue: MessageOriginType.hiddenUser)
  final MessageOriginType type;

  /// Date the message was sent originally in Unix time
  @override
  @JsonKey(name: 'date', required: true)
  final int date;

  /// Name of the user that sent the message originally
  @JsonKey(name: 'sender_user_name')
  final String senderUserName;

  /// Create a copy of MessageOrigin
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MessageOriginHiddenUserCopyWith<MessageOriginHiddenUser> get copyWith =>
      _$MessageOriginHiddenUserCopyWithImpl<MessageOriginHiddenUser>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MessageOriginHiddenUserToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'MessageOrigin.hiddenUser(type: $type, date: $date, senderUserName: $senderUserName)';
  }
}

/// @nodoc
abstract mixin class $MessageOriginHiddenUserCopyWith<$Res>
    implements $MessageOriginCopyWith<$Res> {
  factory $MessageOriginHiddenUserCopyWith(MessageOriginHiddenUser value,
          $Res Function(MessageOriginHiddenUser) _then) =
      _$MessageOriginHiddenUserCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type', defaultValue: MessageOriginType.hiddenUser)
      MessageOriginType type,
      @JsonKey(name: 'date', required: true) int date,
      @JsonKey(name: 'sender_user_name') String senderUserName});
}

/// @nodoc
class _$MessageOriginHiddenUserCopyWithImpl<$Res>
    implements $MessageOriginHiddenUserCopyWith<$Res> {
  _$MessageOriginHiddenUserCopyWithImpl(this._self, this._then);

  final MessageOriginHiddenUser _self;
  final $Res Function(MessageOriginHiddenUser) _then;

  /// Create a copy of MessageOrigin
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? date = null,
    Object? senderUserName = null,
  }) {
    return _then(MessageOriginHiddenUser(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as MessageOriginType,
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as int,
      senderUserName: null == senderUserName
          ? _self.senderUserName
          : senderUserName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class MessageOriginChat implements MessageOrigin {
  const MessageOriginChat(
      {@JsonKey(name: 'type', defaultValue: MessageOriginType.chat)
      this.type = MessageOriginType.chat,
      @JsonKey(name: 'date', required: true) required this.date,
      @JsonKey(name: 'sender_chat') required this.senderChat,
      @JsonKey(name: 'author_signature') this.authorSignature})
      : assert(type == MessageOriginType.chat,
            'type must be MessageOriginType.chat');
  factory MessageOriginChat.fromJson(Map<String, dynamic> json) =>
      _$MessageOriginChatFromJson(json);

  /// Type of the message origin, must be "chat"
  @override
  @JsonKey(name: 'type', defaultValue: MessageOriginType.chat)
  final MessageOriginType type;

  /// Date the message was sent originally in Unix time
  @override
  @JsonKey(name: 'date', required: true)
  final int date;

  /// Chat that sent the message originally
  @JsonKey(name: 'sender_chat')
  final Chat senderChat;

  /// For messages originally sent by an anonymous chat administrator,
  /// original message author signature
  @JsonKey(name: 'author_signature')
  final String? authorSignature;

  /// Create a copy of MessageOrigin
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MessageOriginChatCopyWith<MessageOriginChat> get copyWith =>
      _$MessageOriginChatCopyWithImpl<MessageOriginChat>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MessageOriginChatToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'MessageOrigin.chat(type: $type, date: $date, senderChat: $senderChat, authorSignature: $authorSignature)';
  }
}

/// @nodoc
abstract mixin class $MessageOriginChatCopyWith<$Res>
    implements $MessageOriginCopyWith<$Res> {
  factory $MessageOriginChatCopyWith(
          MessageOriginChat value, $Res Function(MessageOriginChat) _then) =
      _$MessageOriginChatCopyWithImpl;
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
class _$MessageOriginChatCopyWithImpl<$Res>
    implements $MessageOriginChatCopyWith<$Res> {
  _$MessageOriginChatCopyWithImpl(this._self, this._then);

  final MessageOriginChat _self;
  final $Res Function(MessageOriginChat) _then;

  /// Create a copy of MessageOrigin
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? date = null,
    Object? senderChat = null,
    Object? authorSignature = freezed,
  }) {
    return _then(MessageOriginChat(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as MessageOriginType,
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as int,
      senderChat: null == senderChat
          ? _self.senderChat
          : senderChat // ignore: cast_nullable_to_non_nullable
              as Chat,
      authorSignature: freezed == authorSignature
          ? _self.authorSignature
          : authorSignature // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of MessageOrigin
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatCopyWith<$Res> get senderChat {
    return $ChatCopyWith<$Res>(_self.senderChat, (value) {
      return _then(_self.copyWith(senderChat: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class MessageOriginChannel implements MessageOrigin {
  const MessageOriginChannel(
      {@JsonKey(name: 'type', defaultValue: MessageOriginType.channel)
      this.type = MessageOriginType.channel,
      @JsonKey(name: 'date', required: true) required this.date,
      @JsonKey(name: 'chat') required this.chat,
      @JsonKey(name: 'message_id') required this.messageId,
      @JsonKey(name: 'author_signature') this.authorSignature})
      : assert(type == MessageOriginType.channel,
            'type must be MessageOriginType.channel');
  factory MessageOriginChannel.fromJson(Map<String, dynamic> json) =>
      _$MessageOriginChannelFromJson(json);

  /// Type of the message origin, must be "channel"
  @override
  @JsonKey(name: 'type', defaultValue: MessageOriginType.channel)
  final MessageOriginType type;

  /// Date the message was sent originally in Unix time
  @override
  @JsonKey(name: 'date', required: true)
  final int date;

  /// Channel chat to which the message was originally sent
  @JsonKey(name: 'chat')
  final Chat chat;

  /// Unique message identifier inside the chat
  @JsonKey(name: 'message_id')
  final int messageId;

  /// Signature of the original post author
  @JsonKey(name: 'author_signature')
  final String? authorSignature;

  /// Create a copy of MessageOrigin
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MessageOriginChannelCopyWith<MessageOriginChannel> get copyWith =>
      _$MessageOriginChannelCopyWithImpl<MessageOriginChannel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MessageOriginChannelToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'MessageOrigin.channel(type: $type, date: $date, chat: $chat, messageId: $messageId, authorSignature: $authorSignature)';
  }
}

/// @nodoc
abstract mixin class $MessageOriginChannelCopyWith<$Res>
    implements $MessageOriginCopyWith<$Res> {
  factory $MessageOriginChannelCopyWith(MessageOriginChannel value,
          $Res Function(MessageOriginChannel) _then) =
      _$MessageOriginChannelCopyWithImpl;
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
class _$MessageOriginChannelCopyWithImpl<$Res>
    implements $MessageOriginChannelCopyWith<$Res> {
  _$MessageOriginChannelCopyWithImpl(this._self, this._then);

  final MessageOriginChannel _self;
  final $Res Function(MessageOriginChannel) _then;

  /// Create a copy of MessageOrigin
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? date = null,
    Object? chat = null,
    Object? messageId = null,
    Object? authorSignature = freezed,
  }) {
    return _then(MessageOriginChannel(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as MessageOriginType,
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as int,
      chat: null == chat
          ? _self.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as Chat,
      messageId: null == messageId
          ? _self.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as int,
      authorSignature: freezed == authorSignature
          ? _self.authorSignature
          : authorSignature // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of MessageOrigin
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatCopyWith<$Res> get chat {
    return $ChatCopyWith<$Res>(_self.chat, (value) {
      return _then(_self.copyWith(chat: value));
    });
  }
}
