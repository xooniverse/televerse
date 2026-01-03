// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paid_message_price_changed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaidMessagePriceChanged {
  /// The new number of Telegram Stars that must be paid by non-administrator
  /// users of the supergroup chat for each sent message
  @JsonKey(name: 'paid_message_star_count')
  int get paidMessageStarCount;

  /// Create a copy of PaidMessagePriceChanged
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PaidMessagePriceChangedCopyWith<PaidMessagePriceChanged> get copyWith =>
      _$PaidMessagePriceChangedCopyWithImpl<PaidMessagePriceChanged>(
        this as PaidMessagePriceChanged,
        _$identity,
      );

  /// Serializes this PaidMessagePriceChanged to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'PaidMessagePriceChanged(paidMessageStarCount: $paidMessageStarCount)';
  }
}

/// @nodoc
abstract mixin class $PaidMessagePriceChangedCopyWith<$Res> {
  factory $PaidMessagePriceChangedCopyWith(
    PaidMessagePriceChanged value,
    $Res Function(PaidMessagePriceChanged) _then,
  ) = _$PaidMessagePriceChangedCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'paid_message_star_count') int paidMessageStarCount,
  });
}

/// @nodoc
class _$PaidMessagePriceChangedCopyWithImpl<$Res>
    implements $PaidMessagePriceChangedCopyWith<$Res> {
  _$PaidMessagePriceChangedCopyWithImpl(this._self, this._then);

  final PaidMessagePriceChanged _self;
  final $Res Function(PaidMessagePriceChanged) _then;

  /// Create a copy of PaidMessagePriceChanged
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? paidMessageStarCount = null}) {
    return _then(
      _self.copyWith(
        paidMessageStarCount: null == paidMessageStarCount
            ? _self.paidMessageStarCount
            : paidMessageStarCount // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [PaidMessagePriceChanged].
extension PaidMessagePriceChangedPatterns on PaidMessagePriceChanged {
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
    TResult Function(_PaidMessagePriceChanged value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PaidMessagePriceChanged() when $default != null:
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
    TResult Function(_PaidMessagePriceChanged value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaidMessagePriceChanged():
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
    TResult? Function(_PaidMessagePriceChanged value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaidMessagePriceChanged() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PaidMessagePriceChanged implements PaidMessagePriceChanged {
  const _PaidMessagePriceChanged({
    @JsonKey(name: 'paid_message_star_count')
    required this.paidMessageStarCount,
  });
  factory _PaidMessagePriceChanged.fromJson(Map<String, dynamic> json) =>
      _$PaidMessagePriceChangedFromJson(json);

  /// The new number of Telegram Stars that must be paid by non-administrator
  /// users of the supergroup chat for each sent message
  @override
  @JsonKey(name: 'paid_message_star_count')
  final int paidMessageStarCount;

  /// Create a copy of PaidMessagePriceChanged
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PaidMessagePriceChangedCopyWith<_PaidMessagePriceChanged> get copyWith =>
      __$PaidMessagePriceChangedCopyWithImpl<_PaidMessagePriceChanged>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$PaidMessagePriceChangedToJson(this);
  }

  @override
  String toString() {
    return 'PaidMessagePriceChanged(paidMessageStarCount: $paidMessageStarCount)';
  }
}

/// @nodoc
abstract mixin class _$PaidMessagePriceChangedCopyWith<$Res>
    implements $PaidMessagePriceChangedCopyWith<$Res> {
  factory _$PaidMessagePriceChangedCopyWith(
    _PaidMessagePriceChanged value,
    $Res Function(_PaidMessagePriceChanged) _then,
  ) = __$PaidMessagePriceChangedCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'paid_message_star_count') int paidMessageStarCount,
  });
}

/// @nodoc
class __$PaidMessagePriceChangedCopyWithImpl<$Res>
    implements _$PaidMessagePriceChangedCopyWith<$Res> {
  __$PaidMessagePriceChangedCopyWithImpl(this._self, this._then);

  final _PaidMessagePriceChanged _self;
  final $Res Function(_PaidMessagePriceChanged) _then;

  /// Create a copy of PaidMessagePriceChanged
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? paidMessageStarCount = null}) {
    return _then(
      _PaidMessagePriceChanged(
        paidMessageStarCount: null == paidMessageStarCount
            ? _self.paidMessageStarCount
            : paidMessageStarCount // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}
