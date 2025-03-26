// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bot_command_scope.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
BotCommandScope _$BotCommandScopeFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'default_':
      return BotCommandScopeDefault.fromJson(json);
    case 'all_private_chats':
      return BotCommandScopeAllPrivateChats.fromJson(json);
    case 'all_group_chats':
      return BotCommandScopeAllGroupChats.fromJson(json);
    case 'all_chat_administrators':
      return BotCommandScopeAllChatAdministrators.fromJson(json);
    case 'chat':
      return BotCommandScopeChat.fromJson(json);
    case 'chat_administrators':
      return BotCommandScopeChatAdministrators.fromJson(json);
    case 'chat_member':
      return BotCommandScopeChatMember.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'BotCommandScope',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$BotCommandScope {
  /// Scope type, always be [BotCommandScopeType.default_]
  @JsonKey(name: 'type')
  BotCommandScopeType get type;

  /// Create a copy of BotCommandScope
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BotCommandScopeCopyWith<BotCommandScope> get copyWith =>
      _$BotCommandScopeCopyWithImpl<BotCommandScope>(
          this as BotCommandScope, _$identity);

  /// Serializes this BotCommandScope to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'BotCommandScope(type: $type)';
  }
}

/// @nodoc
abstract mixin class $BotCommandScopeCopyWith<$Res> {
  factory $BotCommandScopeCopyWith(
          BotCommandScope value, $Res Function(BotCommandScope) _then) =
      _$BotCommandScopeCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'type') BotCommandScopeType type});
}

/// @nodoc
class _$BotCommandScopeCopyWithImpl<$Res>
    implements $BotCommandScopeCopyWith<$Res> {
  _$BotCommandScopeCopyWithImpl(this._self, this._then);

  final BotCommandScope _self;
  final $Res Function(BotCommandScope) _then;

  /// Create a copy of BotCommandScope
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_self.copyWith(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as BotCommandScopeType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class BotCommandScopeDefault implements BotCommandScope {
  const BotCommandScopeDefault(
      {@JsonKey(name: 'type') this.type = BotCommandScopeType.default_});
  factory BotCommandScopeDefault.fromJson(Map<String, dynamic> json) =>
      _$BotCommandScopeDefaultFromJson(json);

  /// Scope type, always be [BotCommandScopeType.default_]
  @override
  @JsonKey(name: 'type')
  final BotCommandScopeType type;

  /// Create a copy of BotCommandScope
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BotCommandScopeDefaultCopyWith<BotCommandScopeDefault> get copyWith =>
      _$BotCommandScopeDefaultCopyWithImpl<BotCommandScopeDefault>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BotCommandScopeDefaultToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'BotCommandScope.default_(type: $type)';
  }
}

/// @nodoc
abstract mixin class $BotCommandScopeDefaultCopyWith<$Res>
    implements $BotCommandScopeCopyWith<$Res> {
  factory $BotCommandScopeDefaultCopyWith(BotCommandScopeDefault value,
          $Res Function(BotCommandScopeDefault) _then) =
      _$BotCommandScopeDefaultCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'type') BotCommandScopeType type});
}

/// @nodoc
class _$BotCommandScopeDefaultCopyWithImpl<$Res>
    implements $BotCommandScopeDefaultCopyWith<$Res> {
  _$BotCommandScopeDefaultCopyWithImpl(this._self, this._then);

  final BotCommandScopeDefault _self;
  final $Res Function(BotCommandScopeDefault) _then;

  /// Create a copy of BotCommandScope
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
  }) {
    return _then(BotCommandScopeDefault(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as BotCommandScopeType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class BotCommandScopeAllPrivateChats implements BotCommandScope {
  const BotCommandScopeAllPrivateChats(
      {@JsonKey(name: 'type') this.type = BotCommandScopeType.allPrivateChats});
  factory BotCommandScopeAllPrivateChats.fromJson(Map<String, dynamic> json) =>
      _$BotCommandScopeAllPrivateChatsFromJson(json);

  /// Scope type, always be [BotCommandScopeType.allPrivateChats]
  @override
  @JsonKey(name: 'type')
  final BotCommandScopeType type;

  /// Create a copy of BotCommandScope
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BotCommandScopeAllPrivateChatsCopyWith<BotCommandScopeAllPrivateChats>
      get copyWith => _$BotCommandScopeAllPrivateChatsCopyWithImpl<
          BotCommandScopeAllPrivateChats>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BotCommandScopeAllPrivateChatsToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'BotCommandScope.allPrivateChats(type: $type)';
  }
}

/// @nodoc
abstract mixin class $BotCommandScopeAllPrivateChatsCopyWith<$Res>
    implements $BotCommandScopeCopyWith<$Res> {
  factory $BotCommandScopeAllPrivateChatsCopyWith(
          BotCommandScopeAllPrivateChats value,
          $Res Function(BotCommandScopeAllPrivateChats) _then) =
      _$BotCommandScopeAllPrivateChatsCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'type') BotCommandScopeType type});
}

