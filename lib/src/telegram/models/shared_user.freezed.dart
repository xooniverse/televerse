// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shared_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SharedUser {
  /// Identifier of the shared user. This number may have more than 32
  /// significant bits and some programming languages may have
  /// difficulty/silent defects in interpreting it. But it has at most 52
  /// significant bits, so 64-bit integers or double-precision float types are
  /// safe for storing these identifiers. The bot may not have access to the
  /// user and could be unable to use this identifier unless the user is
  /// already known to the bot by some other means.
  @JsonKey(name: 'user_id')
  int get userId;

  /// Optional. First name of the user, if the name was requested by the bot.
  @JsonKey(name: 'first_name')
  String? get firstName;

  /// Optional. Last name of the user, if the name was requested by the bot.
  @JsonKey(name: 'last_name')
  String? get lastName;

  /// Optional. Username of the user, if the username was requested by the
  /// bot.
  @JsonKey(name: 'username')
  String? get username;

  /// Optional. Available sizes of the chat photo, if the photo was requested
  /// by the bot.
  @JsonKey(name: 'photo')
  List<PhotoSize>? get photo;

  /// Create a copy of SharedUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SharedUserCopyWith<SharedUser> get copyWith =>
      _$SharedUserCopyWithImpl<SharedUser>(this as SharedUser, _$identity);

  /// Serializes this SharedUser to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'SharedUser(userId: $userId, firstName: $firstName, lastName: $lastName, username: $username, photo: $photo)';
  }
}

/// @nodoc
abstract mixin class $SharedUserCopyWith<$Res> {
  factory $SharedUserCopyWith(
    SharedUser value,
    $Res Function(SharedUser) _then,
  ) = _$SharedUserCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'user_id') int userId,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'username') String? username,
    @JsonKey(name: 'photo') List<PhotoSize>? photo,
  });
}

/// @nodoc
class _$SharedUserCopyWithImpl<$Res> implements $SharedUserCopyWith<$Res> {
  _$SharedUserCopyWithImpl(this._self, this._then);

  final SharedUser _self;
  final $Res Function(SharedUser) _then;

  /// Create a copy of SharedUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? username = freezed,
    Object? photo = freezed,
  }) {
    return _then(
      _self.copyWith(
        userId: null == userId
            ? _self.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as int,
        firstName: freezed == firstName
            ? _self.firstName
            : firstName // ignore: cast_nullable_to_non_nullable
                  as String?,
        lastName: freezed == lastName
            ? _self.lastName
            : lastName // ignore: cast_nullable_to_non_nullable
                  as String?,
        username: freezed == username
            ? _self.username
            : username // ignore: cast_nullable_to_non_nullable
                  as String?,
        photo: freezed == photo
            ? _self.photo
            : photo // ignore: cast_nullable_to_non_nullable
                  as List<PhotoSize>?,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [SharedUser].
extension SharedUserPatterns on SharedUser {
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
    TResult Function(_SharedUser value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SharedUser() when $default != null:
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
    TResult Function(_SharedUser value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SharedUser():
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
    TResult? Function(_SharedUser value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SharedUser() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SharedUser implements SharedUser {
  const _SharedUser({
    @JsonKey(name: 'user_id') required this.userId,
    @JsonKey(name: 'first_name') this.firstName,
    @JsonKey(name: 'last_name') this.lastName,
    @JsonKey(name: 'username') this.username,
    @JsonKey(name: 'photo') final List<PhotoSize>? photo,
  }) : _photo = photo;
  factory _SharedUser.fromJson(Map<String, dynamic> json) =>
      _$SharedUserFromJson(json);

  /// Identifier of the shared user. This number may have more than 32
  /// significant bits and some programming languages may have
  /// difficulty/silent defects in interpreting it. But it has at most 52
  /// significant bits, so 64-bit integers or double-precision float types are
  /// safe for storing these identifiers. The bot may not have access to the
  /// user and could be unable to use this identifier unless the user is
  /// already known to the bot by some other means.
  @override
  @JsonKey(name: 'user_id')
  final int userId;

  /// Optional. First name of the user, if the name was requested by the bot.
  @override
  @JsonKey(name: 'first_name')
  final String? firstName;

  /// Optional. Last name of the user, if the name was requested by the bot.
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;

  /// Optional. Username of the user, if the username was requested by the
  /// bot.
  @override
  @JsonKey(name: 'username')
  final String? username;

  /// Optional. Available sizes of the chat photo, if the photo was requested
  /// by the bot.
  final List<PhotoSize>? _photo;

  /// Optional. Available sizes of the chat photo, if the photo was requested
  /// by the bot.
  @override
  @JsonKey(name: 'photo')
  List<PhotoSize>? get photo {
    final value = _photo;
    if (value == null) return null;
    if (_photo is EqualUnmodifiableListView) return _photo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of SharedUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SharedUserCopyWith<_SharedUser> get copyWith =>
      __$SharedUserCopyWithImpl<_SharedUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SharedUserToJson(this);
  }

  @override
  String toString() {
    return 'SharedUser(userId: $userId, firstName: $firstName, lastName: $lastName, username: $username, photo: $photo)';
  }
}

/// @nodoc
abstract mixin class _$SharedUserCopyWith<$Res>
    implements $SharedUserCopyWith<$Res> {
  factory _$SharedUserCopyWith(
    _SharedUser value,
    $Res Function(_SharedUser) _then,
  ) = __$SharedUserCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'user_id') int userId,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'username') String? username,
    @JsonKey(name: 'photo') List<PhotoSize>? photo,
  });
}

/// @nodoc
class __$SharedUserCopyWithImpl<$Res> implements _$SharedUserCopyWith<$Res> {
  __$SharedUserCopyWithImpl(this._self, this._then);

  final _SharedUser _self;
  final $Res Function(_SharedUser) _then;

  /// Create a copy of SharedUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? userId = null,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? username = freezed,
    Object? photo = freezed,
  }) {
    return _then(
      _SharedUser(
        userId: null == userId
            ? _self.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as int,
        firstName: freezed == firstName
            ? _self.firstName
            : firstName // ignore: cast_nullable_to_non_nullable
                  as String?,
        lastName: freezed == lastName
            ? _self.lastName
            : lastName // ignore: cast_nullable_to_non_nullable
                  as String?,
        username: freezed == username
            ? _self.username
            : username // ignore: cast_nullable_to_non_nullable
                  as String?,
        photo: freezed == photo
            ? _self._photo
            : photo // ignore: cast_nullable_to_non_nullable
                  as List<PhotoSize>?,
      ),
    );
  }
}
