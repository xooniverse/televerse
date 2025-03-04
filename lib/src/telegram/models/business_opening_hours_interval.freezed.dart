// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'business_opening_hours_interval.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BusinessOpeningHoursInterval _$BusinessOpeningHoursIntervalFromJson(
    Map<String, dynamic> json) {
  return _BusinessOpeningHoursInterval.fromJson(json);
}

/// @nodoc
mixin _$BusinessOpeningHoursInterval {
  /// The minute's sequence number in a week, starting on Monday, marking the start
  /// of the time interval during which the business is open; 0 - 7 24 60
  @JsonKey(name: 'opening_minute')
  int get openingMinute => throw _privateConstructorUsedError;

  /// The minute's sequence number in a week, starting on Monday, marking the end
  /// of the time interval during which the business is open; 0 - 8 24 60
  @JsonKey(name: 'closing_minute')
  int get closingMinute => throw _privateConstructorUsedError;

  /// Serializes this BusinessOpeningHoursInterval to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BusinessOpeningHoursInterval
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BusinessOpeningHoursIntervalCopyWith<BusinessOpeningHoursInterval>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessOpeningHoursIntervalCopyWith<$Res> {
  factory $BusinessOpeningHoursIntervalCopyWith(
          BusinessOpeningHoursInterval value,
          $Res Function(BusinessOpeningHoursInterval) then) =
      _$BusinessOpeningHoursIntervalCopyWithImpl<$Res,
          BusinessOpeningHoursInterval>;
  @useResult
  $Res call(
      {@JsonKey(name: 'opening_minute') int openingMinute,
      @JsonKey(name: 'closing_minute') int closingMinute});
}

/// @nodoc
class _$BusinessOpeningHoursIntervalCopyWithImpl<$Res,
        $Val extends BusinessOpeningHoursInterval>
    implements $BusinessOpeningHoursIntervalCopyWith<$Res> {
  _$BusinessOpeningHoursIntervalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BusinessOpeningHoursInterval
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? openingMinute = null,
    Object? closingMinute = null,
  }) {
    return _then(_value.copyWith(
      openingMinute: null == openingMinute
          ? _value.openingMinute
          : openingMinute // ignore: cast_nullable_to_non_nullable
              as int,
      closingMinute: null == closingMinute
          ? _value.closingMinute
          : closingMinute // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BusinessOpeningHoursIntervalImplCopyWith<$Res>
    implements $BusinessOpeningHoursIntervalCopyWith<$Res> {
  factory _$$BusinessOpeningHoursIntervalImplCopyWith(
          _$BusinessOpeningHoursIntervalImpl value,
          $Res Function(_$BusinessOpeningHoursIntervalImpl) then) =
      __$$BusinessOpeningHoursIntervalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'opening_minute') int openingMinute,
      @JsonKey(name: 'closing_minute') int closingMinute});
}

/// @nodoc
class __$$BusinessOpeningHoursIntervalImplCopyWithImpl<$Res>
    extends _$BusinessOpeningHoursIntervalCopyWithImpl<$Res,
        _$BusinessOpeningHoursIntervalImpl>
    implements _$$BusinessOpeningHoursIntervalImplCopyWith<$Res> {
  __$$BusinessOpeningHoursIntervalImplCopyWithImpl(
      _$BusinessOpeningHoursIntervalImpl _value,
      $Res Function(_$BusinessOpeningHoursIntervalImpl) _then)
      : super(_value, _then);

  /// Create a copy of BusinessOpeningHoursInterval
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? openingMinute = null,
    Object? closingMinute = null,
  }) {
    return _then(_$BusinessOpeningHoursIntervalImpl(
      openingMinute: null == openingMinute
          ? _value.openingMinute
          : openingMinute // ignore: cast_nullable_to_non_nullable
              as int,
      closingMinute: null == closingMinute
          ? _value.closingMinute
          : closingMinute // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BusinessOpeningHoursIntervalImpl
    implements _BusinessOpeningHoursInterval {
  const _$BusinessOpeningHoursIntervalImpl(
      {@JsonKey(name: 'opening_minute') required this.openingMinute,
      @JsonKey(name: 'closing_minute') required this.closingMinute});

  factory _$BusinessOpeningHoursIntervalImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BusinessOpeningHoursIntervalImplFromJson(json);

  /// The minute's sequence number in a week, starting on Monday, marking the start
  /// of the time interval during which the business is open; 0 - 7 24 60
  @override
  @JsonKey(name: 'opening_minute')
  final int openingMinute;

  /// The minute's sequence number in a week, starting on Monday, marking the end
  /// of the time interval during which the business is open; 0 - 8 24 60
  @override
  @JsonKey(name: 'closing_minute')
  final int closingMinute;

  @override
  String toString() {
    return 'BusinessOpeningHoursInterval(openingMinute: $openingMinute, closingMinute: $closingMinute)';
  }

  /// Create a copy of BusinessOpeningHoursInterval
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BusinessOpeningHoursIntervalImplCopyWith<
          _$BusinessOpeningHoursIntervalImpl>
      get copyWith => __$$BusinessOpeningHoursIntervalImplCopyWithImpl<
          _$BusinessOpeningHoursIntervalImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BusinessOpeningHoursIntervalImplToJson(
      this,
    );
  }
}

abstract class _BusinessOpeningHoursInterval
    implements BusinessOpeningHoursInterval {
  const factory _BusinessOpeningHoursInterval(
          {@JsonKey(name: 'opening_minute') required final int openingMinute,
          @JsonKey(name: 'closing_minute') required final int closingMinute}) =
      _$BusinessOpeningHoursIntervalImpl;

  factory _BusinessOpeningHoursInterval.fromJson(Map<String, dynamic> json) =
      _$BusinessOpeningHoursIntervalImpl.fromJson;

  /// The minute's sequence number in a week, starting on Monday, marking the start
  /// of the time interval during which the business is open; 0 - 7 24 60
  @override
  @JsonKey(name: 'opening_minute')
  int get openingMinute;

  /// The minute's sequence number in a week, starting on Monday, marking the end
  /// of the time interval during which the business is open; 0 - 8 24 60
  @override
  @JsonKey(name: 'closing_minute')
  int get closingMinute;

  /// Create a copy of BusinessOpeningHoursInterval
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BusinessOpeningHoursIntervalImplCopyWith<
          _$BusinessOpeningHoursIntervalImpl>
      get copyWith => throw _privateConstructorUsedError;
}
