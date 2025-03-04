// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'birthdate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Birthdate _$BirthdateFromJson(Map<String, dynamic> json) {
  return _Birthdate.fromJson(json);
}

/// @nodoc
mixin _$Birthdate {
  /// Day of the user's birth; 1-31.
  @JsonKey(name: 'day')
  int get day => throw _privateConstructorUsedError;

  /// Month of the user's birth; 1-12.
  @JsonKey(name: 'month')
  int get month => throw _privateConstructorUsedError;

  /// Optional. Year of the user's birth.
  @JsonKey(name: 'year')
  int? get year => throw _privateConstructorUsedError;

  /// Serializes this Birthdate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Birthdate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BirthdateCopyWith<Birthdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BirthdateCopyWith<$Res> {
  factory $BirthdateCopyWith(Birthdate value, $Res Function(Birthdate) then) =
      _$BirthdateCopyWithImpl<$Res, Birthdate>;
  @useResult
  $Res call(
      {@JsonKey(name: 'day') int day,
      @JsonKey(name: 'month') int month,
      @JsonKey(name: 'year') int? year});
}

/// @nodoc
class _$BirthdateCopyWithImpl<$Res, $Val extends Birthdate>
    implements $BirthdateCopyWith<$Res> {
  _$BirthdateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Birthdate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? month = null,
    Object? year = freezed,
  }) {
    return _then(_value.copyWith(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BirthdateImplCopyWith<$Res>
    implements $BirthdateCopyWith<$Res> {
  factory _$$BirthdateImplCopyWith(
          _$BirthdateImpl value, $Res Function(_$BirthdateImpl) then) =
      __$$BirthdateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'day') int day,
      @JsonKey(name: 'month') int month,
      @JsonKey(name: 'year') int? year});
}

/// @nodoc
class __$$BirthdateImplCopyWithImpl<$Res>
    extends _$BirthdateCopyWithImpl<$Res, _$BirthdateImpl>
    implements _$$BirthdateImplCopyWith<$Res> {
  __$$BirthdateImplCopyWithImpl(
      _$BirthdateImpl _value, $Res Function(_$BirthdateImpl) _then)
      : super(_value, _then);

  /// Create a copy of Birthdate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? month = null,
    Object? year = freezed,
  }) {
    return _then(_$BirthdateImpl(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BirthdateImpl implements _Birthdate {
  const _$BirthdateImpl(
      {@JsonKey(name: 'day') required this.day,
      @JsonKey(name: 'month') required this.month,
      @JsonKey(name: 'year') this.year});

  factory _$BirthdateImpl.fromJson(Map<String, dynamic> json) =>
      _$$BirthdateImplFromJson(json);

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

  @override
  String toString() {
    return 'Birthdate(day: $day, month: $month, year: $year)';
  }

  /// Create a copy of Birthdate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BirthdateImplCopyWith<_$BirthdateImpl> get copyWith =>
      __$$BirthdateImplCopyWithImpl<_$BirthdateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BirthdateImplToJson(
      this,
    );
  }
}

abstract class _Birthdate implements Birthdate {
  const factory _Birthdate(
      {@JsonKey(name: 'day') required final int day,
      @JsonKey(name: 'month') required final int month,
      @JsonKey(name: 'year') final int? year}) = _$BirthdateImpl;

  factory _Birthdate.fromJson(Map<String, dynamic> json) =
      _$BirthdateImpl.fromJson;

  /// Day of the user's birth; 1-31.
  @override
  @JsonKey(name: 'day')
  int get day;

  /// Month of the user's birth; 1-12.
  @override
  @JsonKey(name: 'month')
  int get month;

  /// Optional. Year of the user's birth.
  @override
  @JsonKey(name: 'year')
  int? get year;

  /// Create a copy of Birthdate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BirthdateImplCopyWith<_$BirthdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
