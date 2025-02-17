// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bot_command_scope.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
  BotCommandScopeType get type => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BotCommandScopeDefault value) default_,
    required TResult Function(BotCommandScopeAllPrivateChats value)
        allPrivateChats,
    required TResult Function(BotCommandScopeAllGroupChats value) allGroupChats,
    required TResult Function(BotCommandScopeAllChatAdministrators value)
        allChatAdministrators,
    required TResult Function(BotCommandScopeChat value) chat,
    required TResult Function(BotCommandScopeChatAdministrators value)
        chatAdministrators,
    required TResult Function(BotCommandScopeChatMember value) chatMember,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BotCommandScopeDefault value)? default_,
    TResult? Function(BotCommandScopeAllPrivateChats value)? allPrivateChats,
    TResult? Function(BotCommandScopeAllGroupChats value)? allGroupChats,
    TResult? Function(BotCommandScopeAllChatAdministrators value)?
        allChatAdministrators,
    TResult? Function(BotCommandScopeChat value)? chat,
    TResult? Function(BotCommandScopeChatAdministrators value)?
        chatAdministrators,
    TResult? Function(BotCommandScopeChatMember value)? chatMember,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BotCommandScopeDefault value)? default_,
    TResult Function(BotCommandScopeAllPrivateChats value)? allPrivateChats,
    TResult Function(BotCommandScopeAllGroupChats value)? allGroupChats,
    TResult Function(BotCommandScopeAllChatAdministrators value)?
        allChatAdministrators,
    TResult Function(BotCommandScopeChat value)? chat,
    TResult Function(BotCommandScopeChatAdministrators value)?
        chatAdministrators,
    TResult Function(BotCommandScopeChatMember value)? chatMember,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BotCommandScope to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BotCommandScope
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BotCommandScopeCopyWith<BotCommandScope> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BotCommandScopeCopyWith<$Res> {
  factory $BotCommandScopeCopyWith(
          BotCommandScope value, $Res Function(BotCommandScope) then) =
      _$BotCommandScopeCopyWithImpl<$Res, BotCommandScope>;
  @useResult
  $Res call({BotCommandScopeType type});
}

/// @nodoc
class _$BotCommandScopeCopyWithImpl<$Res, $Val extends BotCommandScope>
    implements $BotCommandScopeCopyWith<$Res> {
  _$BotCommandScopeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BotCommandScope
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as BotCommandScopeType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BotCommandScopeDefaultImplCopyWith<$Res>
    implements $BotCommandScopeCopyWith<$Res> {
  factory _$$BotCommandScopeDefaultImplCopyWith(
          _$BotCommandScopeDefaultImpl value,
          $Res Function(_$BotCommandScopeDefaultImpl) then) =
      __$$BotCommandScopeDefaultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BotCommandScopeType type});
}