/// @nodoc
class _$BotCommandScopeAllPrivateChatsCopyWithImpl<$Res>
    implements $BotCommandScopeAllPrivateChatsCopyWith<$Res> {
  _$BotCommandScopeAllPrivateChatsCopyWithImpl(this._self, this._then);

  final BotCommandScopeAllPrivateChats _self;
  final $Res Function(BotCommandScopeAllPrivateChats) _then;

  /// Create a copy of BotCommandScope
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
  }) {
    return _then(BotCommandScopeAllPrivateChats(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as BotCommandScopeType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class BotCommandScopeAllGroupChats implements BotCommandScope {
  const BotCommandScopeAllGroupChats(
      {this.type = BotCommandScopeType.allGroupChats});
  factory BotCommandScopeAllGroupChats.fromJson(Map<String, dynamic> json) =>
      _$BotCommandScopeAllGroupChatsFromJson(json);

  /// Scope type, always be [BotCommandScopeType.allGroupChats]
  @override
  @JsonKey()
  final BotCommandScopeType type;

  /// Create a copy of BotCommandScope
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BotCommandScopeAllGroupChatsCopyWith<BotCommandScopeAllGroupChats>
      get copyWith => _$BotCommandScopeAllGroupChatsCopyWithImpl<
          BotCommandScopeAllGroupChats>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BotCommandScopeAllGroupChatsToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'BotCommandScope.allGroupChats(type: $type)';
  }
}

/// @nodoc
abstract mixin class $BotCommandScopeAllGroupChatsCopyWith<$Res>
    implements $BotCommandScopeCopyWith<$Res> {
  factory $BotCommandScopeAllGroupChatsCopyWith(
          BotCommandScopeAllGroupChats value,
          $Res Function(BotCommandScopeAllGroupChats) _then) =
      _$BotCommandScopeAllGroupChatsCopyWithImpl;
  @override
  @useResult
  $Res call({BotCommandScopeType type});
}

/// @nodoc
class _$BotCommandScopeAllGroupChatsCopyWithImpl<$Res>
    implements $BotCommandScopeAllGroupChatsCopyWith<$Res> {
  _$BotCommandScopeAllGroupChatsCopyWithImpl(this._self, this._then);

  final BotCommandScopeAllGroupChats _self;
  final $Res Function(BotCommandScopeAllGroupChats) _then;

  /// Create a copy of BotCommandScope
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
  }) {
    return _then(BotCommandScopeAllGroupChats(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as BotCommandScopeType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class BotCommandScopeAllChatAdministrators implements BotCommandScope {
  const BotCommandScopeAllChatAdministrators(
      {@JsonKey(name: 'type')
      this.type = BotCommandScopeType.allChatAdministrators});
  factory BotCommandScopeAllChatAdministrators.fromJson(
          Map<String, dynamic> json) =>
      _$BotCommandScopeAllChatAdministratorsFromJson(json);

  /// Scope type, always be [BotCommandScopeType.allChatAdministrators]
  @override
  @JsonKey(name: 'type')
  final BotCommandScopeType type;

  /// Create a copy of BotCommandScope
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BotCommandScopeAllChatAdministratorsCopyWith<
          BotCommandScopeAllChatAdministrators>
      get copyWith => _$BotCommandScopeAllChatAdministratorsCopyWithImpl<
          BotCommandScopeAllChatAdministrators>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BotCommandScopeAllChatAdministratorsToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'BotCommandScope.allChatAdministrators(type: $type)';
  }
}

/// @nodoc
abstract mixin class $BotCommandScopeAllChatAdministratorsCopyWith<$Res>
    implements $BotCommandScopeCopyWith<$Res> {
  factory $BotCommandScopeAllChatAdministratorsCopyWith(
          BotCommandScopeAllChatAdministrators value,
          $Res Function(BotCommandScopeAllChatAdministrators) _then) =
      _$BotCommandScopeAllChatAdministratorsCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'type') BotCommandScopeType type});
}

