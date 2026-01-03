// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'business_connection.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BusinessConnection {
  /// Unique identifier of the business connection.
  @JsonKey(name: 'id')
  String get id;

  /// Business account user that created the business connection.
  @JsonKey(name: 'user')
  User get user;

  /// Identifier of a private chat with the user who created the business
  /// connection. This number may have more than 32 significant bits and some
  /// programming languages may have difficulty/silent defects in interpreting
  /// it. But it has at most 52 significant bits, so a 64-bit integer or
  /// double-precision float type are safe for storing this identifier.
  @JsonKey(name: 'user_chat_id')
  int get userChatId;

  /// Date the connection was established in Unix time.
  @JsonKey(name: 'date')
  int get date;

  /// Indicates whether the bot can act on behalf of the business account in
  /// chats that were active in the last 24 hours.
  @JsonKey(name: 'rights')
  BusinessBotRights get rights;

  /// Indicates whether the connection is active.
  @JsonKey(name: 'is_enabled')
  bool get isEnabled;

  /// Create a copy of BusinessConnection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BusinessConnectionCopyWith<BusinessConnection> get copyWith =>
      _$BusinessConnectionCopyWithImpl<BusinessConnection>(
        this as BusinessConnection,
        _$identity,
      );

  /// Serializes this BusinessConnection to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'BusinessConnection(id: $id, user: $user, userChatId: $userChatId, date: $date, rights: $rights, isEnabled: $isEnabled)';
  }
}

/// @nodoc
abstract mixin class $BusinessConnectionCopyWith<$Res> {
  factory $BusinessConnectionCopyWith(
    BusinessConnection value,
    $Res Function(BusinessConnection) _then,
  ) = _$BusinessConnectionCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'id') String id,
    @JsonKey(name: 'user') User user,
    @JsonKey(name: 'user_chat_id') int userChatId,
    @JsonKey(name: 'date') int date,
    @JsonKey(name: 'rights') BusinessBotRights rights,
    @JsonKey(name: 'is_enabled') bool isEnabled,
  });

  $UserCopyWith<$Res> get user;
  $BusinessBotRightsCopyWith<$Res> get rights;
}

/// @nodoc
class _$BusinessConnectionCopyWithImpl<$Res>
    implements $BusinessConnectionCopyWith<$Res> {
  _$BusinessConnectionCopyWithImpl(this._self, this._then);

  final BusinessConnection _self;
  final $Res Function(BusinessConnection) _then;

  /// Create a copy of BusinessConnection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = null,
    Object? userChatId = null,
    Object? date = null,
    Object? rights = null,
    Object? isEnabled = null,
  }) {
    return _then(
      _self.copyWith(
        id: null == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        user: null == user
            ? _self.user
            : user // ignore: cast_nullable_to_non_nullable
                  as User,
        userChatId: null == userChatId
            ? _self.userChatId
            : userChatId // ignore: cast_nullable_to_non_nullable
                  as int,
        date: null == date
            ? _self.date
            : date // ignore: cast_nullable_to_non_nullable
                  as int,
        rights: null == rights
            ? _self.rights
            : rights // ignore: cast_nullable_to_non_nullable
                  as BusinessBotRights,
        isEnabled: null == isEnabled
            ? _self.isEnabled
            : isEnabled // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }

  /// Create a copy of BusinessConnection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }

  /// Create a copy of BusinessConnection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BusinessBotRightsCopyWith<$Res> get rights {
    return $BusinessBotRightsCopyWith<$Res>(_self.rights, (value) {
      return _then(_self.copyWith(rights: value));
    });
  }
}

/// Adds pattern-matching-related methods to [BusinessConnection].
extension BusinessConnectionPatterns on BusinessConnection {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BusinessConnection value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BusinessConnection() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BusinessConnection value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BusinessConnection():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BusinessConnection value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BusinessConnection() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _BusinessConnection extends BusinessConnection {
  const _BusinessConnection({
    @JsonKey(name: 'id') required this.id,
    @JsonKey(name: 'user') required this.user,
    @JsonKey(name: 'user_chat_id') required this.userChatId,
    @JsonKey(name: 'date') required this.date,
    @JsonKey(name: 'rights') required this.rights,
    @JsonKey(name: 'is_enabled') required this.isEnabled,
  }) : super._();
  factory _BusinessConnection.fromJson(Map<String, dynamic> json) =>
      _$BusinessConnectionFromJson(json);

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
  @JsonKey(name: 'rights')
  final BusinessBotRights rights;

  /// Indicates whether the connection is active.
  @override
  @JsonKey(name: 'is_enabled')
  final bool isEnabled;

  /// Create a copy of BusinessConnection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BusinessConnectionCopyWith<_BusinessConnection> get copyWith =>
      __$BusinessConnectionCopyWithImpl<_BusinessConnection>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BusinessConnectionToJson(this);
  }

  @override
  String toString() {
    return 'BusinessConnection(id: $id, user: $user, userChatId: $userChatId, date: $date, rights: $rights, isEnabled: $isEnabled)';
  }
}

/// @nodoc
abstract mixin class _$BusinessConnectionCopyWith<$Res>
    implements $BusinessConnectionCopyWith<$Res> {
  factory _$BusinessConnectionCopyWith(
    _BusinessConnection value,
    $Res Function(_BusinessConnection) _then,
  ) = __$BusinessConnectionCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') String id,
    @JsonKey(name: 'user') User user,
    @JsonKey(name: 'user_chat_id') int userChatId,
    @JsonKey(name: 'date') int date,
    @JsonKey(name: 'rights') BusinessBotRights rights,
    @JsonKey(name: 'is_enabled') bool isEnabled,
  });

  @override
  $UserCopyWith<$Res> get user;
  @override
  $BusinessBotRightsCopyWith<$Res> get rights;
}

/// @nodoc
class __$BusinessConnectionCopyWithImpl<$Res>
    implements _$BusinessConnectionCopyWith<$Res> {
  __$BusinessConnectionCopyWithImpl(this._self, this._then);

  final _BusinessConnection _self;
  final $Res Function(_BusinessConnection) _then;

  /// Create a copy of BusinessConnection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? user = null,
    Object? userChatId = null,
    Object? date = null,
    Object? rights = null,
    Object? isEnabled = null,
  }) {
    return _then(
      _BusinessConnection(
        id: null == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        user: null == user
            ? _self.user
            : user // ignore: cast_nullable_to_non_nullable
                  as User,
        userChatId: null == userChatId
            ? _self.userChatId
            : userChatId // ignore: cast_nullable_to_non_nullable
                  as int,
        date: null == date
            ? _self.date
            : date // ignore: cast_nullable_to_non_nullable
                  as int,
        rights: null == rights
            ? _self.rights
            : rights // ignore: cast_nullable_to_non_nullable
                  as BusinessBotRights,
        isEnabled: null == isEnabled
            ? _self.isEnabled
            : isEnabled // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }

  /// Create a copy of BusinessConnection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }

  /// Create a copy of BusinessConnection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BusinessBotRightsCopyWith<$Res> get rights {
    return $BusinessBotRightsCopyWith<$Res>(_self.rights, (value) {
      return _then(_self.copyWith(rights: value));
    });
  }
}
