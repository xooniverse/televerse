// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Chat {
  /// Unique identifier for this chat.
  @JsonKey(name: 'id')
  int get id;

  /// Type of the chat, can be either "private", "group", "supergroup" or
  /// "channel".
  @JsonKey(name: 'type')
  ChatType get type;

  /// Title, for supergroups, channels, and group chats.
  @JsonKey(name: 'title')
  String? get title;

  /// Username, for private chats, supergroups, and channels if available.
  @JsonKey(name: 'username')
  String? get username;

  /// First name of the other party in a private chat.
  @JsonKey(name: 'first_name')
  String? get firstName;

  /// Last name of the other party in a private chat.
  @JsonKey(name: 'last_name')
  String? get lastName;

  /// True, if the supergroup chat is a forum (has topics enabled).
  @JsonKey(name: 'is_forum')
  bool? get isForum;

  /// Create a copy of Chat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChatCopyWith<Chat> get copyWith =>
      _$ChatCopyWithImpl<Chat>(this as Chat, _$identity);

  /// Serializes this Chat to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'Chat(id: $id, type: $type, title: $title, username: $username, firstName: $firstName, lastName: $lastName, isForum: $isForum)';
  }
}

/// @nodoc
abstract mixin class $ChatCopyWith<$Res> {
  factory $ChatCopyWith(Chat value, $Res Function(Chat) _then) =
      _$ChatCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'type') ChatType type,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'is_forum') bool? isForum});
}

/// @nodoc
class _$ChatCopyWithImpl<$Res> implements $ChatCopyWith<$Res> {
  _$ChatCopyWithImpl(this._self, this._then);

  final Chat _self;
  final $Res Function(Chat) _then;

  /// Create a copy of Chat
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? title = freezed,
    Object? username = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? isForum = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as ChatType,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      isForum: freezed == isForum
          ? _self.isForum
          : isForum // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Chat implements Chat {
  const _Chat(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'type') required this.type,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'username') this.username,
      @JsonKey(name: 'first_name') this.firstName,
      @JsonKey(name: 'last_name') this.lastName,
      @JsonKey(name: 'is_forum') this.isForum});
  factory _Chat.fromJson(Map<String, dynamic> json) => _$ChatFromJson(json);

  /// Unique identifier for this chat.
  @override
  @JsonKey(name: 'id')
  final int id;

  /// Type of the chat, can be either "private", "group", "supergroup" or
  /// "channel".
  @override
  @JsonKey(name: 'type')
  final ChatType type;

  /// Title, for supergroups, channels, and group chats.
  @override
  @JsonKey(name: 'title')
  final String? title;

  /// Username, for private chats, supergroups, and channels if available.
  @override
  @JsonKey(name: 'username')
  final String? username;

  /// First name of the other party in a private chat.
  @override
  @JsonKey(name: 'first_name')
  final String? firstName;

  /// Last name of the other party in a private chat.
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;

  /// True, if the supergroup chat is a forum (has topics enabled).
  @override
  @JsonKey(name: 'is_forum')
  final bool? isForum;

  /// Create a copy of Chat
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChatCopyWith<_Chat> get copyWith =>
      __$ChatCopyWithImpl<_Chat>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChatToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'Chat(id: $id, type: $type, title: $title, username: $username, firstName: $firstName, lastName: $lastName, isForum: $isForum)';
  }
}

/// @nodoc
abstract mixin class _$ChatCopyWith<$Res> implements $ChatCopyWith<$Res> {
  factory _$ChatCopyWith(_Chat value, $Res Function(_Chat) _then) =
      __$ChatCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'type') ChatType type,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'is_forum') bool? isForum});
}

/// @nodoc
class __$ChatCopyWithImpl<$Res> implements _$ChatCopyWith<$Res> {
  __$ChatCopyWithImpl(this._self, this._then);

  final _Chat _self;
  final $Res Function(_Chat) _then;

  /// Create a copy of Chat
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? title = freezed,
    Object? username = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? isForum = freezed,
  }) {
    return _then(_Chat(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as ChatType,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      isForum: freezed == isForum
          ? _self.isForum
          : isForum // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}