/// @nodoc
class _$BotCommandScopeAllChatAdministratorsCopyWithImpl<$Res>
    implements $BotCommandScopeAllChatAdministratorsCopyWith<$Res> {
  _$BotCommandScopeAllChatAdministratorsCopyWithImpl(this._self, this._then);

  final BotCommandScopeAllChatAdministrators _self;
  final $Res Function(BotCommandScopeAllChatAdministrators) _then;

  /// Create a copy of BotCommandScope
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
  }) {
    return _then(BotCommandScopeAllChatAdministrators(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as BotCommandScopeType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class BotCommandScopeChat implements BotCommandScope {
  const BotCommandScopeChat(
      {@JsonKey(name: 'type') this.type = BotCommandScopeType.chat,
      @JsonKey(name: 'chat_id') @IDConverter() required this.chatId});
  factory BotCommandScopeChat.fromJson(Map<String, dynamic> json) =>
      _$BotCommandScopeChatFromJson(json);

  /// Scope type, always be [BotCommandScopeType.chat]
  @override
  @JsonKey(name: 'type')
  final BotCommandScopeType type;

  /// Unique identifier for the target chat or username of the target supergroup (in the format @supergroupusername)
  @JsonKey(name: 'chat_id')
  @IDConverter()
  final ID chatId;

  /// Create a copy of BotCommandScope
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BotCommandScopeChatCopyWith<BotCommandScopeChat> get copyWith =>
      _$BotCommandScopeChatCopyWithImpl<BotCommandScopeChat>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BotCommandScopeChatToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'BotCommandScope.chat(type: $type, chatId: $chatId)';
  }
}

/// @nodoc
abstract mixin class $BotCommandScopeChatCopyWith<$Res>
    implements $BotCommandScopeCopyWith<$Res> {
  factory $BotCommandScopeChatCopyWith(
          BotCommandScopeChat value, $Res Function(BotCommandScopeChat) _then) =
      _$BotCommandScopeChatCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') BotCommandScopeType type,
      @JsonKey(name: 'chat_id') @IDConverter() ID chatId});
}

/// @nodoc
class _$BotCommandScopeChatCopyWithImpl<$Res>
    implements $BotCommandScopeChatCopyWith<$Res> {
  _$BotCommandScopeChatCopyWithImpl(this._self, this._then);

  final BotCommandScopeChat _self;
  final $Res Function(BotCommandScopeChat) _then;

  /// Create a copy of BotCommandScope
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? chatId = null,
  }) {
    return _then(BotCommandScopeChat(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as BotCommandScopeType,
      chatId: null == chatId
          ? _self.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as ID,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class BotCommandScopeChatAdministrators implements BotCommandScope {
  const BotCommandScopeChatAdministrators(
      {@JsonKey(name: 'type')
      this.type = BotCommandScopeType.chatAdministrators,
      @JsonKey(name: 'chat_id') @IDConverter() required this.chatId});
  factory BotCommandScopeChatAdministrators.fromJson(
          Map<String, dynamic> json) =>
      _$BotCommandScopeChatAdministratorsFromJson(json);

  /// Scope type, always be [BotCommandScopeType.chatAdministrators]
  @override
  @JsonKey(name: 'type')
  final BotCommandScopeType type;

  /// Unique identifier for the target chat or username of the target supergroup (in the format @supergroupusername)
  @JsonKey(name: 'chat_id')
  @IDConverter()
  final ID chatId;

  /// Create a copy of BotCommandScope
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BotCommandScopeChatAdministratorsCopyWith<BotCommandScopeChatAdministrators>
      get copyWith => _$BotCommandScopeChatAdministratorsCopyWithImpl<
          BotCommandScopeChatAdministrators>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BotCommandScopeChatAdministratorsToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'BotCommandScope.chatAdministrators(type: $type, chatId: $chatId)';
  }
}

/// @nodoc
abstract mixin class $BotCommandScopeChatAdministratorsCopyWith<$Res>
    implements $BotCommandScopeCopyWith<$Res> {
  factory $BotCommandScopeChatAdministratorsCopyWith(
          BotCommandScopeChatAdministrators value,
          $Res Function(BotCommandScopeChatAdministrators) _then) =
      _$BotCommandScopeChatAdministratorsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') BotCommandScopeType type,
      @JsonKey(name: 'chat_id') @IDConverter() ID chatId});
}

