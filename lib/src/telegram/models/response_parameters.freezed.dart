// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResponseParameters {
  /// Optional. The group has been migrated to a supergroup with the specified
  /// identifier. This number may have more than 32 significant bits and some
  /// programming languages may have difficulty/silent defects in interpreting
  /// it. But it has at most 52 significant bits, so a signed 64-bit integer
  /// or double-precision float type are safe for storing this identifier.
  @JsonKey(name: 'migrate_to_chat_id')
  int? get migrateToChatId;

  /// Optional. In case of exceeding flood control, the number of seconds left
  /// to wait before the request can be repeated
  @JsonKey(name: 'retry_after')
  int? get retryAfter;

  /// Create a copy of ResponseParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResponseParametersCopyWith<ResponseParameters> get copyWith =>
      _$ResponseParametersCopyWithImpl<ResponseParameters>(
        this as ResponseParameters,
        _$identity,
      );

  /// Serializes this ResponseParameters to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'ResponseParameters(migrateToChatId: $migrateToChatId, retryAfter: $retryAfter)';
  }
}

/// @nodoc
abstract mixin class $ResponseParametersCopyWith<$Res> {
  factory $ResponseParametersCopyWith(
    ResponseParameters value,
    $Res Function(ResponseParameters) _then,
  ) = _$ResponseParametersCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'migrate_to_chat_id') int? migrateToChatId,
    @JsonKey(name: 'retry_after') int? retryAfter,
  });
}

/// @nodoc
class _$ResponseParametersCopyWithImpl<$Res>
    implements $ResponseParametersCopyWith<$Res> {
  _$ResponseParametersCopyWithImpl(this._self, this._then);

  final ResponseParameters _self;
  final $Res Function(ResponseParameters) _then;

  /// Create a copy of ResponseParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? migrateToChatId = freezed, Object? retryAfter = freezed}) {
    return _then(
      _self.copyWith(
        migrateToChatId: freezed == migrateToChatId
            ? _self.migrateToChatId
            : migrateToChatId // ignore: cast_nullable_to_non_nullable
                  as int?,
        retryAfter: freezed == retryAfter
            ? _self.retryAfter
            : retryAfter // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [ResponseParameters].
extension ResponseParametersPatterns on ResponseParameters {
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
    TResult Function(_ResponseParameters value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ResponseParameters() when $default != null:
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
    TResult Function(_ResponseParameters value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ResponseParameters():
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
    TResult? Function(_ResponseParameters value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ResponseParameters() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ResponseParameters implements ResponseParameters {
  const _ResponseParameters({
    @JsonKey(name: 'migrate_to_chat_id') this.migrateToChatId,
    @JsonKey(name: 'retry_after') this.retryAfter,
  });
  factory _ResponseParameters.fromJson(Map<String, dynamic> json) =>
      _$ResponseParametersFromJson(json);

  /// Optional. The group has been migrated to a supergroup with the specified
  /// identifier. This number may have more than 32 significant bits and some
  /// programming languages may have difficulty/silent defects in interpreting
  /// it. But it has at most 52 significant bits, so a signed 64-bit integer
  /// or double-precision float type are safe for storing this identifier.
  @override
  @JsonKey(name: 'migrate_to_chat_id')
  final int? migrateToChatId;

  /// Optional. In case of exceeding flood control, the number of seconds left
  /// to wait before the request can be repeated
  @override
  @JsonKey(name: 'retry_after')
  final int? retryAfter;

  /// Create a copy of ResponseParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ResponseParametersCopyWith<_ResponseParameters> get copyWith =>
      __$ResponseParametersCopyWithImpl<_ResponseParameters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ResponseParametersToJson(this);
  }

  @override
  String toString() {
    return 'ResponseParameters(migrateToChatId: $migrateToChatId, retryAfter: $retryAfter)';
  }
}

/// @nodoc
abstract mixin class _$ResponseParametersCopyWith<$Res>
    implements $ResponseParametersCopyWith<$Res> {
  factory _$ResponseParametersCopyWith(
    _ResponseParameters value,
    $Res Function(_ResponseParameters) _then,
  ) = __$ResponseParametersCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'migrate_to_chat_id') int? migrateToChatId,
    @JsonKey(name: 'retry_after') int? retryAfter,
  });
}

/// @nodoc
class __$ResponseParametersCopyWithImpl<$Res>
    implements _$ResponseParametersCopyWith<$Res> {
  __$ResponseParametersCopyWithImpl(this._self, this._then);

  final _ResponseParameters _self;
  final $Res Function(_ResponseParameters) _then;

  /// Create a copy of ResponseParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? migrateToChatId = freezed, Object? retryAfter = freezed}) {
    return _then(
      _ResponseParameters(
        migrateToChatId: freezed == migrateToChatId
            ? _self.migrateToChatId
            : migrateToChatId // ignore: cast_nullable_to_non_nullable
                  as int?,
        retryAfter: freezed == retryAfter
            ? _self.retryAfter
            : retryAfter // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}
