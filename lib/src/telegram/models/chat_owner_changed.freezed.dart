// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_owner_changed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatOwnerChanged {
  /// The new owner of the chat.
  @JsonKey(name: 'new_owner')
  User get newOwner;

  /// Create a copy of ChatOwnerChanged
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChatOwnerChangedCopyWith<ChatOwnerChanged> get copyWith =>
      _$ChatOwnerChangedCopyWithImpl<ChatOwnerChanged>(
        this as ChatOwnerChanged,
        _$identity,
      );

  /// Serializes this ChatOwnerChanged to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'ChatOwnerChanged(newOwner: $newOwner)';
  }
}

/// @nodoc
abstract mixin class $ChatOwnerChangedCopyWith<$Res> {
  factory $ChatOwnerChangedCopyWith(
    ChatOwnerChanged value,
    $Res Function(ChatOwnerChanged) _then,
  ) = _$ChatOwnerChangedCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'new_owner') User newOwner});

  $UserCopyWith<$Res> get newOwner;
}

/// @nodoc
class _$ChatOwnerChangedCopyWithImpl<$Res>
    implements $ChatOwnerChangedCopyWith<$Res> {
  _$ChatOwnerChangedCopyWithImpl(this._self, this._then);

  final ChatOwnerChanged _self;
  final $Res Function(ChatOwnerChanged) _then;

  /// Create a copy of ChatOwnerChanged
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? newOwner = null}) {
    return _then(
      _self.copyWith(
        newOwner: null == newOwner
            ? _self.newOwner
            : newOwner // ignore: cast_nullable_to_non_nullable
                  as User,
      ),
    );
  }

  /// Create a copy of ChatOwnerChanged
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get newOwner {
    return $UserCopyWith<$Res>(_self.newOwner, (value) {
      return _then(_self.copyWith(newOwner: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ChatOwnerChanged].
extension ChatOwnerChangedPatterns on ChatOwnerChanged {
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
    TResult Function(_ChatOwnerChanged value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChatOwnerChanged() when $default != null:
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
    TResult Function(_ChatOwnerChanged value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatOwnerChanged():
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
    TResult? Function(_ChatOwnerChanged value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatOwnerChanged() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ChatOwnerChanged implements ChatOwnerChanged {
  const _ChatOwnerChanged({@JsonKey(name: 'new_owner') required this.newOwner});
  factory _ChatOwnerChanged.fromJson(Map<String, dynamic> json) =>
      _$ChatOwnerChangedFromJson(json);

  /// The new owner of the chat.
  @override
  @JsonKey(name: 'new_owner')
  final User newOwner;

  /// Create a copy of ChatOwnerChanged
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChatOwnerChangedCopyWith<_ChatOwnerChanged> get copyWith =>
      __$ChatOwnerChangedCopyWithImpl<_ChatOwnerChanged>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChatOwnerChangedToJson(this);
  }

  @override
  String toString() {
    return 'ChatOwnerChanged(newOwner: $newOwner)';
  }
}

/// @nodoc
abstract mixin class _$ChatOwnerChangedCopyWith<$Res>
    implements $ChatOwnerChangedCopyWith<$Res> {
  factory _$ChatOwnerChangedCopyWith(
    _ChatOwnerChanged value,
    $Res Function(_ChatOwnerChanged) _then,
  ) = __$ChatOwnerChangedCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'new_owner') User newOwner});

  @override
  $UserCopyWith<$Res> get newOwner;
}

/// @nodoc
class __$ChatOwnerChangedCopyWithImpl<$Res>
    implements _$ChatOwnerChangedCopyWith<$Res> {
  __$ChatOwnerChangedCopyWithImpl(this._self, this._then);

  final _ChatOwnerChanged _self;
  final $Res Function(_ChatOwnerChanged) _then;

  /// Create a copy of ChatOwnerChanged
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? newOwner = null}) {
    return _then(
      _ChatOwnerChanged(
        newOwner: null == newOwner
            ? _self.newOwner
            : newOwner // ignore: cast_nullable_to_non_nullable
                  as User,
      ),
    );
  }

  /// Create a copy of ChatOwnerChanged
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get newOwner {
    return $UserCopyWith<$Res>(_self.newOwner, (value) {
      return _then(_self.copyWith(newOwner: value));
    });
  }
}
