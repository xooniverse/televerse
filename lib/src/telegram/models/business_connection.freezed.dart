// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'business_connection.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BusinessConnection _$BusinessConnectionFromJson(Map<String, dynamic> json) {
  return _BusinessConnection.fromJson(json);
}

/// @nodoc
mixin _$BusinessConnection {
  /// Unique identifier of the business connection.
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;

  /// Business account user that created the business connection.
  @JsonKey(name: 'user')
  User get user => throw _privateConstructorUsedError;

  /// Identifier of a private chat with the user who created the business
  /// connection. This number may have more than 32 significant bits and some
  /// programming languages may have difficulty/silent defects in interpreting
  /// it. But it has at most 52 significant bits, so a 64-bit integer or
  /// double-precision float type are safe for storing this identifier.
  @JsonKey(name: 'user_chat_id')
  int get userChatId => throw _privateConstructorUsedError;

  /// Date the connection was established in Unix time.
  @JsonKey(name: 'date')
  int get date => throw _privateConstructorUsedError;

  /// Indicates whether the bot can act on behalf of the business account in
  /// chats that were active in the last 24 hours.
  @JsonKey(name: 'can_reply')
  bool get canReply => throw _privateConstructorUsedError;

  /// Indicates whether the connection is active.
  @JsonKey(name: 'is_enabled')
  bool get isEnabled => throw _privateConstructorUsedError;

  /// Serializes this BusinessConnection to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BusinessConnection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BusinessConnectionCopyWith<BusinessConnection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessConnectionCopyWith<$Res> {
  factory $BusinessConnectionCopyWith(
          BusinessConnection value, $Res Function(BusinessConnection) then) =
      _$BusinessConnectionCopyWithImpl<$Res, BusinessConnection>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'user') User user,
      @JsonKey(name: 'user_chat_id') int userChatId,
      @JsonKey(name: 'date') int date,
      @JsonKey(name: 'can_reply') bool canReply,
      @JsonKey(name: 'is_enabled') bool isEnabled});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$BusinessConnectionCopyWithImpl<$Res, $Val extends BusinessConnection>
    implements $BusinessConnectionCopyWith<$Res> {
  _$BusinessConnectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BusinessConnection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = null,
    Object? userChatId = null,
    Object? date = null,
    Object? canReply = null,
    Object? isEnabled = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      userChatId: null == userChatId
          ? _value.userChatId
          : userChatId // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int,
      canReply: null == canReply
          ? _value.canReply
          : canReply // ignore: cast_nullable_to_non_nullable
              as bool,
      isEnabled: null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of BusinessConnection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BusinessConnectionImplCopyWith<$Res>
    implements $BusinessConnectionCopyWith<$Res> {
  factory _$$BusinessConnectionImplCopyWith(_$BusinessConnectionImpl value,
          $Res Function(_$BusinessConnectionImpl) then) =
      __$$BusinessConnectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'user') User user,
      @JsonKey(name: 'user_chat_id') int userChatId,
      @JsonKey(name: 'date') int date,
      @JsonKey(name: 'can_reply') bool canReply,
      @JsonKey(name: 'is_enabled') bool isEnabled});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$BusinessConnectionImplCopyWithImpl<$Res>
    extends _$BusinessConnectionCopyWithImpl<$Res, _$BusinessConnectionImpl>
    implements _$$BusinessConnectionImplCopyWith<$Res> {
  __$$BusinessConnectionImplCopyWithImpl(_$BusinessConnectionImpl _value,
      $Res Function(_$BusinessConnectionImpl) _then)
      : super(_value, _then);

  /// Create a copy of BusinessConnection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = null,
    Object? userChatId = null,
    Object? date = null,
    Object? canReply = null,
    Object? isEnabled = null,
  }) {
    return _then(_$BusinessConnectionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      userChatId: null == userChatId
          ? _value.userChatId
          : userChatId // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int,
      canReply: null == canReply
          ? _value.canReply
          : canReply // ignore: cast_nullable_to_non_nullable
              as bool,
      isEnabled: null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BusinessConnectionImpl extends _BusinessConnection {
  const _$BusinessConnectionImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'user') required this.user,
      @JsonKey(name: 'user_chat_id') required this.userChatId,
      @JsonKey(name: 'date') required this.date,
      @JsonKey(name: 'can_reply') required this.canReply,
      @JsonKey(name: 'is_enabled') required this.isEnabled})
      : super._();

  factory _$BusinessConnectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$BusinessConnectionImplFromJson(json);

  /// Unique identifier of the business connection.
  @override
  @JsonKey(name: 'id')
  final String id;

  /// Business account user that created the business connection.
  @override
  @JsonKey(name: 'user')
  final User user;

  /// Identifier of a private chat with the user who created the business
  /// connection. This number may have more than 32 significant bits and some
  /// programming languages may have difficulty/silent defects in interpreting
  /// it. But it has at most 52 significant bits, so a 64-bit integer or
  /// double-precision float type are safe for storing this identifier.
  @override
  @JsonKey(name: 'user_chat_id')
  final int userChatId;

  /// Date the connection was established in Unix time.
  @override
  @JsonKey(name: 'date')
  final int date;

  /// Indicates whether the bot can act on behalf of the business account in
  /// chats that were active in the last 24 hours.
  @override
  @JsonKey(name: 'can_reply')
  final bool canReply;

  /// Indicates whether the connection is active.
  @override
  @JsonKey(name: 'is_enabled')
  final bool isEnabled;

  @override
  String toString() {
    return 'BusinessConnection(id: $id, user: $user, userChatId: $userChatId, date: $date, canReply: $canReply, isEnabled: $isEnabled)';
  }

  /// Create a copy of BusinessConnection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BusinessConnectionImplCopyWith<_$BusinessConnectionImpl> get copyWith =>
      __$$BusinessConnectionImplCopyWithImpl<_$BusinessConnectionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BusinessConnectionImplToJson(
      this,
    );
  }
}

abstract class _BusinessConnection extends BusinessConnection {
  const factory _BusinessConnection(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'user') required final User user,
          @JsonKey(name: 'user_chat_id') required final int userChatId,
          @JsonKey(name: 'date') required final int date,
          @JsonKey(name: 'can_reply') required final bool canReply,
          @JsonKey(name: 'is_enabled') required final bool isEnabled}) =
      _$BusinessConnectionImpl;
  const _BusinessConnection._() : super._();

  factory _BusinessConnection.fromJson(Map<String, dynamic> json) =
      _$BusinessConnectionImpl.fromJson;

  /// Unique identifier of the business connection.
  @override
  @JsonKey(name: 'id')
  String get id;

  /// Business account user that created the business connection.
  @override
  @JsonKey(name: 'user')
  User get user;

  /// Identifier of a private chat with the user who created the business
  /// connection. This number may have more than 32 significant bits and some
  /// programming languages may have difficulty/silent defects in interpreting
  /// it. But it has at most 52 significant bits, so a 64-bit integer or
  /// double-precision float type are safe for storing this identifier.
  @override
  @JsonKey(name: 'user_chat_id')
  int get userChatId;

  /// Date the connection was established in Unix time.
  @override
  @JsonKey(name: 'date')
  int get date;

  /// Indicates whether the bot can act on behalf of the business account in
  /// chats that were active in the last 24 hours.
  @override
  @JsonKey(name: 'can_reply')
  bool get canReply;

  /// Indicates whether the connection is active.
  @override
  @JsonKey(name: 'is_enabled')
  bool get isEnabled;

  /// Create a copy of BusinessConnection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BusinessConnectionImplCopyWith<_$BusinessConnectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
