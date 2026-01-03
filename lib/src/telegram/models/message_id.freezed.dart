// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MessageId {
  /// Unique message identifier
  @JsonKey(name: 'message_id')
  int get messageId;

  /// Create a copy of MessageId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MessageIdCopyWith<MessageId> get copyWith =>
      _$MessageIdCopyWithImpl<MessageId>(this as MessageId, _$identity);

  /// Serializes this MessageId to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'MessageId(messageId: $messageId)';
  }
}

/// @nodoc
abstract mixin class $MessageIdCopyWith<$Res> {
  factory $MessageIdCopyWith(MessageId value, $Res Function(MessageId) _then) =
      _$MessageIdCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'message_id') int messageId});
}

/// @nodoc
class _$MessageIdCopyWithImpl<$Res> implements $MessageIdCopyWith<$Res> {
  _$MessageIdCopyWithImpl(this._self, this._then);

  final MessageId _self;
  final $Res Function(MessageId) _then;

  /// Create a copy of MessageId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? messageId = null}) {
    return _then(
      _self.copyWith(
        messageId: null == messageId
            ? _self.messageId
            : messageId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [MessageId].
extension MessageIdPatterns on MessageId {
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
    TResult Function(_MessageId value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MessageId() when $default != null:
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
    TResult Function(_MessageId value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MessageId():
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
    TResult? Function(_MessageId value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MessageId() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _MessageId implements MessageId {
  const _MessageId({@JsonKey(name: 'message_id') required this.messageId});
  factory _MessageId.fromJson(Map<String, dynamic> json) =>
      _$MessageIdFromJson(json);

  /// Unique message identifier
  @override
  @JsonKey(name: 'message_id')
  final int messageId;

  /// Create a copy of MessageId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MessageIdCopyWith<_MessageId> get copyWith =>
      __$MessageIdCopyWithImpl<_MessageId>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MessageIdToJson(this);
  }

  @override
  String toString() {
    return 'MessageId(messageId: $messageId)';
  }
}

/// @nodoc
abstract mixin class _$MessageIdCopyWith<$Res>
    implements $MessageIdCopyWith<$Res> {
  factory _$MessageIdCopyWith(
    _MessageId value,
    $Res Function(_MessageId) _then,
  ) = __$MessageIdCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'message_id') int messageId});
}

/// @nodoc
class __$MessageIdCopyWithImpl<$Res> implements _$MessageIdCopyWith<$Res> {
  __$MessageIdCopyWithImpl(this._self, this._then);

  final _MessageId _self;
  final $Res Function(_MessageId) _then;

  /// Create a copy of MessageId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? messageId = null}) {
    return _then(
      _MessageId(
        messageId: null == messageId
            ? _self.messageId
            : messageId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}
