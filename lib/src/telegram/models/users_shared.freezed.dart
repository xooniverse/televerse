// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users_shared.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UsersShared {
  /// Identifier of the request
  @JsonKey(name: 'request_id')
  int get requestId;

  /// Identifiers of the shared users. These numbers may have more than 32
  /// significant bits and some programming languages may have
  /// difficulty/silent defects in interpreting them. But they have at most 52
  /// significant bits, so 64-bit integers or double-precision float types are
  /// safe for storing these identifiers. The bot may not have access to the
  /// users and could be unable to use these identifiers, unless the users are
  /// already known to the bot by some other means.
  @JsonKey(name: 'users')
  List<SharedUser> get users;

  /// Create a copy of UsersShared
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UsersSharedCopyWith<UsersShared> get copyWith =>
      _$UsersSharedCopyWithImpl<UsersShared>(this as UsersShared, _$identity);

  /// Serializes this UsersShared to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'UsersShared(requestId: $requestId, users: $users)';
  }
}

/// @nodoc
abstract mixin class $UsersSharedCopyWith<$Res> {
  factory $UsersSharedCopyWith(
    UsersShared value,
    $Res Function(UsersShared) _then,
  ) = _$UsersSharedCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'request_id') int requestId,
    @JsonKey(name: 'users') List<SharedUser> users,
  });
}

/// @nodoc
class _$UsersSharedCopyWithImpl<$Res> implements $UsersSharedCopyWith<$Res> {
  _$UsersSharedCopyWithImpl(this._self, this._then);

  final UsersShared _self;
  final $Res Function(UsersShared) _then;

  /// Create a copy of UsersShared
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? requestId = null, Object? users = null}) {
    return _then(
      _self.copyWith(
        requestId: null == requestId
            ? _self.requestId
            : requestId // ignore: cast_nullable_to_non_nullable
                  as int,
        users: null == users
            ? _self.users
            : users // ignore: cast_nullable_to_non_nullable
                  as List<SharedUser>,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [UsersShared].
extension UsersSharedPatterns on UsersShared {
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
    TResult Function(_UsersShared value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UsersShared() when $default != null:
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
    TResult Function(_UsersShared value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UsersShared():
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
    TResult? Function(_UsersShared value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UsersShared() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UsersShared implements UsersShared {
  const _UsersShared({
    @JsonKey(name: 'request_id') required this.requestId,
    @JsonKey(name: 'users') required final List<SharedUser> users,
  }) : _users = users;
  factory _UsersShared.fromJson(Map<String, dynamic> json) =>
      _$UsersSharedFromJson(json);

  /// Identifier of the request
  @override
  @JsonKey(name: 'request_id')
  final int requestId;

  /// Identifiers of the shared users. These numbers may have more than 32
  /// significant bits and some programming languages may have
  /// difficulty/silent defects in interpreting them. But they have at most 52
  /// significant bits, so 64-bit integers or double-precision float types are
  /// safe for storing these identifiers. The bot may not have access to the
  /// users and could be unable to use these identifiers, unless the users are
  /// already known to the bot by some other means.
  final List<SharedUser> _users;

  /// Identifiers of the shared users. These numbers may have more than 32
  /// significant bits and some programming languages may have
  /// difficulty/silent defects in interpreting them. But they have at most 52
  /// significant bits, so 64-bit integers or double-precision float types are
  /// safe for storing these identifiers. The bot may not have access to the
  /// users and could be unable to use these identifiers, unless the users are
  /// already known to the bot by some other means.
  @override
  @JsonKey(name: 'users')
  List<SharedUser> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  /// Create a copy of UsersShared
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UsersSharedCopyWith<_UsersShared> get copyWith =>
      __$UsersSharedCopyWithImpl<_UsersShared>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UsersSharedToJson(this);
  }

  @override
  String toString() {
    return 'UsersShared(requestId: $requestId, users: $users)';
  }
}

/// @nodoc
abstract mixin class _$UsersSharedCopyWith<$Res>
    implements $UsersSharedCopyWith<$Res> {
  factory _$UsersSharedCopyWith(
    _UsersShared value,
    $Res Function(_UsersShared) _then,
  ) = __$UsersSharedCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'request_id') int requestId,
    @JsonKey(name: 'users') List<SharedUser> users,
  });
}

/// @nodoc
class __$UsersSharedCopyWithImpl<$Res> implements _$UsersSharedCopyWith<$Res> {
  __$UsersSharedCopyWithImpl(this._self, this._then);

  final _UsersShared _self;
  final $Res Function(_UsersShared) _then;

  /// Create a copy of UsersShared
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? requestId = null, Object? users = null}) {
    return _then(
      _UsersShared(
        requestId: null == requestId
            ? _self.requestId
            : requestId // ignore: cast_nullable_to_non_nullable
                  as int,
        users: null == users
            ? _self._users
            : users // ignore: cast_nullable_to_non_nullable
                  as List<SharedUser>,
      ),
    );
  }
}
