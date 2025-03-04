// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'business_opening_hours.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BusinessOpeningHours _$BusinessOpeningHoursFromJson(Map<String, dynamic> json) {
  return _BusinessOpeningHours.fromJson(json);
}

/// @nodoc
mixin _$BusinessOpeningHours {
  /// Unique name of the time zone for which the opening hours are defined.
  @JsonKey(name: 'time_zone_name')
  String get timeZoneName => throw _privateConstructorUsedError;

  /// Opening hours intervals for the business.
  @JsonKey(name: 'opening_hours')
  List<BusinessOpeningHoursInterval> get openingHours =>
      throw _privateConstructorUsedError;

  /// Serializes this BusinessOpeningHours to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BusinessOpeningHours
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BusinessOpeningHoursCopyWith<BusinessOpeningHours> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessOpeningHoursCopyWith<$Res> {
  factory $BusinessOpeningHoursCopyWith(BusinessOpeningHours value,
          $Res Function(BusinessOpeningHours) then) =
      _$BusinessOpeningHoursCopyWithImpl<$Res, BusinessOpeningHours>;
  @useResult
  $Res call(
      {@JsonKey(name: 'time_zone_name') String timeZoneName,
      @JsonKey(name: 'opening_hours')
      List<BusinessOpeningHoursInterval> openingHours});
}

/// @nodoc
class _$BusinessOpeningHoursCopyWithImpl<$Res,
        $Val extends BusinessOpeningHours>
    implements $BusinessOpeningHoursCopyWith<$Res> {
  _$BusinessOpeningHoursCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BusinessOpeningHours
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeZoneName = null,
    Object? openingHours = null,
  }) {
    return _then(_value.copyWith(
      timeZoneName: null == timeZoneName
          ? _value.timeZoneName
          : timeZoneName // ignore: cast_nullable_to_non_nullable
              as String,
      openingHours: null == openingHours
          ? _value.openingHours
          : openingHours // ignore: cast_nullable_to_non_nullable
              as List<BusinessOpeningHoursInterval>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BusinessOpeningHoursImplCopyWith<$Res>
    implements $BusinessOpeningHoursCopyWith<$Res> {
  factory _$$BusinessOpeningHoursImplCopyWith(_$BusinessOpeningHoursImpl value,
          $Res Function(_$BusinessOpeningHoursImpl) then) =
      __$$BusinessOpeningHoursImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'time_zone_name') String timeZoneName,
      @JsonKey(name: 'opening_hours')
      List<BusinessOpeningHoursInterval> openingHours});
}

/// @nodoc
class __$$BusinessOpeningHoursImplCopyWithImpl<$Res>
    extends _$BusinessOpeningHoursCopyWithImpl<$Res, _$BusinessOpeningHoursImpl>
    implements _$$BusinessOpeningHoursImplCopyWith<$Res> {
  __$$BusinessOpeningHoursImplCopyWithImpl(_$BusinessOpeningHoursImpl _value,
      $Res Function(_$BusinessOpeningHoursImpl) _then)
      : super(_value, _then);

  /// Create a copy of BusinessOpeningHours
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeZoneName = null,
    Object? openingHours = null,
  }) {
    return _then(_$BusinessOpeningHoursImpl(
      timeZoneName: null == timeZoneName
          ? _value.timeZoneName
          : timeZoneName // ignore: cast_nullable_to_non_nullable
              as String,
      openingHours: null == openingHours
          ? _value._openingHours
          : openingHours // ignore: cast_nullable_to_non_nullable
              as List<BusinessOpeningHoursInterval>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BusinessOpeningHoursImpl implements _BusinessOpeningHours {
  const _$BusinessOpeningHoursImpl(
      {@JsonKey(name: 'time_zone_name') required this.timeZoneName,
      @JsonKey(name: 'opening_hours')
      required final List<BusinessOpeningHoursInterval> openingHours})
      : _openingHours = openingHours;

  factory _$BusinessOpeningHoursImpl.fromJson(Map<String, dynamic> json) =>
      _$$BusinessOpeningHoursImplFromJson(json);

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

  @override
  String toString() {
    return 'BusinessOpeningHours(timeZoneName: $timeZoneName, openingHours: $openingHours)';
  }

  /// Create a copy of BusinessOpeningHours
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BusinessOpeningHoursImplCopyWith<_$BusinessOpeningHoursImpl>
      get copyWith =>
          __$$BusinessOpeningHoursImplCopyWithImpl<_$BusinessOpeningHoursImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BusinessOpeningHoursImplToJson(
      this,
    );
  }
}

abstract class _BusinessOpeningHours implements BusinessOpeningHours {
  const factory _BusinessOpeningHours(
          {@JsonKey(name: 'time_zone_name') required final String timeZoneName,
          @JsonKey(name: 'opening_hours')
          required final List<BusinessOpeningHoursInterval> openingHours}) =
      _$BusinessOpeningHoursImpl;

  factory _BusinessOpeningHours.fromJson(Map<String, dynamic> json) =
      _$BusinessOpeningHoursImpl.fromJson;

  /// Unique name of the time zone for which the opening hours are defined.
  @override
  @JsonKey(name: 'time_zone_name')
  String get timeZoneName;

  /// Opening hours intervals for the business.
  @override
  @JsonKey(name: 'opening_hours')
  List<BusinessOpeningHoursInterval> get openingHours;

  /// Create a copy of BusinessOpeningHours
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BusinessOpeningHoursImplCopyWith<_$BusinessOpeningHoursImpl>
      get copyWith => throw _privateConstructorUsedError;
}
