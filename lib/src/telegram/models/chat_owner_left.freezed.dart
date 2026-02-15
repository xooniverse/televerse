// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_owner_left.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatOwnerLeft {
  /// Optional. The user which will be the new owner of the chat if the
  /// previous owner does not return to the chat.
  @JsonKey(name: 'new_owner')
  User? get newOwner;

  /// Create a copy of ChatOwnerLeft
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChatOwnerLeftCopyWith<ChatOwnerLeft> get copyWith =>
      _$ChatOwnerLeftCopyWithImpl<ChatOwnerLeft>(
        this as ChatOwnerLeft,
        _$identity,
      );

  /// Serializes this ChatOwnerLeft to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'ChatOwnerLeft(newOwner: $newOwner)';
  }
}

/// @nodoc
abstract mixin class $ChatOwnerLeftCopyWith<$Res> {
  factory $ChatOwnerLeftCopyWith(
    ChatOwnerLeft value,
    $Res Function(ChatOwnerLeft) _then,
  ) = _$ChatOwnerLeftCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'new_owner') User? newOwner});

  $UserCopyWith<$Res>? get newOwner;
}

/// @nodoc
class _$ChatOwnerLeftCopyWithImpl<$Res>
    implements $ChatOwnerLeftCopyWith<$Res> {
  _$ChatOwnerLeftCopyWithImpl(this._self, this._then);

  final ChatOwnerLeft _self;
  final $Res Function(ChatOwnerLeft) _then;

  /// Create a copy of ChatOwnerLeft
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? newOwner = freezed}) {
    return _then(
      _self.copyWith(
        newOwner: freezed == newOwner
            ? _self.newOwner
            : newOwner // ignore: cast_nullable_to_non_nullable
                  as User?,
      ),
    );
  }

  /// Create a copy of ChatOwnerLeft
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get newOwner {
    if (_self.newOwner == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_self.newOwner!, (value) {
      return _then(_self.copyWith(newOwner: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ChatOwnerLeft].
extension ChatOwnerLeftPatterns on ChatOwnerLeft {
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
    TResult Function(_ChatOwnerLeft value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChatOwnerLeft() when $default != null:
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
    TResult Function(_ChatOwnerLeft value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatOwnerLeft():
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
    TResult? Function(_ChatOwnerLeft value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatOwnerLeft() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ChatOwnerLeft implements ChatOwnerLeft {
  const _ChatOwnerLeft({@JsonKey(name: 'new_owner') this.newOwner});
  factory _ChatOwnerLeft.fromJson(Map<String, dynamic> json) =>
      _$ChatOwnerLeftFromJson(json);

  /// Optional. The user which will be the new owner of the chat if the
  /// previous owner does not return to the chat.
  @override
  @JsonKey(name: 'new_owner')
  final User? newOwner;

  /// Create a copy of ChatOwnerLeft
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChatOwnerLeftCopyWith<_ChatOwnerLeft> get copyWith =>
      __$ChatOwnerLeftCopyWithImpl<_ChatOwnerLeft>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChatOwnerLeftToJson(this);
  }

  @override
  String toString() {
    return 'ChatOwnerLeft(newOwner: $newOwner)';
  }
}

/// @nodoc
abstract mixin class _$ChatOwnerLeftCopyWith<$Res>
    implements $ChatOwnerLeftCopyWith<$Res> {
  factory _$ChatOwnerLeftCopyWith(
    _ChatOwnerLeft value,
    $Res Function(_ChatOwnerLeft) _then,
  ) = __$ChatOwnerLeftCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'new_owner') User? newOwner});

  @override
  $UserCopyWith<$Res>? get newOwner;
}

/// @nodoc
class __$ChatOwnerLeftCopyWithImpl<$Res>
    implements _$ChatOwnerLeftCopyWith<$Res> {
  __$ChatOwnerLeftCopyWithImpl(this._self, this._then);

  final _ChatOwnerLeft _self;
  final $Res Function(_ChatOwnerLeft) _then;

  /// Create a copy of ChatOwnerLeft
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? newOwner = freezed}) {
    return _then(
      _ChatOwnerLeft(
        newOwner: freezed == newOwner
            ? _self.newOwner
            : newOwner // ignore: cast_nullable_to_non_nullable
                  as User?,
      ),
    );
  }

  /// Create a copy of ChatOwnerLeft
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get newOwner {
    if (_self.newOwner == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_self.newOwner!, (value) {
      return _then(_self.copyWith(newOwner: value));
    });
  }
}
