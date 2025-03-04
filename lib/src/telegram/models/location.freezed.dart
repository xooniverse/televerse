// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Location _$LocationFromJson(Map<String, dynamic> json) {
  return _Location.fromJson(json);
}

/// @nodoc
mixin _$Location {
  /// Longitude as defined by sender
  @JsonKey(name: 'longitude')
  double get longitude => throw _privateConstructorUsedError;

  /// Latitude as defined by sender
  @JsonKey(name: 'latitude')
  double get latitude => throw _privateConstructorUsedError;

  /// The radius of uncertainty for the location, measured in meters; 0-1500
  @JsonKey(name: 'horizontal_accuracy')
  double? get horizontalAccuracy => throw _privateConstructorUsedError;

  /// Optional. Time relative to the message sending date, during which the
  /// location can be updated; in seconds. For active live locations only.
  @JsonKey(name: 'live_period')
  int? get livePeriod => throw _privateConstructorUsedError;

  /// Optional. The direction in which user is moving, in degrees; 1-360. For
  /// active live locations only.
  @JsonKey(name: 'heading')
  int? get heading => throw _privateConstructorUsedError;

  /// Optional. The maximum distance for proximity alerts about approaching
  /// another chat member, in meters. For sent live locations only.
  @JsonKey(name: 'proximity_alert_radius')
  int? get proximityAlertRadius => throw _privateConstructorUsedError;

  /// Serializes this Location to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationCopyWith<Location> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res, Location>;
  @useResult
  $Res call(
      {@JsonKey(name: 'longitude') double longitude,
      @JsonKey(name: 'latitude') double latitude,
      @JsonKey(name: 'horizontal_accuracy') double? horizontalAccuracy,
      @JsonKey(name: 'live_period') int? livePeriod,
      @JsonKey(name: 'heading') int? heading,
      @JsonKey(name: 'proximity_alert_radius') int? proximityAlertRadius});
}

/// @nodoc
class _$LocationCopyWithImpl<$Res, $Val extends Location>
    implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? longitude = null,
    Object? latitude = null,
    Object? horizontalAccuracy = freezed,
    Object? livePeriod = freezed,
    Object? heading = freezed,
    Object? proximityAlertRadius = freezed,
  }) {
    return _then(_value.copyWith(
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      horizontalAccuracy: freezed == horizontalAccuracy
          ? _value.horizontalAccuracy
          : horizontalAccuracy // ignore: cast_nullable_to_non_nullable
              as double?,
      livePeriod: freezed == livePeriod
          ? _value.livePeriod
          : livePeriod // ignore: cast_nullable_to_non_nullable
              as int?,
      heading: freezed == heading
          ? _value.heading
          : heading // ignore: cast_nullable_to_non_nullable
              as int?,
      proximityAlertRadius: freezed == proximityAlertRadius
          ? _value.proximityAlertRadius
          : proximityAlertRadius // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationImplCopyWith<$Res>
    implements $LocationCopyWith<$Res> {
  factory _$$LocationImplCopyWith(
          _$LocationImpl value, $Res Function(_$LocationImpl) then) =
      __$$LocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'longitude') double longitude,
      @JsonKey(name: 'latitude') double latitude,
      @JsonKey(name: 'horizontal_accuracy') double? horizontalAccuracy,
      @JsonKey(name: 'live_period') int? livePeriod,
      @JsonKey(name: 'heading') int? heading,
      @JsonKey(name: 'proximity_alert_radius') int? proximityAlertRadius});
}

