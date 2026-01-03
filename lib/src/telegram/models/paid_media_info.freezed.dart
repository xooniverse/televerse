// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paid_media_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaidMediaInfo {
  /// The number of Telegram Stars that must be paid to buy access to the
  /// media.
  @JsonKey(name: 'star_count')
  int get starCount;

  /// Information about the paid media.
  @JsonKey(name: 'paid_media')
  List<PaidMedia> get paidMedia;

  /// Create a copy of PaidMediaInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PaidMediaInfoCopyWith<PaidMediaInfo> get copyWith =>
      _$PaidMediaInfoCopyWithImpl<PaidMediaInfo>(
        this as PaidMediaInfo,
        _$identity,
      );

  /// Serializes this PaidMediaInfo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'PaidMediaInfo(starCount: $starCount, paidMedia: $paidMedia)';
  }
}

/// @nodoc
abstract mixin class $PaidMediaInfoCopyWith<$Res> {
  factory $PaidMediaInfoCopyWith(
    PaidMediaInfo value,
    $Res Function(PaidMediaInfo) _then,
  ) = _$PaidMediaInfoCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'star_count') int starCount,
    @JsonKey(name: 'paid_media') List<PaidMedia> paidMedia,
  });
}

/// @nodoc
class _$PaidMediaInfoCopyWithImpl<$Res>
    implements $PaidMediaInfoCopyWith<$Res> {
  _$PaidMediaInfoCopyWithImpl(this._self, this._then);

  final PaidMediaInfo _self;
  final $Res Function(PaidMediaInfo) _then;

  /// Create a copy of PaidMediaInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? starCount = null, Object? paidMedia = null}) {
    return _then(
      _self.copyWith(
        starCount: null == starCount
            ? _self.starCount
            : starCount // ignore: cast_nullable_to_non_nullable
                  as int,
        paidMedia: null == paidMedia
            ? _self.paidMedia
            : paidMedia // ignore: cast_nullable_to_non_nullable
                  as List<PaidMedia>,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [PaidMediaInfo].
extension PaidMediaInfoPatterns on PaidMediaInfo {
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
    TResult Function(_PaidMediaInfo value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PaidMediaInfo() when $default != null:
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
    TResult Function(_PaidMediaInfo value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaidMediaInfo():
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
    TResult? Function(_PaidMediaInfo value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaidMediaInfo() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PaidMediaInfo implements PaidMediaInfo {
  const _PaidMediaInfo({
    @JsonKey(name: 'star_count') required this.starCount,
    @JsonKey(name: 'paid_media') required final List<PaidMedia> paidMedia,
  }) : _paidMedia = paidMedia;
  factory _PaidMediaInfo.fromJson(Map<String, dynamic> json) =>
      _$PaidMediaInfoFromJson(json);

  /// The number of Telegram Stars that must be paid to buy access to the
  /// media.
  @override
  @JsonKey(name: 'star_count')
  final int starCount;

  /// Information about the paid media.
  final List<PaidMedia> _paidMedia;

  /// Information about the paid media.
  @override
  @JsonKey(name: 'paid_media')
  List<PaidMedia> get paidMedia {
    if (_paidMedia is EqualUnmodifiableListView) return _paidMedia;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_paidMedia);
  }

  /// Create a copy of PaidMediaInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PaidMediaInfoCopyWith<_PaidMediaInfo> get copyWith =>
      __$PaidMediaInfoCopyWithImpl<_PaidMediaInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PaidMediaInfoToJson(this);
  }

  @override
  String toString() {
    return 'PaidMediaInfo(starCount: $starCount, paidMedia: $paidMedia)';
  }
}

/// @nodoc
abstract mixin class _$PaidMediaInfoCopyWith<$Res>
    implements $PaidMediaInfoCopyWith<$Res> {
  factory _$PaidMediaInfoCopyWith(
    _PaidMediaInfo value,
    $Res Function(_PaidMediaInfo) _then,
  ) = __$PaidMediaInfoCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'star_count') int starCount,
    @JsonKey(name: 'paid_media') List<PaidMedia> paidMedia,
  });
}

/// @nodoc
class __$PaidMediaInfoCopyWithImpl<$Res>
    implements _$PaidMediaInfoCopyWith<$Res> {
  __$PaidMediaInfoCopyWithImpl(this._self, this._then);

  final _PaidMediaInfo _self;
  final $Res Function(_PaidMediaInfo) _then;

  /// Create a copy of PaidMediaInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? starCount = null, Object? paidMedia = null}) {
    return _then(
      _PaidMediaInfo(
        starCount: null == starCount
            ? _self.starCount
            : starCount // ignore: cast_nullable_to_non_nullable
                  as int,
        paidMedia: null == paidMedia
            ? _self._paidMedia
            : paidMedia // ignore: cast_nullable_to_non_nullable
                  as List<PaidMedia>,
      ),
    );
  }
}
