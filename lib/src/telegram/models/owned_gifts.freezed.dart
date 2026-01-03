// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'owned_gifts.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OwnedGifts {
  /// The total number of gifts owned by the user or the chat
  @JsonKey(name: 'total_count')
  int get totalCount;

  /// The list of gifts
  @JsonKey(name: 'gifts')
  List<OwnedGift> get gifts;

  /// Optional. Offset for pagination
  @JsonKey(name: 'next_offset')
  String? get nextOffset;

  /// Create a copy of OwnedGifts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OwnedGiftsCopyWith<OwnedGifts> get copyWith =>
      _$OwnedGiftsCopyWithImpl<OwnedGifts>(this as OwnedGifts, _$identity);

  /// Serializes this OwnedGifts to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'OwnedGifts(totalCount: $totalCount, gifts: $gifts, nextOffset: $nextOffset)';
  }
}

/// @nodoc
abstract mixin class $OwnedGiftsCopyWith<$Res> {
  factory $OwnedGiftsCopyWith(
    OwnedGifts value,
    $Res Function(OwnedGifts) _then,
  ) = _$OwnedGiftsCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'total_count') int totalCount,
    @JsonKey(name: 'gifts') List<OwnedGift> gifts,
    @JsonKey(name: 'next_offset') String? nextOffset,
  });
}

/// @nodoc
class _$OwnedGiftsCopyWithImpl<$Res> implements $OwnedGiftsCopyWith<$Res> {
  _$OwnedGiftsCopyWithImpl(this._self, this._then);

  final OwnedGifts _self;
  final $Res Function(OwnedGifts) _then;

  /// Create a copy of OwnedGifts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? gifts = null,
    Object? nextOffset = freezed,
  }) {
    return _then(
      _self.copyWith(
        totalCount: null == totalCount
            ? _self.totalCount
            : totalCount // ignore: cast_nullable_to_non_nullable
                  as int,
        gifts: null == gifts
            ? _self.gifts
            : gifts // ignore: cast_nullable_to_non_nullable
                  as List<OwnedGift>,
        nextOffset: freezed == nextOffset
            ? _self.nextOffset
            : nextOffset // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [OwnedGifts].
extension OwnedGiftsPatterns on OwnedGifts {
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
    TResult Function(_OwnedGifts value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OwnedGifts() when $default != null:
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
    TResult Function(_OwnedGifts value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OwnedGifts():
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
    TResult? Function(_OwnedGifts value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OwnedGifts() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _OwnedGifts implements OwnedGifts {
  const _OwnedGifts({
    @JsonKey(name: 'total_count') required this.totalCount,
    @JsonKey(name: 'gifts') required final List<OwnedGift> gifts,
    @JsonKey(name: 'next_offset') this.nextOffset,
  }) : _gifts = gifts;
  factory _OwnedGifts.fromJson(Map<String, dynamic> json) =>
      _$OwnedGiftsFromJson(json);

  /// The total number of gifts owned by the user or the chat
  @override
  @JsonKey(name: 'total_count')
  final int totalCount;

  /// The list of gifts
  final List<OwnedGift> _gifts;

  /// The list of gifts
  @override
  @JsonKey(name: 'gifts')
  List<OwnedGift> get gifts {
    if (_gifts is EqualUnmodifiableListView) return _gifts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_gifts);
  }

  /// Optional. Offset for pagination
  @override
  @JsonKey(name: 'next_offset')
  final String? nextOffset;

  /// Create a copy of OwnedGifts
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OwnedGiftsCopyWith<_OwnedGifts> get copyWith =>
      __$OwnedGiftsCopyWithImpl<_OwnedGifts>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OwnedGiftsToJson(this);
  }

  @override
  String toString() {
    return 'OwnedGifts(totalCount: $totalCount, gifts: $gifts, nextOffset: $nextOffset)';
  }
}

/// @nodoc
abstract mixin class _$OwnedGiftsCopyWith<$Res>
    implements $OwnedGiftsCopyWith<$Res> {
  factory _$OwnedGiftsCopyWith(
    _OwnedGifts value,
    $Res Function(_OwnedGifts) _then,
  ) = __$OwnedGiftsCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'total_count') int totalCount,
    @JsonKey(name: 'gifts') List<OwnedGift> gifts,
    @JsonKey(name: 'next_offset') String? nextOffset,
  });
}

/// @nodoc
class __$OwnedGiftsCopyWithImpl<$Res> implements _$OwnedGiftsCopyWith<$Res> {
  __$OwnedGiftsCopyWithImpl(this._self, this._then);

  final _OwnedGifts _self;
  final $Res Function(_OwnedGifts) _then;

  /// Create a copy of OwnedGifts
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? totalCount = null,
    Object? gifts = null,
    Object? nextOffset = freezed,
  }) {
    return _then(
      _OwnedGifts(
        totalCount: null == totalCount
            ? _self.totalCount
            : totalCount // ignore: cast_nullable_to_non_nullable
                  as int,
        gifts: null == gifts
            ? _self._gifts
            : gifts // ignore: cast_nullable_to_non_nullable
                  as List<OwnedGift>,
        nextOffset: freezed == nextOffset
            ? _self.nextOffset
            : nextOffset // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}