/// @nodoc
class _$BotCommandScopeChatAdministratorsCopyWithImpl<$Res>
    implements $BotCommandScopeChatAdministratorsCopyWith<$Res> {
  _$BotCommandScopeChatAdministratorsCopyWithImpl(this._self, this._then);

  final BotCommandScopeChatAdministrators _self;
  final $Res Function(BotCommandScopeChatAdministrators) _then;

  /// Create a copy of BotCommandScope
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? chatId = null,
  }) {
    return _then(BotCommandScopeChatAdministrators(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as BotCommandScopeType,
      chatId: null == chatId
          ? _self.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as ID,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class BotCommandScopeChatMember implements BotCommandScope {
  const BotCommandScopeChatMember(
      {@JsonKey(name: 'type') this.type = BotCommandScopeType.chatMember,
      @JsonKey(name: 'chat_id') @IDConverter() required this.chatId,
      @JsonKey(name: 'user_id') required this.userId});
  factory BotCommandScopeChatMember.fromJson(Map<String, dynamic> json) =>
      _$BotCommandScopeChatMemberFromJson(json);

  /// Scope type, always be [BotCommandScopeType.chatMember]
  @override
  @JsonKey(name: 'type')
  final BotCommandScopeType type;

  /// Unique identifier for the target chat or username of the target supergroup (in the format @supergroupusername)
  @JsonKey(name: 'chat_id')
  @IDConverter()
  final ID chatId;

  /// Unique identifier of the target user
  @JsonKey(name: 'user_id')
  final int userId;

  /// Create a copy of BotCommandScope
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BotCommandScopeChatMemberCopyWith<BotCommandScopeChatMember> get copyWith =>
      _$BotCommandScopeChatMemberCopyWithImpl<BotCommandScopeChatMember>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BotCommandScopeChatMemberToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'BotCommandScope.chatMember(type: $type, chatId: $chatId, userId: $userId)';
  }
}

/// @nodoc
abstract mixin class $BotCommandScopeChatMemberCopyWith<$Res>
    implements $BotCommandScopeCopyWith<$Res> {
  factory $BotCommandScopeChatMemberCopyWith(BotCommandScopeChatMember value,
          $Res Function(BotCommandScopeChatMember) _then) =
      _$BotCommandScopeChatMemberCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') BotCommandScopeType type,
      @JsonKey(name: 'chat_id') @IDConverter() ID chatId,
      @JsonKey(name: 'user_id') int userId});
}

/// @nodoc
class _$BotCommandScopeChatMemberCopyWithImpl<$Res>
    implements $BotCommandScopeChatMemberCopyWith<$Res> {
  _$BotCommandScopeChatMemberCopyWithImpl(this._self, this._then);

  final BotCommandScopeChatMember _self;
  final $Res Function(BotCommandScopeChatMember) _then;

  /// Create a copy of BotCommandScope
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? chatId = null,
    Object? userId = null,
  }) {
    return _then(BotCommandScopeChatMember(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as BotCommandScopeType,
      chatId: null == chatId
          ? _self.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as ID,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}
