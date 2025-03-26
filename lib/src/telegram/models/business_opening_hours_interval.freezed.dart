// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'business_opening_hours_interval.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BusinessOpeningHoursInterval {
  /// The minute's sequence number in a week, starting on Monday, marking the start
  /// of the time interval during which the business is open; 0 - 7 24 60
  @JsonKey(name: 'opening_minute')
  int get openingMinute;

  /// The minute's sequence number in a week, starting on Monday, marking the end
  /// of the time interval during which the business is open; 0 - 8 24 60
  @JsonKey(name: 'closing_minute')
  int get closingMinute;

  /// Create a copy of BusinessOpeningHoursInterval
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BusinessOpeningHoursIntervalCopyWith<BusinessOpeningHoursInterval>
      get copyWith => _$BusinessOpeningHoursIntervalCopyWithImpl<
              BusinessOpeningHoursInterval>(
          this as BusinessOpeningHoursInterval, _$identity);

  /// Serializes this BusinessOpeningHoursInterval to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'BusinessOpeningHoursInterval(openingMinute: $openingMinute, closingMinute: $closingMinute)';
  }
}

/// @nodoc
abstract mixin class $BusinessOpeningHoursIntervalCopyWith<$Res> {
  factory $BusinessOpeningHoursIntervalCopyWith(
          BusinessOpeningHoursInterval value,
          $Res Function(BusinessOpeningHoursInterval) _then) =
      _$BusinessOpeningHoursIntervalCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'opening_minute') int openingMinute,
      @JsonKey(name: 'closing_minute') int closingMinute});
}

/// @nodoc
class _$BusinessOpeningHoursIntervalCopyWithImpl<$Res>
    implements $BusinessOpeningHoursIntervalCopyWith<$Res> {
  _$BusinessOpeningHoursIntervalCopyWithImpl(this._self, this._then);

  final BusinessOpeningHoursInterval _self;
  final $Res Function(BusinessOpeningHoursInterval) _then;

  /// Create a copy of BusinessOpeningHoursInterval
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? openingMinute = null,
    Object? closingMinute = null,
  }) {
    return _then(_self.copyWith(
      openingMinute: null == openingMinute
          ? _self.openingMinute
          : openingMinute // ignore: cast_nullable_to_non_nullable
              as int,
      closingMinute: null == closingMinute
          ? _self.closingMinute
          : closingMinute // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _BusinessOpeningHoursInterval implements BusinessOpeningHoursInterval {
  const _BusinessOpeningHoursInterval(
      {@JsonKey(name: 'opening_minute') required this.openingMinute,
      @JsonKey(name: 'closing_minute') required this.closingMinute});
  factory _BusinessOpeningHoursInterval.fromJson(Map<String, dynamic> json) =>
      _$BusinessOpeningHoursIntervalFromJson(json);

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

  /// Create a copy of BusinessOpeningHoursInterval
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BusinessOpeningHoursIntervalCopyWith<_BusinessOpeningHoursInterval>
      get copyWith => __$BusinessOpeningHoursIntervalCopyWithImpl<
          _BusinessOpeningHoursInterval>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BusinessOpeningHoursIntervalToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'BusinessOpeningHoursInterval(openingMinute: $openingMinute, closingMinute: $closingMinute)';
  }
}

/// @nodoc
abstract mixin class _$BusinessOpeningHoursIntervalCopyWith<$Res>
    implements $BusinessOpeningHoursIntervalCopyWith<$Res> {
  factory _$BusinessOpeningHoursIntervalCopyWith(
          _BusinessOpeningHoursInterval value,
          $Res Function(_BusinessOpeningHoursInterval) _then) =
      __$BusinessOpeningHoursIntervalCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'opening_minute') int openingMinute,
      @JsonKey(name: 'closing_minute') int closingMinute});
}

/// @nodoc
class __$BusinessOpeningHoursIntervalCopyWithImpl<$Res>
    implements _$BusinessOpeningHoursIntervalCopyWith<$Res> {
  __$BusinessOpeningHoursIntervalCopyWithImpl(this._self, this._then);

  final _BusinessOpeningHoursInterval _self;
  final $Res Function(_BusinessOpeningHoursInterval) _then;

  /// Create a copy of BusinessOpeningHoursInterval
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? openingMinute = null,
    Object? closingMinute = null,
  }) {
    return _then(_BusinessOpeningHoursInterval(
      openingMinute: null == openingMinute
          ? _self.openingMinute
          : openingMinute // ignore: cast_nullable_to_non_nullable
              as int,
      closingMinute: null == closingMinute
          ? _self.closingMinute
          : closingMinute // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}