/// @nodoc
class __$$BotCommandScopeDefaultImplCopyWithImpl<$Res>
    extends _$BotCommandScopeCopyWithImpl<$Res, _$BotCommandScopeDefaultImpl>
    implements _$$BotCommandScopeDefaultImplCopyWith<$Res> {
  __$$BotCommandScopeDefaultImplCopyWithImpl(
      _$BotCommandScopeDefaultImpl _value,
      $Res Function(_$BotCommandScopeDefaultImpl) _then)
      : super(_value, _then);

  /// Create a copy of BotCommandScope
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$BotCommandScopeDefaultImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as BotCommandScopeType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BotCommandScopeDefaultImpl implements BotCommandScopeDefault {
  const _$BotCommandScopeDefaultImpl(
      {this.type = BotCommandScopeType.default_});

  factory _$BotCommandScopeDefaultImpl.fromJson(Map<String, dynamic> json) =>
      _$$BotCommandScopeDefaultImplFromJson(json);

  /// Scope type, always be [BotCommandScopeType.default_]
  @override
  @JsonKey()
  final BotCommandScopeType type;

  @override
  String toString() {
    return 'BotCommandScope.default_(type: $type)';
  }

  /// Create a copy of BotCommandScope
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BotCommandScopeDefaultImplCopyWith<_$BotCommandScopeDefaultImpl>
      get copyWith => __$$BotCommandScopeDefaultImplCopyWithImpl<
          _$BotCommandScopeDefaultImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BotCommandScopeDefault value) default_,
    required TResult Function(BotCommandScopeAllPrivateChats value)
        allPrivateChats,
    required TResult Function(BotCommandScopeAllGroupChats value) allGroupChats,
    required TResult Function(BotCommandScopeAllChatAdministrators value)
        allChatAdministrators,
    required TResult Function(BotCommandScopeChat value) chat,
    required TResult Function(BotCommandScopeChatAdministrators value)
        chatAdministrators,
    required TResult Function(BotCommandScopeChatMember value) chatMember,
  }) {
    return default_(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BotCommandScopeDefault value)? default_,
    TResult? Function(BotCommandScopeAllPrivateChats value)? allPrivateChats,
    TResult? Function(BotCommandScopeAllGroupChats value)? allGroupChats,
    TResult? Function(BotCommandScopeAllChatAdministrators value)?
        allChatAdministrators,
    TResult? Function(BotCommandScopeChat value)? chat,
    TResult? Function(BotCommandScopeChatAdministrators value)?
        chatAdministrators,
    TResult? Function(BotCommandScopeChatMember value)? chatMember,
  }) {
    return default_?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BotCommandScopeDefault value)? default_,
    TResult Function(BotCommandScopeAllPrivateChats value)? allPrivateChats,
    TResult Function(BotCommandScopeAllGroupChats value)? allGroupChats,
    TResult Function(BotCommandScopeAllChatAdministrators value)?
        allChatAdministrators,
    TResult Function(BotCommandScopeChat value)? chat,
    TResult Function(BotCommandScopeChatAdministrators value)?
        chatAdministrators,
    TResult Function(BotCommandScopeChatMember value)? chatMember,
    required TResult orElse(),
  }) {
    if (default_ != null) {
      return default_(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BotCommandScopeDefaultImplToJson(
      this,
    );
  }
}

abstract class BotCommandScopeDefault implements BotCommandScope {
  const factory BotCommandScopeDefault({final BotCommandScopeType type}) =
      _$BotCommandScopeDefaultImpl;

  factory BotCommandScopeDefault.fromJson(Map<String, dynamic> json) =
      _$BotCommandScopeDefaultImpl.fromJson;

  /// Scope type, always be [BotCommandScopeType.default_]
  @override
  BotCommandScopeType get type;

  /// Create a copy of BotCommandScope
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BotCommandScopeDefaultImplCopyWith<_$BotCommandScopeDefaultImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BotCommandScopeAllPrivateChatsImplCopyWith<$Res>
    implements $BotCommandScopeCopyWith<$Res> {
  factory _$$BotCommandScopeAllPrivateChatsImplCopyWith(
          _$BotCommandScopeAllPrivateChatsImpl value,
          $Res Function(_$BotCommandScopeAllPrivateChatsImpl) then) =
      __$$BotCommandScopeAllPrivateChatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BotCommandScopeType type});
}

