// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reaction_count.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReactionCount {
  /// Type of the reaction.
  @JsonKey(name: 'type')
  ReactionType get type;

  /// Number of times the reaction was added.
  @JsonKey(name: 'total_count')
  int get totalCount;

  /// Create a copy of ReactionCount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReactionCountCopyWith<ReactionCount> get copyWith =>
      _$ReactionCountCopyWithImpl<ReactionCount>(
        this as ReactionCount,
        _$identity,
      );

  /// Serializes this ReactionCount to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'ReactionCount(type: $type, totalCount: $totalCount)';
  }
}

/// @nodoc
abstract mixin class $ReactionCountCopyWith<$Res> {
  factory $ReactionCountCopyWith(
    ReactionCount value,
    $Res Function(ReactionCount) _then,
  ) = _$ReactionCountCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'type') ReactionType type,
    @JsonKey(name: 'total_count') int totalCount,
  });

  $ReactionTypeCopyWith<$Res> get type;
}

/// @nodoc
class _$ReactionCountCopyWithImpl<$Res>
    implements $ReactionCountCopyWith<$Res> {
  _$ReactionCountCopyWithImpl(this._self, this._then);

  final ReactionCount _self;
  final $Res Function(ReactionCount) _then;

  /// Create a copy of ReactionCount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? type = null, Object? totalCount = null}) {
    return _then(
      _self.copyWith(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as ReactionType,
        totalCount: null == totalCount
            ? _self.totalCount
            : totalCount // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }

  /// Create a copy of ReactionCount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReactionTypeCopyWith<$Res> get type {
    return $ReactionTypeCopyWith<$Res>(_self.type, (value) {
      return _then(_self.copyWith(type: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ReactionCount].
extension ReactionCountPatterns on ReactionCount {
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
    TResult Function(_ReactionCount value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReactionCount() when $default != null:
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
    TResult Function(_ReactionCount value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReactionCount():
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
    TResult? Function(_ReactionCount value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReactionCount() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ReactionCount implements ReactionCount {
  const _ReactionCount({
    @JsonKey(name: 'type') required this.type,
    @JsonKey(name: 'total_count') required this.totalCount,
  });
  factory _ReactionCount.fromJson(Map<String, dynamic> json) =>
      _$ReactionCountFromJson(json);

  /// Type of the reaction.
  @override
  @JsonKey(name: 'type')
  final ReactionType type;

  /// Number of times the reaction was added.
  @override
  @JsonKey(name: 'total_count')
  final int totalCount;

  /// Create a copy of ReactionCount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ReactionCountCopyWith<_ReactionCount> get copyWith =>
      __$ReactionCountCopyWithImpl<_ReactionCount>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ReactionCountToJson(this);
  }

  @override
  String toString() {
    return 'ReactionCount(type: $type, totalCount: $totalCount)';
  }
}

/// @nodoc
abstract mixin class _$ReactionCountCopyWith<$Res>
    implements $ReactionCountCopyWith<$Res> {
  factory _$ReactionCountCopyWith(
    _ReactionCount value,
    $Res Function(_ReactionCount) _then,
  ) = __$ReactionCountCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') ReactionType type,
    @JsonKey(name: 'total_count') int totalCount,
  });

  @override
  $ReactionTypeCopyWith<$Res> get type;
}

/// @nodoc
class __$ReactionCountCopyWithImpl<$Res>
    implements _$ReactionCountCopyWith<$Res> {
  __$ReactionCountCopyWithImpl(this._self, this._then);

  final _ReactionCount _self;
  final $Res Function(_ReactionCount) _then;

  /// Create a copy of ReactionCount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? type = null, Object? totalCount = null}) {
    return _then(
      _ReactionCount(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as ReactionType,
        totalCount: null == totalCount
            ? _self.totalCount
            : totalCount // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }

  /// Create a copy of ReactionCount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReactionTypeCopyWith<$Res> get type {
    return $ReactionTypeCopyWith<$Res>(_self.type, (value) {
      return _then(_self.copyWith(type: value));
    });
  }
}
