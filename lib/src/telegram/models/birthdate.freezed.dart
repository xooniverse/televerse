// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'birthdate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Birthdate {
  /// Day of the user's birth; 1-31.
  @JsonKey(name: 'day')
  int get day;

  /// Month of the user's birth; 1-12.
  @JsonKey(name: 'month')
  int get month;

  /// Optional. Year of the user's birth.
  @JsonKey(name: 'year')
  int? get year;

  /// Create a copy of Birthdate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BirthdateCopyWith<Birthdate> get copyWith =>
      _$BirthdateCopyWithImpl<Birthdate>(this as Birthdate, _$identity);

  /// Serializes this Birthdate to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'Birthdate(day: $day, month: $month, year: $year)';
  }
}

/// @nodoc
abstract mixin class $BirthdateCopyWith<$Res> {
  factory $BirthdateCopyWith(Birthdate value, $Res Function(Birthdate) _then) =
      _$BirthdateCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'day') int day,
    @JsonKey(name: 'month') int month,
    @JsonKey(name: 'year') int? year,
  });
}

/// @nodoc
class _$BirthdateCopyWithImpl<$Res> implements $BirthdateCopyWith<$Res> {
  _$BirthdateCopyWithImpl(this._self, this._then);

  final Birthdate _self;
  final $Res Function(Birthdate) _then;

  /// Create a copy of Birthdate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? month = null,
    Object? year = freezed,
  }) {
    return _then(
      _self.copyWith(
        day: null == day
            ? _self.day
            : day // ignore: cast_nullable_to_non_nullable
                  as int,
        month: null == month
            ? _self.month
            : month // ignore: cast_nullable_to_non_nullable
                  as int,
        year: freezed == year
            ? _self.year
            : year // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [Birthdate].
extension BirthdatePatterns on Birthdate {
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
    TResult Function(_Birthdate value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Birthdate() when $default != null:
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
    TResult Function(_Birthdate value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Birthdate():
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
    TResult? Function(_Birthdate value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Birthdate() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Birthdate implements Birthdate {
  const _Birthdate({
    @JsonKey(name: 'day') required this.day,
    @JsonKey(name: 'month') required this.month,
    @JsonKey(name: 'year') this.year,
  });
  factory _Birthdate.fromJson(Map<String, dynamic> json) =>
      _$BirthdateFromJson(json);

  /// Day of the user's birth; 1-31.
  @override
  @JsonKey(name: 'day')
  final int day;

  /// Month of the user's birth; 1-12.
  @override
  @JsonKey(name: 'month')
  final int month;

  /// Optional. Year of the user's birth.
  @override
  @JsonKey(name: 'year')
  final int? year;

  /// Create a copy of Birthdate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BirthdateCopyWith<_Birthdate> get copyWith =>
      __$BirthdateCopyWithImpl<_Birthdate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BirthdateToJson(this);
  }

  @override
  String toString() {
    return 'Birthdate(day: $day, month: $month, year: $year)';
  }
}

/// @nodoc
abstract mixin class _$BirthdateCopyWith<$Res>
    implements $BirthdateCopyWith<$Res> {
  factory _$BirthdateCopyWith(
    _Birthdate value,
    $Res Function(_Birthdate) _then,
  ) = __$BirthdateCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'day') int day,
    @JsonKey(name: 'month') int month,
    @JsonKey(name: 'year') int? year,
  });
}

/// @nodoc
class __$BirthdateCopyWithImpl<$Res> implements _$BirthdateCopyWith<$Res> {
  __$BirthdateCopyWithImpl(this._self, this._then);

  final _Birthdate _self;
  final $Res Function(_Birthdate) _then;

  /// Create a copy of Birthdate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? day = null,
    Object? month = null,
    Object? year = freezed,
  }) {
    return _then(
      _Birthdate(
        day: null == day
            ? _self.day
            : day // ignore: cast_nullable_to_non_nullable
                  as int,
        month: null == month
            ? _self.month
            : month // ignore: cast_nullable_to_non_nullable
                  as int,
        year: freezed == year
            ? _self.year
            : year // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}