/// @nodoc
class __$$BotCommandScopeAllPrivateChatsImplCopyWithImpl<$Res>
    extends _$BotCommandScopeCopyWithImpl<$Res,
        _$BotCommandScopeAllPrivateChatsImpl>
    implements _$$BotCommandScopeAllPrivateChatsImplCopyWith<$Res> {
  __$$BotCommandScopeAllPrivateChatsImplCopyWithImpl(
      _$BotCommandScopeAllPrivateChatsImpl _value,
      $Res Function(_$BotCommandScopeAllPrivateChatsImpl) _then)
      : super(_value, _then);

  /// Create a copy of BotCommandScope
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$BotCommandScopeAllPrivateChatsImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as BotCommandScopeType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BotCommandScopeAllPrivateChatsImpl
    implements BotCommandScopeAllPrivateChats {
  const _$BotCommandScopeAllPrivateChatsImpl(
      {this.type = BotCommandScopeType.allPrivateChats});

  factory _$BotCommandScopeAllPrivateChatsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BotCommandScopeAllPrivateChatsImplFromJson(json);

  /// Scope type, always be [BotCommandScopeType.allPrivateChats]
  @override
  @JsonKey()
  final BotCommandScopeType type;

  @override
  String toString() {
    return 'BotCommandScope.allPrivateChats(type: $type)';
  }

  /// Create a copy of BotCommandScope
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BotCommandScopeAllPrivateChatsImplCopyWith<
          _$BotCommandScopeAllPrivateChatsImpl>
      get copyWith => __$$BotCommandScopeAllPrivateChatsImplCopyWithImpl<
          _$BotCommandScopeAllPrivateChatsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BotCommandScopeDefault value) default_,
    required TResult Function(BotCommandScopeAllPrivateChats value)
        allPrivateChats,
    required TResult Function(BotCommandScopeAllGroupChats value) allGroupChats,
    required TResult Function(BotCommandScopeAllChatAdministrators value)
        allChatAdministrators,
    required TResult Function(BotCommandScopeChat value) chat,
    required TResult Function(BotCommandScopeChatAdministrators value)
        chatAdministrators,
    required TResult Function(BotCommandScopeChatMember value) chatMember,
  }) {
    return allPrivateChats(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BotCommandScopeDefault value)? default_,
    TResult? Function(BotCommandScopeAllPrivateChats value)? allPrivateChats,
    TResult? Function(BotCommandScopeAllGroupChats value)? allGroupChats,
    TResult? Function(BotCommandScopeAllChatAdministrators value)?
        allChatAdministrators,
    TResult? Function(BotCommandScopeChat value)? chat,
    TResult? Function(BotCommandScopeChatAdministrators value)?
        chatAdministrators,
    TResult? Function(BotCommandScopeChatMember value)? chatMember,
  }) {
    return allPrivateChats?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BotCommandScopeDefault value)? default_,
    TResult Function(BotCommandScopeAllPrivateChats value)? allPrivateChats,
    TResult Function(BotCommandScopeAllGroupChats value)? allGroupChats,
    TResult Function(BotCommandScopeAllChatAdministrators value)?
        allChatAdministrators,
    TResult Function(BotCommandScopeChat value)? chat,
    TResult Function(BotCommandScopeChatAdministrators value)?
        chatAdministrators,
    TResult Function(BotCommandScopeChatMember value)? chatMember,
    required TResult orElse(),
  }) {
    if (allPrivateChats != null) {
      return allPrivateChats(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BotCommandScopeAllPrivateChatsImplToJson(
      this,
    );
  }
}

abstract class BotCommandScopeAllPrivateChats implements BotCommandScope {
  const factory BotCommandScopeAllPrivateChats(
      {final BotCommandScopeType type}) = _$BotCommandScopeAllPrivateChatsImpl;

  factory BotCommandScopeAllPrivateChats.fromJson(Map<String, dynamic> json) =
      _$BotCommandScopeAllPrivateChatsImpl.fromJson;

  /// Scope type, always be [BotCommandScopeType.allPrivateChats]
  @override
  BotCommandScopeType get type;

  /// Create a copy of BotCommandScope
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BotCommandScopeAllPrivateChatsImplCopyWith<
          _$BotCommandScopeAllPrivateChatsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BotCommandScopeAllGroupChatsImplCopyWith<$Res>
    implements $BotCommandScopeCopyWith<$Res> {
  factory _$$BotCommandScopeAllGroupChatsImplCopyWith(
          _$BotCommandScopeAllGroupChatsImpl value,
          $Res Function(_$BotCommandScopeAllGroupChatsImpl) then) =
      __$$BotCommandScopeAllGroupChatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BotCommandScopeType type});
}