/// @nodoc
class __$$LocationImplCopyWithImpl<$Res>
    extends _$LocationCopyWithImpl<$Res, _$LocationImpl>
    implements _$$LocationImplCopyWith<$Res> {
  __$$LocationImplCopyWithImpl(
      _$LocationImpl _value, $Res Function(_$LocationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? longitude = null,
    Object? latitude = null,
    Object? horizontalAccuracy = freezed,
    Object? livePeriod = freezed,
    Object? heading = freezed,
    Object? proximityAlertRadius = freezed,
  }) {
    return _then(_$LocationImpl(
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      horizontalAccuracy: freezed == horizontalAccuracy
          ? _value.horizontalAccuracy
          : horizontalAccuracy // ignore: cast_nullable_to_non_nullable
              as double?,
      livePeriod: freezed == livePeriod
          ? _value.livePeriod
          : livePeriod // ignore: cast_nullable_to_non_nullable
              as int?,
      heading: freezed == heading
          ? _value.heading
          : heading // ignore: cast_nullable_to_non_nullable
              as int?,
      proximityAlertRadius: freezed == proximityAlertRadius
          ? _value.proximityAlertRadius
          : proximityAlertRadius // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationImpl implements _Location {
  const _$LocationImpl(
      {@JsonKey(name: 'longitude') required this.longitude,
      @JsonKey(name: 'latitude') required this.latitude,
      @JsonKey(name: 'horizontal_accuracy') this.horizontalAccuracy,
      @JsonKey(name: 'live_period') this.livePeriod,
      @JsonKey(name: 'heading') this.heading,
      @JsonKey(name: 'proximity_alert_radius') this.proximityAlertRadius});

  factory _$LocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationImplFromJson(json);

  /// Longitude as defined by sender
  @override
  @JsonKey(name: 'longitude')
  final double longitude;

  /// Latitude as defined by sender
  @override
  @JsonKey(name: 'latitude')
  final double latitude;

  /// The radius of uncertainty for the location, measured in meters; 0-1500
  @override
  @JsonKey(name: 'horizontal_accuracy')
  final double? horizontalAccuracy;

  /// Optional. Time relative to the message sending date, during which the
  /// location can be updated; in seconds. For active live locations only.
  @override
  @JsonKey(name: 'live_period')
  final int? livePeriod;

  /// Optional. The direction in which user is moving, in degrees; 1-360. For
  /// active live locations only.
  @override
  @JsonKey(name: 'heading')
  final int? heading;

  /// Optional. The maximum distance for proximity alerts about approaching
  /// another chat member, in meters. For sent live locations only.
  @override
  @JsonKey(name: 'proximity_alert_radius')
  final int? proximityAlertRadius;

  @override
  String toString() {
    return 'Location(longitude: $longitude, latitude: $latitude, horizontalAccuracy: $horizontalAccuracy, livePeriod: $livePeriod, heading: $heading, proximityAlertRadius: $proximityAlertRadius)';
  }

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      __$$LocationImplCopyWithImpl<_$LocationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationImplToJson(
      this,
    );
  }
}

abstract class _Location implements Location {
  const factory _Location(
      {@JsonKey(name: 'longitude') required final double longitude,
      @JsonKey(name: 'latitude') required final double latitude,
      @JsonKey(name: 'horizontal_accuracy') final double? horizontalAccuracy,
      @JsonKey(name: 'live_period') final int? livePeriod,
      @JsonKey(name: 'heading') final int? heading,
      @JsonKey(name: 'proximity_alert_radius')
      final int? proximityAlertRadius}) = _$LocationImpl;

  factory _Location.fromJson(Map<String, dynamic> json) =
      _$LocationImpl.fromJson;

  /// Longitude as defined by sender
  @override
  @JsonKey(name: 'longitude')
  double get longitude;

  /// Latitude as defined by sender
  @override
  @JsonKey(name: 'latitude')
  double get latitude;

  /// The radius of uncertainty for the location, measured in meters; 0-1500
  @override
  @JsonKey(name: 'horizontal_accuracy')
  double? get horizontalAccuracy;

  /// Optional. Time relative to the message sending date, during which the
  /// location can be updated; in seconds. For active live locations only.
  @override
  @JsonKey(name: 'live_period')
  int? get livePeriod;

  /// Optional. The direction in which user is moving, in degrees; 1-360. For
  /// active live locations only.
  @override
  @JsonKey(name: 'heading')
  int? get heading;

  /// Optional. The maximum distance for proximity alerts about approaching
  /// another chat member, in meters. For sent live locations only.
  @override
  @JsonKey(name: 'proximity_alert_radius')
  int? get proximityAlertRadius;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
