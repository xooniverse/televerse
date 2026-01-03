// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'suggested_post_declined.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SuggestedPostDeclined {
  /// Optional. Message containing the suggested post. Note that the Message object in this field will not contain the reply_to_message field even if it itself is a reply.
  @JsonKey(name: 'suggested_post_message')
  Message? get suggestedPostMessage;

  /// Optional. Comment with which the post was declined
  @JsonKey(name: 'comment')
  String? get comment;

  /// Create a copy of SuggestedPostDeclined
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SuggestedPostDeclinedCopyWith<SuggestedPostDeclined> get copyWith =>
      _$SuggestedPostDeclinedCopyWithImpl<SuggestedPostDeclined>(
        this as SuggestedPostDeclined,
        _$identity,
      );

  /// Serializes this SuggestedPostDeclined to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'SuggestedPostDeclined(suggestedPostMessage: $suggestedPostMessage, comment: $comment)';
  }
}

/// @nodoc
abstract mixin class $SuggestedPostDeclinedCopyWith<$Res> {
  factory $SuggestedPostDeclinedCopyWith(
    SuggestedPostDeclined value,
    $Res Function(SuggestedPostDeclined) _then,
  ) = _$SuggestedPostDeclinedCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'suggested_post_message') Message? suggestedPostMessage,
    @JsonKey(name: 'comment') String? comment,
  });
}

/// @nodoc
class _$SuggestedPostDeclinedCopyWithImpl<$Res>
    implements $SuggestedPostDeclinedCopyWith<$Res> {
  _$SuggestedPostDeclinedCopyWithImpl(this._self, this._then);

  final SuggestedPostDeclined _self;
  final $Res Function(SuggestedPostDeclined) _then;

  /// Create a copy of SuggestedPostDeclined
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? suggestedPostMessage = freezed,
    Object? comment = freezed,
  }) {
    return _then(
      _self.copyWith(
        suggestedPostMessage: freezed == suggestedPostMessage
            ? _self.suggestedPostMessage
            : suggestedPostMessage // ignore: cast_nullable_to_non_nullable
                  as Message?,
        comment: freezed == comment
            ? _self.comment
            : comment // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [SuggestedPostDeclined].
extension SuggestedPostDeclinedPatterns on SuggestedPostDeclined {
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
    TResult Function(_SuggestedPostDeclined value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SuggestedPostDeclined() when $default != null:
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
    TResult Function(_SuggestedPostDeclined value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SuggestedPostDeclined():
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
    TResult? Function(_SuggestedPostDeclined value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SuggestedPostDeclined() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SuggestedPostDeclined implements SuggestedPostDeclined {
  const _SuggestedPostDeclined({
    @JsonKey(name: 'suggested_post_message') this.suggestedPostMessage,
    @JsonKey(name: 'comment') this.comment,
  });
  factory _SuggestedPostDeclined.fromJson(Map<String, dynamic> json) =>
      _$SuggestedPostDeclinedFromJson(json);

  /// Optional. Message containing the suggested post. Note that the Message object in this field will not contain the reply_to_message field even if it itself is a reply.
  @override
  @JsonKey(name: 'suggested_post_message')
  final Message? suggestedPostMessage;

  /// Optional. Comment with which the post was declined
  @override
  @JsonKey(name: 'comment')
  final String? comment;

  /// Create a copy of SuggestedPostDeclined
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SuggestedPostDeclinedCopyWith<_SuggestedPostDeclined> get copyWith =>
      __$SuggestedPostDeclinedCopyWithImpl<_SuggestedPostDeclined>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$SuggestedPostDeclinedToJson(this);
  }

  @override
  String toString() {
    return 'SuggestedPostDeclined(suggestedPostMessage: $suggestedPostMessage, comment: $comment)';
  }
}

/// @nodoc
abstract mixin class _$SuggestedPostDeclinedCopyWith<$Res>
    implements $SuggestedPostDeclinedCopyWith<$Res> {
  factory _$SuggestedPostDeclinedCopyWith(
    _SuggestedPostDeclined value,
    $Res Function(_SuggestedPostDeclined) _then,
  ) = __$SuggestedPostDeclinedCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'suggested_post_message') Message? suggestedPostMessage,
    @JsonKey(name: 'comment') String? comment,
  });
}

/// @nodoc
class __$SuggestedPostDeclinedCopyWithImpl<$Res>
    implements _$SuggestedPostDeclinedCopyWith<$Res> {
  __$SuggestedPostDeclinedCopyWithImpl(this._self, this._then);

  final _SuggestedPostDeclined _self;
  final $Res Function(_SuggestedPostDeclined) _then;

  /// Create a copy of SuggestedPostDeclined
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? suggestedPostMessage = freezed,
    Object? comment = freezed,
  }) {
    return _then(
      _SuggestedPostDeclined(
        suggestedPostMessage: freezed == suggestedPostMessage
            ? _self.suggestedPostMessage
            : suggestedPostMessage // ignore: cast_nullable_to_non_nullable
                  as Message?,
        comment: freezed == comment
            ? _self.comment
            : comment // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}