/// @nodoc
class __$$BotCommandScopeAllGroupChatsImplCopyWithImpl<$Res>
    extends _$BotCommandScopeCopyWithImpl<$Res,
        _$BotCommandScopeAllGroupChatsImpl>
    implements _$$BotCommandScopeAllGroupChatsImplCopyWith<$Res> {
  __$$BotCommandScopeAllGroupChatsImplCopyWithImpl(
      _$BotCommandScopeAllGroupChatsImpl _value,
      $Res Function(_$BotCommandScopeAllGroupChatsImpl) _then)
      : super(_value, _then);

  /// Create a copy of BotCommandScope
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$BotCommandScopeAllGroupChatsImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as BotCommandScopeType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BotCommandScopeAllGroupChatsImpl
    implements BotCommandScopeAllGroupChats {
  const _$BotCommandScopeAllGroupChatsImpl(
      {this.type = BotCommandScopeType.allGroupChats});

  factory _$BotCommandScopeAllGroupChatsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BotCommandScopeAllGroupChatsImplFromJson(json);

  /// Scope type, always be [BotCommandScopeType.allGroupChats]
  @override
  @JsonKey()
  final BotCommandScopeType type;

  @override
  String toString() {
    return 'BotCommandScope.allGroupChats(type: $type)';
  }

  /// Create a copy of BotCommandScope
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BotCommandScopeAllGroupChatsImplCopyWith<
          _$BotCommandScopeAllGroupChatsImpl>
      get copyWith => __$$BotCommandScopeAllGroupChatsImplCopyWithImpl<
          _$BotCommandScopeAllGroupChatsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BotCommandScopeDefault value) default_,
    required TResult Function(BotCommandScopeAllPrivateChats value)
        allPrivateChats,
    required TResult Function(BotCommandScopeAllGroupChats value) allGroupChats,
    required TResult Function(BotCommandScopeAllChatAdministrators value)
        allChatAdministrators,
    required TResult Function(BotCommandScopeChat value) chat,
    required TResult Function(BotCommandScopeChatAdministrators value)
        chatAdministrators,
    required TResult Function(BotCommandScopeChatMember value) chatMember,
  }) {
    return allGroupChats(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BotCommandScopeDefault value)? default_,
    TResult? Function(BotCommandScopeAllPrivateChats value)? allPrivateChats,
    TResult? Function(BotCommandScopeAllGroupChats value)? allGroupChats,
    TResult? Function(BotCommandScopeAllChatAdministrators value)?
        allChatAdministrators,
    TResult? Function(BotCommandScopeChat value)? chat,
    TResult? Function(BotCommandScopeChatAdministrators value)?
        chatAdministrators,
    TResult? Function(BotCommandScopeChatMember value)? chatMember,
  }) {
    return allGroupChats?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BotCommandScopeDefault value)? default_,
    TResult Function(BotCommandScopeAllPrivateChats value)? allPrivateChats,
    TResult Function(BotCommandScopeAllGroupChats value)? allGroupChats,
    TResult Function(BotCommandScopeAllChatAdministrators value)?
        allChatAdministrators,
    TResult Function(BotCommandScopeChat value)? chat,
    TResult Function(BotCommandScopeChatAdministrators value)?
        chatAdministrators,
    TResult Function(BotCommandScopeChatMember value)? chatMember,
    required TResult orElse(),
  }) {
    if (allGroupChats != null) {
      return allGroupChats(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BotCommandScopeAllGroupChatsImplToJson(
      this,
    );
  }
}

abstract class BotCommandScopeAllGroupChats implements BotCommandScope {
  const factory BotCommandScopeAllGroupChats({final BotCommandScopeType type}) =
      _$BotCommandScopeAllGroupChatsImpl;

  factory BotCommandScopeAllGroupChats.fromJson(Map<String, dynamic> json) =
      _$BotCommandScopeAllGroupChatsImpl.fromJson;

  /// Scope type, always be [BotCommandScopeType.allGroupChats]
  @override
  BotCommandScopeType get type;

  /// Create a copy of BotCommandScope
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BotCommandScopeAllGroupChatsImplCopyWith<
          _$BotCommandScopeAllGroupChatsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BotCommandScopeAllChatAdministratorsImplCopyWith<$Res>
    implements $BotCommandScopeCopyWith<$Res> {
  factory _$$BotCommandScopeAllChatAdministratorsImplCopyWith(
          _$BotCommandScopeAllChatAdministratorsImpl value,
          $Res Function(_$BotCommandScopeAllChatAdministratorsImpl) then) =
      __$$BotCommandScopeAllChatAdministratorsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BotCommandScopeType type});
}

