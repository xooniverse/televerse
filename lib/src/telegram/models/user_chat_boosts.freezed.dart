// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_chat_boosts.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserChatBoosts {
  /// The list of boosts added to the chat by the user
  @JsonKey(name: 'boosts')
  List<ChatBoost> get boosts;

  /// Create a copy of UserChatBoosts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserChatBoostsCopyWith<UserChatBoosts> get copyWith =>
      _$UserChatBoostsCopyWithImpl<UserChatBoosts>(
        this as UserChatBoosts,
        _$identity,
      );

  /// Serializes this UserChatBoosts to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'UserChatBoosts(boosts: $boosts)';
  }
}

/// @nodoc
abstract mixin class $UserChatBoostsCopyWith<$Res> {
  factory $UserChatBoostsCopyWith(
    UserChatBoosts value,
    $Res Function(UserChatBoosts) _then,
  ) = _$UserChatBoostsCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'boosts') List<ChatBoost> boosts});
}

/// @nodoc
class _$UserChatBoostsCopyWithImpl<$Res>
    implements $UserChatBoostsCopyWith<$Res> {
  _$UserChatBoostsCopyWithImpl(this._self, this._then);

  final UserChatBoosts _self;
  final $Res Function(UserChatBoosts) _then;

  /// Create a copy of UserChatBoosts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? boosts = null}) {
    return _then(
      _self.copyWith(
        boosts: null == boosts
            ? _self.boosts
            : boosts // ignore: cast_nullable_to_non_nullable
                  as List<ChatBoost>,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [UserChatBoosts].
extension UserChatBoostsPatterns on UserChatBoosts {
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
    TResult Function(_UserChatBoosts value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserChatBoosts() when $default != null:
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
    TResult Function(_UserChatBoosts value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserChatBoosts():
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
    TResult? Function(_UserChatBoosts value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserChatBoosts() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UserChatBoosts implements UserChatBoosts {
  const _UserChatBoosts({
    @JsonKey(name: 'boosts') required final List<ChatBoost> boosts,
  }) : _boosts = boosts;
  factory _UserChatBoosts.fromJson(Map<String, dynamic> json) =>
      _$UserChatBoostsFromJson(json);

  /// The list of boosts added to the chat by the user
  final List<ChatBoost> _boosts;

  /// The list of boosts added to the chat by the user
  @override
  @JsonKey(name: 'boosts')
  List<ChatBoost> get boosts {
    if (_boosts is EqualUnmodifiableListView) return _boosts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_boosts);
  }

  /// Create a copy of UserChatBoosts
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserChatBoostsCopyWith<_UserChatBoosts> get copyWith =>
      __$UserChatBoostsCopyWithImpl<_UserChatBoosts>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UserChatBoostsToJson(this);
  }

  @override
  String toString() {
    return 'UserChatBoosts(boosts: $boosts)';
  }
}

/// @nodoc
abstract mixin class _$UserChatBoostsCopyWith<$Res>
    implements $UserChatBoostsCopyWith<$Res> {
  factory _$UserChatBoostsCopyWith(
    _UserChatBoosts value,
    $Res Function(_UserChatBoosts) _then,
  ) = __$UserChatBoostsCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'boosts') List<ChatBoost> boosts});
}

/// @nodoc
class __$UserChatBoostsCopyWithImpl<$Res>
    implements _$UserChatBoostsCopyWith<$Res> {
  __$UserChatBoostsCopyWithImpl(this._self, this._then);

  final _UserChatBoosts _self;
  final $Res Function(_UserChatBoosts) _then;

  /// Create a copy of UserChatBoosts
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? boosts = null}) {
    return _then(
      _UserChatBoosts(
        boosts: null == boosts
            ? _self._boosts
            : boosts // ignore: cast_nullable_to_non_nullable
                  as List<ChatBoost>,
      ),
    );
  }
}
