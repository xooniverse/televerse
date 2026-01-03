// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatLocation {
  /// The location to which the supergroup is connected.
  @JsonKey(name: 'location')
  Location get location;

  /// Location address; 1-64 characters, as defined by the chat owner
  @JsonKey(name: 'address')
  String get address;

  /// Create a copy of ChatLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChatLocationCopyWith<ChatLocation> get copyWith =>
      _$ChatLocationCopyWithImpl<ChatLocation>(
        this as ChatLocation,
        _$identity,
      );

  /// Serializes this ChatLocation to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'ChatLocation(location: $location, address: $address)';
  }
}

/// @nodoc
abstract mixin class $ChatLocationCopyWith<$Res> {
  factory $ChatLocationCopyWith(
    ChatLocation value,
    $Res Function(ChatLocation) _then,
  ) = _$ChatLocationCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'location') Location location,
    @JsonKey(name: 'address') String address,
  });

  $LocationCopyWith<$Res> get location;
}

/// @nodoc
class _$ChatLocationCopyWithImpl<$Res> implements $ChatLocationCopyWith<$Res> {
  _$ChatLocationCopyWithImpl(this._self, this._then);

  final ChatLocation _self;
  final $Res Function(ChatLocation) _then;

  /// Create a copy of ChatLocation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? location = null, Object? address = null}) {
    return _then(
      _self.copyWith(
        location: null == location
            ? _self.location
            : location // ignore: cast_nullable_to_non_nullable
                  as Location,
        address: null == address
            ? _self.address
            : address // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }

  /// Create a copy of ChatLocation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res> get location {
    return $LocationCopyWith<$Res>(_self.location, (value) {
      return _then(_self.copyWith(location: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ChatLocation].
extension ChatLocationPatterns on ChatLocation {
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
    TResult Function(_ChatLocation value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChatLocation() when $default != null:
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
    TResult Function(_ChatLocation value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatLocation():
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
    TResult? Function(_ChatLocation value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatLocation() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ChatLocation implements ChatLocation {
  const _ChatLocation({
    @JsonKey(name: 'location') required this.location,
    @JsonKey(name: 'address') required this.address,
  });
  factory _ChatLocation.fromJson(Map<String, dynamic> json) =>
      _$ChatLocationFromJson(json);

  /// The location to which the supergroup is connected.
  @override
  @JsonKey(name: 'location')
  final Location location;

  /// Location address; 1-64 characters, as defined by the chat owner
  @override
  @JsonKey(name: 'address')
  final String address;

  /// Create a copy of ChatLocation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChatLocationCopyWith<_ChatLocation> get copyWith =>
      __$ChatLocationCopyWithImpl<_ChatLocation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChatLocationToJson(this);
  }

  @override
  String toString() {
    return 'ChatLocation(location: $location, address: $address)';
  }
}

/// @nodoc
abstract mixin class _$ChatLocationCopyWith<$Res>
    implements $ChatLocationCopyWith<$Res> {
  factory _$ChatLocationCopyWith(
    _ChatLocation value,
    $Res Function(_ChatLocation) _then,
  ) = __$ChatLocationCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'location') Location location,
    @JsonKey(name: 'address') String address,
  });

  @override
  $LocationCopyWith<$Res> get location;
}

/// @nodoc
class __$ChatLocationCopyWithImpl<$Res>
    implements _$ChatLocationCopyWith<$Res> {
  __$ChatLocationCopyWithImpl(this._self, this._then);

  final _ChatLocation _self;
  final $Res Function(_ChatLocation) _then;

  /// Create a copy of ChatLocation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? location = null, Object? address = null}) {
    return _then(
      _ChatLocation(
        location: null == location
            ? _self.location
            : location // ignore: cast_nullable_to_non_nullable
                  as Location,
        address: null == address
            ? _self.address
            : address // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }

  /// Create a copy of ChatLocation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res> get location {
    return $LocationCopyWith<$Res>(_self.location, (value) {
      return _then(_self.copyWith(location: value));
    });
  }
}