/// @nodoc
class __$$BotCommandScopeAllChatAdministratorsImplCopyWithImpl<$Res>
    extends _$BotCommandScopeCopyWithImpl<$Res,
        _$BotCommandScopeAllChatAdministratorsImpl>
    implements _$$BotCommandScopeAllChatAdministratorsImplCopyWith<$Res> {
  __$$BotCommandScopeAllChatAdministratorsImplCopyWithImpl(
      _$BotCommandScopeAllChatAdministratorsImpl _value,
      $Res Function(_$BotCommandScopeAllChatAdministratorsImpl) _then)
      : super(_value, _then);

  /// Create a copy of BotCommandScope
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$BotCommandScopeAllChatAdministratorsImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as BotCommandScopeType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BotCommandScopeAllChatAdministratorsImpl
    implements BotCommandScopeAllChatAdministrators {
  const _$BotCommandScopeAllChatAdministratorsImpl(
      {this.type = BotCommandScopeType.allChatAdministrators});

  factory _$BotCommandScopeAllChatAdministratorsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BotCommandScopeAllChatAdministratorsImplFromJson(json);

  /// Scope type, always be [BotCommandScopeType.allChatAdministrators]
  @override
  @JsonKey()
  final BotCommandScopeType type;

  @override
  String toString() {
    return 'BotCommandScope.allChatAdministrators(type: $type)';
  }

  /// Create a copy of BotCommandScope
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BotCommandScopeAllChatAdministratorsImplCopyWith<
          _$BotCommandScopeAllChatAdministratorsImpl>
      get copyWith => __$$BotCommandScopeAllChatAdministratorsImplCopyWithImpl<
          _$BotCommandScopeAllChatAdministratorsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BotCommandScopeDefault value) default_,
    required TResult Function(BotCommandScopeAllPrivateChats value)
        allPrivateChats,
    required TResult Function(BotCommandScopeAllGroupChats value) allGroupChats,
    required TResult Function(BotCommandScopeAllChatAdministrators value)
        allChatAdministrators,
    required TResult Function(BotCommandScopeChat value) chat,
    required TResult Function(BotCommandScopeChatAdministrators value)
        chatAdministrators,
    required TResult Function(BotCommandScopeChatMember value) chatMember,
  }) {
    return allChatAdministrators(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BotCommandScopeDefault value)? default_,
    TResult? Function(BotCommandScopeAllPrivateChats value)? allPrivateChats,
    TResult? Function(BotCommandScopeAllGroupChats value)? allGroupChats,
    TResult? Function(BotCommandScopeAllChatAdministrators value)?
        allChatAdministrators,
    TResult? Function(BotCommandScopeChat value)? chat,
    TResult? Function(BotCommandScopeChatAdministrators value)?
        chatAdministrators,
    TResult? Function(BotCommandScopeChatMember value)? chatMember,
  }) {
    return allChatAdministrators?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BotCommandScopeDefault value)? default_,
    TResult Function(BotCommandScopeAllPrivateChats value)? allPrivateChats,
    TResult Function(BotCommandScopeAllGroupChats value)? allGroupChats,
    TResult Function(BotCommandScopeAllChatAdministrators value)?
        allChatAdministrators,
    TResult Function(BotCommandScopeChat value)? chat,
    TResult Function(BotCommandScopeChatAdministrators value)?
        chatAdministrators,
    TResult Function(BotCommandScopeChatMember value)? chatMember,
    required TResult orElse(),
  }) {
    if (allChatAdministrators != null) {
      return allChatAdministrators(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BotCommandScopeAllChatAdministratorsImplToJson(
      this,
    );
  }
}

abstract class BotCommandScopeAllChatAdministrators implements BotCommandScope {
  const factory BotCommandScopeAllChatAdministrators(
          {final BotCommandScopeType type}) =
      _$BotCommandScopeAllChatAdministratorsImpl;

  factory BotCommandScopeAllChatAdministrators.fromJson(
          Map<String, dynamic> json) =
      _$BotCommandScopeAllChatAdministratorsImpl.fromJson;

  /// Scope type, always be [BotCommandScopeType.allChatAdministrators]
  @override
  BotCommandScopeType get type;

  /// Create a copy of BotCommandScope
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BotCommandScopeAllChatAdministratorsImplCopyWith<
          _$BotCommandScopeAllChatAdministratorsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BotCommandScopeChatImplCopyWith<$Res>
    implements $BotCommandScopeCopyWith<$Res> {
  factory _$$BotCommandScopeChatImplCopyWith(_$BotCommandScopeChatImpl value,
          $Res Function(_$BotCommandScopeChatImpl) then) =
      __$$BotCommandScopeChatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BotCommandScopeType type,
      @JsonKey(name: 'chat_id') @IDConverter() ID chatId});
}

