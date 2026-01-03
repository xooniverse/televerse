// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_rating.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserRating {
  /// Current level of the user, indicating their reliability when purchasing digital goods and services. A higher level suggests a more trustworthy customer; a negative level is likely reason for concern.
  @JsonKey(name: 'level')
  int get level;

  /// Numerical value of the user's rating; the higher the rating, the better
  @JsonKey(name: 'rating')
  int get rating;

  /// The rating value required to get the current level
  @JsonKey(name: 'current_level_rating')
  int get currentLevelRating;

  /// Optional. The rating value required to get to the next level; omitted if the maximum level was reached
  @JsonKey(name: 'next_level_rating')
  int? get nextLevelRating;

  /// Create a copy of UserRating
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserRatingCopyWith<UserRating> get copyWith =>
      _$UserRatingCopyWithImpl<UserRating>(this as UserRating, _$identity);

  /// Serializes this UserRating to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'UserRating(level: $level, rating: $rating, currentLevelRating: $currentLevelRating, nextLevelRating: $nextLevelRating)';
  }
}

/// @nodoc
abstract mixin class $UserRatingCopyWith<$Res> {
  factory $UserRatingCopyWith(
    UserRating value,
    $Res Function(UserRating) _then,
  ) = _$UserRatingCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'level') int level,
    @JsonKey(name: 'rating') int rating,
    @JsonKey(name: 'current_level_rating') int currentLevelRating,
    @JsonKey(name: 'next_level_rating') int? nextLevelRating,
  });
}

/// @nodoc
class _$UserRatingCopyWithImpl<$Res> implements $UserRatingCopyWith<$Res> {
  _$UserRatingCopyWithImpl(this._self, this._then);

  final UserRating _self;
  final $Res Function(UserRating) _then;

  /// Create a copy of UserRating
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = null,
    Object? rating = null,
    Object? currentLevelRating = null,
    Object? nextLevelRating = freezed,
  }) {
    return _then(
      _self.copyWith(
        level: null == level
            ? _self.level
            : level // ignore: cast_nullable_to_non_nullable
                  as int,
        rating: null == rating
            ? _self.rating
            : rating // ignore: cast_nullable_to_non_nullable
                  as int,
        currentLevelRating: null == currentLevelRating
            ? _self.currentLevelRating
            : currentLevelRating // ignore: cast_nullable_to_non_nullable
                  as int,
        nextLevelRating: freezed == nextLevelRating
            ? _self.nextLevelRating
            : nextLevelRating // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [UserRating].
extension UserRatingPatterns on UserRating {
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
    TResult Function(_UserRating value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserRating() when $default != null:
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
    TResult Function(_UserRating value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserRating():
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
    TResult? Function(_UserRating value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserRating() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UserRating implements UserRating {
  const _UserRating({
    @JsonKey(name: 'level') required this.level,
    @JsonKey(name: 'rating') required this.rating,
    @JsonKey(name: 'current_level_rating') required this.currentLevelRating,
    @JsonKey(name: 'next_level_rating') this.nextLevelRating,
  });
  factory _UserRating.fromJson(Map<String, dynamic> json) =>
      _$UserRatingFromJson(json);

  /// Current level of the user, indicating their reliability when purchasing digital goods and services. A higher level suggests a more trustworthy customer; a negative level is likely reason for concern.
  @override
  @JsonKey(name: 'level')
  final int level;

  /// Numerical value of the user's rating; the higher the rating, the better
  @override
  @JsonKey(name: 'rating')
  final int rating;

  /// The rating value required to get the current level
  @override
  @JsonKey(name: 'current_level_rating')
  final int currentLevelRating;

  /// Optional. The rating value required to get to the next level; omitted if the maximum level was reached
  @override
  @JsonKey(name: 'next_level_rating')
  final int? nextLevelRating;

  /// Create a copy of UserRating
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserRatingCopyWith<_UserRating> get copyWith =>
      __$UserRatingCopyWithImpl<_UserRating>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UserRatingToJson(this);
  }

  @override
  String toString() {
    return 'UserRating(level: $level, rating: $rating, currentLevelRating: $currentLevelRating, nextLevelRating: $nextLevelRating)';
  }
}

/// @nodoc
abstract mixin class _$UserRatingCopyWith<$Res>
    implements $UserRatingCopyWith<$Res> {
  factory _$UserRatingCopyWith(
    _UserRating value,
    $Res Function(_UserRating) _then,
  ) = __$UserRatingCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'level') int level,
    @JsonKey(name: 'rating') int rating,
    @JsonKey(name: 'current_level_rating') int currentLevelRating,
    @JsonKey(name: 'next_level_rating') int? nextLevelRating,
  });
}

/// @nodoc
class __$UserRatingCopyWithImpl<$Res> implements _$UserRatingCopyWith<$Res> {
  __$UserRatingCopyWithImpl(this._self, this._then);

  final _UserRating _self;
  final $Res Function(_UserRating) _then;

  /// Create a copy of UserRating
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? level = null,
    Object? rating = null,
    Object? currentLevelRating = null,
    Object? nextLevelRating = freezed,
  }) {
    return _then(
      _UserRating(
        level: null == level
            ? _self.level
            : level // ignore: cast_nullable_to_non_nullable
                  as int,
        rating: null == rating
            ? _self.rating
            : rating // ignore: cast_nullable_to_non_nullable
                  as int,
        currentLevelRating: null == currentLevelRating
            ? _self.currentLevelRating
            : currentLevelRating // ignore: cast_nullable_to_non_nullable
                  as int,
        nextLevelRating: freezed == nextLevelRating
            ? _self.nextLevelRating
            : nextLevelRating // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}
