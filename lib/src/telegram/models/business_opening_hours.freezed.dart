// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'business_opening_hours.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BusinessOpeningHours {
  /// Unique name of the time zone for which the opening hours are defined.
  @JsonKey(name: 'time_zone_name')
  String get timeZoneName;

  /// Opening hours intervals for the business.
  @JsonKey(name: 'opening_hours')
  List<BusinessOpeningHoursInterval> get openingHours;

  /// Create a copy of BusinessOpeningHours
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BusinessOpeningHoursCopyWith<BusinessOpeningHours> get copyWith =>
      _$BusinessOpeningHoursCopyWithImpl<BusinessOpeningHours>(
          this as BusinessOpeningHours, _$identity);

  /// Serializes this BusinessOpeningHours to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'BusinessOpeningHours(timeZoneName: $timeZoneName, openingHours: $openingHours)';
  }
}

/// @nodoc
abstract mixin class $BusinessOpeningHoursCopyWith<$Res> {
  factory $BusinessOpeningHoursCopyWith(BusinessOpeningHours value,
          $Res Function(BusinessOpeningHours) _then) =
      _$BusinessOpeningHoursCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'time_zone_name') String timeZoneName,
      @JsonKey(name: 'opening_hours')
      List<BusinessOpeningHoursInterval> openingHours});
}

/// @nodoc
class _$BusinessOpeningHoursCopyWithImpl<$Res>
    implements $BusinessOpeningHoursCopyWith<$Res> {
  _$BusinessOpeningHoursCopyWithImpl(this._self, this._then);

  final BusinessOpeningHours _self;
  final $Res Function(BusinessOpeningHours) _then;

  /// Create a copy of BusinessOpeningHours
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeZoneName = null,
    Object? openingHours = null,
  }) {
    return _then(_self.copyWith(
      timeZoneName: null == timeZoneName
          ? _self.timeZoneName
          : timeZoneName // ignore: cast_nullable_to_non_nullable
              as String,
      openingHours: null == openingHours
          ? _self.openingHours
          : openingHours // ignore: cast_nullable_to_non_nullable
              as List<BusinessOpeningHoursInterval>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _BusinessOpeningHours implements BusinessOpeningHours {
  const _BusinessOpeningHours(
      {@JsonKey(name: 'time_zone_name') required this.timeZoneName,
      @JsonKey(name: 'opening_hours')
      required final List<BusinessOpeningHoursInterval> openingHours})
      : _openingHours = openingHours;
  factory _BusinessOpeningHours.fromJson(Map<String, dynamic> json) =>
      _$BusinessOpeningHoursFromJson(json);

  /// Unique name of the time zone for which the opening hours are defined.
  @override
  @JsonKey(name: 'time_zone_name')
  final String timeZoneName;

  /// Opening hours intervals for the business.
  final List<BusinessOpeningHoursInterval> _openingHours;

  /// Opening hours intervals for the business.
  @override
  @JsonKey(name: 'opening_hours')
  List<BusinessOpeningHoursInterval> get openingHours {
    if (_openingHours is EqualUnmodifiableListView) return _openingHours;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_openingHours);
  }

  /// Create a copy of BusinessOpeningHours
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BusinessOpeningHoursCopyWith<_BusinessOpeningHours> get copyWith =>
      __$BusinessOpeningHoursCopyWithImpl<_BusinessOpeningHours>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BusinessOpeningHoursToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'BusinessOpeningHours(timeZoneName: $timeZoneName, openingHours: $openingHours)';
  }
}

/// @nodoc
abstract mixin class _$BusinessOpeningHoursCopyWith<$Res>
    implements $BusinessOpeningHoursCopyWith<$Res> {
  factory _$BusinessOpeningHoursCopyWith(_BusinessOpeningHours value,
          $Res Function(_BusinessOpeningHours) _then) =
      __$BusinessOpeningHoursCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'time_zone_name') String timeZoneName,
      @JsonKey(name: 'opening_hours')
      List<BusinessOpeningHoursInterval> openingHours});
}

/// @nodoc
class __$BusinessOpeningHoursCopyWithImpl<$Res>
    implements _$BusinessOpeningHoursCopyWith<$Res> {
  __$BusinessOpeningHoursCopyWithImpl(this._self, this._then);

  final _BusinessOpeningHours _self;
  final $Res Function(_BusinessOpeningHours) _then;

  /// Create a copy of BusinessOpeningHours
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? timeZoneName = null,
    Object? openingHours = null,
  }) {
    return _then(_BusinessOpeningHours(
      timeZoneName: null == timeZoneName
          ? _self.timeZoneName
          : timeZoneName // ignore: cast_nullable_to_non_nullable
              as String,
      openingHours: null == openingHours
          ? _self._openingHours
          : openingHours // ignore: cast_nullable_to_non_nullable
              as List<BusinessOpeningHoursInterval>,
    ));
  }
}