/// @nodoc
class __$$BotCommandScopeChatImplCopyWithImpl<$Res>
    extends _$BotCommandScopeCopyWithImpl<$Res, _$BotCommandScopeChatImpl>
    implements _$$BotCommandScopeChatImplCopyWith<$Res> {
  __$$BotCommandScopeChatImplCopyWithImpl(_$BotCommandScopeChatImpl _value,
      $Res Function(_$BotCommandScopeChatImpl) _then)
      : super(_value, _then);

  /// Create a copy of BotCommandScope
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? chatId = null,
  }) {
    return _then(_$BotCommandScopeChatImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as BotCommandScopeType,
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as ID,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BotCommandScopeChatImpl implements BotCommandScopeChat {
  const _$BotCommandScopeChatImpl(
      {this.type = BotCommandScopeType.chat,
      @JsonKey(name: 'chat_id') @IDConverter() required this.chatId});

  factory _$BotCommandScopeChatImpl.fromJson(Map<String, dynamic> json) =>
      _$$BotCommandScopeChatImplFromJson(json);

  /// Scope type, always be [BotCommandScopeType.chat]
  @override
  @JsonKey()
  final BotCommandScopeType type;

  /// Unique identifier for the target chat or username of the target supergroup (in the format @supergroupusername)
  @override
  @JsonKey(name: 'chat_id')
  @IDConverter()
  final ID chatId;

  @override
  String toString() {
    return 'BotCommandScope.chat(type: $type, chatId: $chatId)';
  }

  /// Create a copy of BotCommandScope
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BotCommandScopeChatImplCopyWith<_$BotCommandScopeChatImpl> get copyWith =>
      __$$BotCommandScopeChatImplCopyWithImpl<_$BotCommandScopeChatImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BotCommandScopeDefault value) default_,
    required TResult Function(BotCommandScopeAllPrivateChats value)
        allPrivateChats,
    required TResult Function(BotCommandScopeAllGroupChats value) allGroupChats,
    required TResult Function(BotCommandScopeAllChatAdministrators value)
        allChatAdministrators,
    required TResult Function(BotCommandScopeChat value) chat,
    required TResult Function(BotCommandScopeChatAdministrators value)
        chatAdministrators,
    required TResult Function(BotCommandScopeChatMember value) chatMember,
  }) {
    return chat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BotCommandScopeDefault value)? default_,
    TResult? Function(BotCommandScopeAllPrivateChats value)? allPrivateChats,
    TResult? Function(BotCommandScopeAllGroupChats value)? allGroupChats,
    TResult? Function(BotCommandScopeAllChatAdministrators value)?
        allChatAdministrators,
    TResult? Function(BotCommandScopeChat value)? chat,
    TResult? Function(BotCommandScopeChatAdministrators value)?
        chatAdministrators,
    TResult? Function(BotCommandScopeChatMember value)? chatMember,
  }) {
    return chat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BotCommandScopeDefault value)? default_,
    TResult Function(BotCommandScopeAllPrivateChats value)? allPrivateChats,
    TResult Function(BotCommandScopeAllGroupChats value)? allGroupChats,
    TResult Function(BotCommandScopeAllChatAdministrators value)?
        allChatAdministrators,
    TResult Function(BotCommandScopeChat value)? chat,
    TResult Function(BotCommandScopeChatAdministrators value)?
        chatAdministrators,
    TResult Function(BotCommandScopeChatMember value)? chatMember,
    required TResult orElse(),
  }) {
    if (chat != null) {
      return chat(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BotCommandScopeChatImplToJson(
      this,
    );
  }
}

abstract class BotCommandScopeChat implements BotCommandScope {
  const factory BotCommandScopeChat(
          {final BotCommandScopeType type,
          @JsonKey(name: 'chat_id') @IDConverter() required final ID chatId}) =
      _$BotCommandScopeChatImpl;

  factory BotCommandScopeChat.fromJson(Map<String, dynamic> json) =
      _$BotCommandScopeChatImpl.fromJson;

  /// Scope type, always be [BotCommandScopeType.chat]
  @override
  BotCommandScopeType get type;

  /// Unique identifier for the target chat or username of the target supergroup (in the format @supergroupusername)
  @JsonKey(name: 'chat_id')
  @IDConverter()
  ID get chatId;

  /// Create a copy of BotCommandScope
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BotCommandScopeChatImplCopyWith<_$BotCommandScopeChatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BotCommandScopeChatAdministratorsImplCopyWith<$Res>
    implements $BotCommandScopeCopyWith<$Res> {
  factory _$$BotCommandScopeChatAdministratorsImplCopyWith(
          _$BotCommandScopeChatAdministratorsImpl value,
          $Res Function(_$BotCommandScopeChatAdministratorsImpl) then) =
      __$$BotCommandScopeChatAdministratorsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BotCommandScopeType type,
      @JsonKey(name: 'chat_id') @IDConverter() ID chatId});
}

