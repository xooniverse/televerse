// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prepared_inline_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PreparedInlineMessage {
  /// Unique identifier of the prepared message.
  @JsonKey(name: 'id')
  String get id;

  /// Expiration date of the prepared message, in Unix time. Expired prepared
  /// messages can no longer be used.
  @JsonKey(name: 'expiration_date')
  int get expirationDate;

  /// Create a copy of PreparedInlineMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PreparedInlineMessageCopyWith<PreparedInlineMessage> get copyWith =>
      _$PreparedInlineMessageCopyWithImpl<PreparedInlineMessage>(
        this as PreparedInlineMessage,
        _$identity,
      );

  /// Serializes this PreparedInlineMessage to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'PreparedInlineMessage(id: $id, expirationDate: $expirationDate)';
  }
}

/// @nodoc
abstract mixin class $PreparedInlineMessageCopyWith<$Res> {
  factory $PreparedInlineMessageCopyWith(
    PreparedInlineMessage value,
    $Res Function(PreparedInlineMessage) _then,
  ) = _$PreparedInlineMessageCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'id') String id,
    @JsonKey(name: 'expiration_date') int expirationDate,
  });
}

/// @nodoc
class _$PreparedInlineMessageCopyWithImpl<$Res>
    implements $PreparedInlineMessageCopyWith<$Res> {
  _$PreparedInlineMessageCopyWithImpl(this._self, this._then);

  final PreparedInlineMessage _self;
  final $Res Function(PreparedInlineMessage) _then;

  /// Create a copy of PreparedInlineMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? expirationDate = null}) {
    return _then(
      _self.copyWith(
        id: null == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        expirationDate: null == expirationDate
            ? _self.expirationDate
            : expirationDate // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [PreparedInlineMessage].
extension PreparedInlineMessagePatterns on PreparedInlineMessage {
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
    TResult Function(_PreparedInlineMessage value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PreparedInlineMessage() when $default != null:
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
    TResult Function(_PreparedInlineMessage value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PreparedInlineMessage():
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
    TResult? Function(_PreparedInlineMessage value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PreparedInlineMessage() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PreparedInlineMessage implements PreparedInlineMessage {
  const _PreparedInlineMessage({
    @JsonKey(name: 'id') required this.id,
    @JsonKey(name: 'expiration_date') required this.expirationDate,
  });
  factory _PreparedInlineMessage.fromJson(Map<String, dynamic> json) =>
      _$PreparedInlineMessageFromJson(json);

  /// Unique identifier of the prepared message.
  @override
  @JsonKey(name: 'id')
  final String id;

  /// Expiration date of the prepared message, in Unix time. Expired prepared
  /// messages can no longer be used.
  @override
  @JsonKey(name: 'expiration_date')
  final int expirationDate;

  /// Create a copy of PreparedInlineMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PreparedInlineMessageCopyWith<_PreparedInlineMessage> get copyWith =>
      __$PreparedInlineMessageCopyWithImpl<_PreparedInlineMessage>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$PreparedInlineMessageToJson(this);
  }

  @override
  String toString() {
    return 'PreparedInlineMessage(id: $id, expirationDate: $expirationDate)';
  }
}

/// @nodoc
abstract mixin class _$PreparedInlineMessageCopyWith<$Res>
    implements $PreparedInlineMessageCopyWith<$Res> {
  factory _$PreparedInlineMessageCopyWith(
    _PreparedInlineMessage value,
    $Res Function(_PreparedInlineMessage) _then,
  ) = __$PreparedInlineMessageCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') String id,
    @JsonKey(name: 'expiration_date') int expirationDate,
  });
}

/// @nodoc
class __$PreparedInlineMessageCopyWithImpl<$Res>
    implements _$PreparedInlineMessageCopyWith<$Res> {
  __$PreparedInlineMessageCopyWithImpl(this._self, this._then);

  final _PreparedInlineMessage _self;
  final $Res Function(_PreparedInlineMessage) _then;

  /// Create a copy of PreparedInlineMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? id = null, Object? expirationDate = null}) {
    return _then(
      _PreparedInlineMessage(
        id: null == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        expirationDate: null == expirationDate
            ? _self.expirationDate
            : expirationDate // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}