/// @nodoc
class __$$BotCommandScopeChatAdministratorsImplCopyWithImpl<$Res>
    extends _$BotCommandScopeCopyWithImpl<$Res,
        _$BotCommandScopeChatAdministratorsImpl>
    implements _$$BotCommandScopeChatAdministratorsImplCopyWith<$Res> {
  __$$BotCommandScopeChatAdministratorsImplCopyWithImpl(
      _$BotCommandScopeChatAdministratorsImpl _value,
      $Res Function(_$BotCommandScopeChatAdministratorsImpl) _then)
      : super(_value, _then);

  /// Create a copy of BotCommandScope
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? chatId = null,
  }) {
    return _then(_$BotCommandScopeChatAdministratorsImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as BotCommandScopeType,
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as ID,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BotCommandScopeChatAdministratorsImpl
    implements BotCommandScopeChatAdministrators {
  const _$BotCommandScopeChatAdministratorsImpl(
      {this.type = BotCommandScopeType.chatAdministrators,
      @JsonKey(name: 'chat_id') @IDConverter() required this.chatId});

  factory _$BotCommandScopeChatAdministratorsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BotCommandScopeChatAdministratorsImplFromJson(json);

  /// Scope type, always be [BotCommandScopeType.chatAdministrators]
  @override
  @JsonKey()
  final BotCommandScopeType type;

  /// Unique identifier for the target chat or username of the target supergroup (in the format @supergroupusername)
  @override
  @JsonKey(name: 'chat_id')
  @IDConverter()
  final ID chatId;

  @override
  String toString() {
    return 'BotCommandScope.chatAdministrators(type: $type, chatId: $chatId)';
  }

  /// Create a copy of BotCommandScope
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BotCommandScopeChatAdministratorsImplCopyWith<
          _$BotCommandScopeChatAdministratorsImpl>
      get copyWith => __$$BotCommandScopeChatAdministratorsImplCopyWithImpl<
          _$BotCommandScopeChatAdministratorsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BotCommandScopeDefault value) default_,
    required TResult Function(BotCommandScopeAllPrivateChats value)
        allPrivateChats,
    required TResult Function(BotCommandScopeAllGroupChats value) allGroupChats,
    required TResult Function(BotCommandScopeAllChatAdministrators value)
        allChatAdministrators,
    required TResult Function(BotCommandScopeChat value) chat,
    required TResult Function(BotCommandScopeChatAdministrators value)
        chatAdministrators,
    required TResult Function(BotCommandScopeChatMember value) chatMember,
  }) {
    return chatAdministrators(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BotCommandScopeDefault value)? default_,
    TResult? Function(BotCommandScopeAllPrivateChats value)? allPrivateChats,
    TResult? Function(BotCommandScopeAllGroupChats value)? allGroupChats,
    TResult? Function(BotCommandScopeAllChatAdministrators value)?
        allChatAdministrators,
    TResult? Function(BotCommandScopeChat value)? chat,
    TResult? Function(BotCommandScopeChatAdministrators value)?
        chatAdministrators,
    TResult? Function(BotCommandScopeChatMember value)? chatMember,
  }) {
    return chatAdministrators?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BotCommandScopeDefault value)? default_,
    TResult Function(BotCommandScopeAllPrivateChats value)? allPrivateChats,
    TResult Function(BotCommandScopeAllGroupChats value)? allGroupChats,
    TResult Function(BotCommandScopeAllChatAdministrators value)?
        allChatAdministrators,
    TResult Function(BotCommandScopeChat value)? chat,
    TResult Function(BotCommandScopeChatAdministrators value)?
        chatAdministrators,
    TResult Function(BotCommandScopeChatMember value)? chatMember,
    required TResult orElse(),
  }) {
    if (chatAdministrators != null) {
      return chatAdministrators(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BotCommandScopeChatAdministratorsImplToJson(
      this,
    );
  }
}

abstract class BotCommandScopeChatAdministrators implements BotCommandScope {
  const factory BotCommandScopeChatAdministrators(
          {final BotCommandScopeType type,
          @JsonKey(name: 'chat_id') @IDConverter() required final ID chatId}) =
      _$BotCommandScopeChatAdministratorsImpl;

  factory BotCommandScopeChatAdministrators.fromJson(
          Map<String, dynamic> json) =
      _$BotCommandScopeChatAdministratorsImpl.fromJson;

  /// Scope type, always be [BotCommandScopeType.chatAdministrators]
  @override
  BotCommandScopeType get type;

  /// Unique identifier for the target chat or username of the target supergroup (in the format @supergroupusername)
  @JsonKey(name: 'chat_id')
  @IDConverter()
  ID get chatId;

  /// Create a copy of BotCommandScope
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BotCommandScopeChatAdministratorsImplCopyWith<
          _$BotCommandScopeChatAdministratorsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BotCommandScopeChatMemberImplCopyWith<$Res>
    implements $BotCommandScopeCopyWith<$Res> {
  factory _$$BotCommandScopeChatMemberImplCopyWith(
          _$BotCommandScopeChatMemberImpl value,
          $Res Function(_$BotCommandScopeChatMemberImpl) then) =
      __$$BotCommandScopeChatMemberImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BotCommandScopeType type,
      @JsonKey(name: 'chat_id') @IDConverter() ID chatId,
      @JsonKey(name: 'user_id') int userId});
}

/// @nodoc
class __$$BotCommandScopeChatMemberImplCopyWithImpl<$Res>
    extends _$BotCommandScopeCopyWithImpl<$Res, _$BotCommandScopeChatMemberImpl>
    implements _$$BotCommandScopeChatMemberImplCopyWith<$Res> {
  __$$BotCommandScopeChatMemberImplCopyWithImpl(
      _$BotCommandScopeChatMemberImpl _value,
      $Res Function(_$BotCommandScopeChatMemberImpl) _then)
      : super(_value, _then);

  /// Create a copy of BotCommandScope
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? chatId = null,
    Object? userId = null,
  }) {
    return _then(_$BotCommandScopeChatMemberImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as BotCommandScopeType,
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as ID,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BotCommandScopeChatMemberImpl implements BotCommandScopeChatMember {
  const _$BotCommandScopeChatMemberImpl(
      {this.type = BotCommandScopeType.chatMember,
      @JsonKey(name: 'chat_id') @IDConverter() required this.chatId,
      @JsonKey(name: 'user_id') required this.userId});

  factory _$BotCommandScopeChatMemberImpl.fromJson(Map<String, dynamic> json) =>
      _$$BotCommandScopeChatMemberImplFromJson(json);

  /// Scope type, always be [BotCommandScopeType.chatMember]
  @override
  @JsonKey()
  final BotCommandScopeType type;

  /// Unique identifier for the target chat or username of the target supergroup (in the format @supergroupusername)
  @override
  @JsonKey(name: 'chat_id')
  @IDConverter()
  final ID chatId;

  /// Unique identifier of the target user
  @override
  @JsonKey(name: 'user_id')
  final int userId;

  @override
  String toString() {
    return 'BotCommandScope.chatMember(type: $type, chatId: $chatId, userId: $userId)';
  }

  /// Create a copy of BotCommandScope
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BotCommandScopeChatMemberImplCopyWith<_$BotCommandScopeChatMemberImpl>
      get copyWith => __$$BotCommandScopeChatMemberImplCopyWithImpl<
          _$BotCommandScopeChatMemberImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BotCommandScopeDefault value) default_,
    required TResult Function(BotCommandScopeAllPrivateChats value)
        allPrivateChats,
    required TResult Function(BotCommandScopeAllGroupChats value) allGroupChats,
    required TResult Function(BotCommandScopeAllChatAdministrators value)
        allChatAdministrators,
    required TResult Function(BotCommandScopeChat value) chat,
    required TResult Function(BotCommandScopeChatAdministrators value)
        chatAdministrators,
    required TResult Function(BotCommandScopeChatMember value) chatMember,
  }) {
    return chatMember(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BotCommandScopeDefault value)? default_,
    TResult? Function(BotCommandScopeAllPrivateChats value)? allPrivateChats,
    TResult? Function(BotCommandScopeAllGroupChats value)? allGroupChats,
    TResult? Function(BotCommandScopeAllChatAdministrators value)?
        allChatAdministrators,
    TResult? Function(BotCommandScopeChat value)? chat,
    TResult? Function(BotCommandScopeChatAdministrators value)?
        chatAdministrators,
    TResult? Function(BotCommandScopeChatMember value)? chatMember,
  }) {
    return chatMember?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BotCommandScopeDefault value)? default_,
    TResult Function(BotCommandScopeAllPrivateChats value)? allPrivateChats,
    TResult Function(BotCommandScopeAllGroupChats value)? allGroupChats,
    TResult Function(BotCommandScopeAllChatAdministrators value)?
        allChatAdministrators,
    TResult Function(BotCommandScopeChat value)? chat,
    TResult Function(BotCommandScopeChatAdministrators value)?
        chatAdministrators,
    TResult Function(BotCommandScopeChatMember value)? chatMember,
    required TResult orElse(),
  }) {
    if (chatMember != null) {
      return chatMember(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BotCommandScopeChatMemberImplToJson(
      this,
    );
  }
}

abstract class BotCommandScopeChatMember implements BotCommandScope {
  const factory BotCommandScopeChatMember(
          {final BotCommandScopeType type,
          @JsonKey(name: 'chat_id') @IDConverter() required final ID chatId,
          @JsonKey(name: 'user_id') required final int userId}) =
      _$BotCommandScopeChatMemberImpl;

  factory BotCommandScopeChatMember.fromJson(Map<String, dynamic> json) =
      _$BotCommandScopeChatMemberImpl.fromJson;

  /// Scope type, always be [BotCommandScopeType.chatMember]
  @override
  BotCommandScopeType get type;

  /// Unique identifier for the target chat or username of the target supergroup (in the format @supergroupusername)
  @JsonKey(name: 'chat_id')
  @IDConverter()
  ID get chatId;

  /// Unique identifier of the target user
  @JsonKey(name: 'user_id')
  int get userId;

  /// Create a copy of BotCommandScope
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BotCommandScopeChatMemberImplCopyWith<_$BotCommandScopeChatMemberImpl>
      get copyWith => throw _privateConstructorUsedError;
}
