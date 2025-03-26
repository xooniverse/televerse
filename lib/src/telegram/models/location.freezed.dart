// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Location {
  /// Longitude as defined by sender
  @JsonKey(name: 'longitude')
  double get longitude;

  /// Latitude as defined by sender
  @JsonKey(name: 'latitude')
  double get latitude;

  /// The radius of uncertainty for the location, measured in meters; 0-1500
  @JsonKey(name: 'horizontal_accuracy')
  double? get horizontalAccuracy;

  /// Optional. Time relative to the message sending date, during which the
  /// location can be updated; in seconds. For active live locations only.
  @JsonKey(name: 'live_period')
  int? get livePeriod;

  /// Optional. The direction in which user is moving, in degrees; 1-360. For
  /// active live locations only.
  @JsonKey(name: 'heading')
  int? get heading;

  /// Optional. The maximum distance for proximity alerts about approaching
  /// another chat member, in meters. For sent live locations only.
  @JsonKey(name: 'proximity_alert_radius')
  int? get proximityAlertRadius;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LocationCopyWith<Location> get copyWith =>
      _$LocationCopyWithImpl<Location>(this as Location, _$identity);

  /// Serializes this Location to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'Location(longitude: $longitude, latitude: $latitude, horizontalAccuracy: $horizontalAccuracy, livePeriod: $livePeriod, heading: $heading, proximityAlertRadius: $proximityAlertRadius)';
  }
}

/// @nodoc
abstract mixin class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) _then) =
      _$LocationCopyWithImpl;
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
class _$LocationCopyWithImpl<$Res> implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._self, this._then);

  final Location _self;
  final $Res Function(Location) _then;

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
    return _then(_self.copyWith(
      longitude: null == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      latitude: null == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      horizontalAccuracy: freezed == horizontalAccuracy
          ? _self.horizontalAccuracy
          : horizontalAccuracy // ignore: cast_nullable_to_non_nullable
              as double?,
      livePeriod: freezed == livePeriod
          ? _self.livePeriod
          : livePeriod // ignore: cast_nullable_to_non_nullable
              as int?,
      heading: freezed == heading
          ? _self.heading
          : heading // ignore: cast_nullable_to_non_nullable
              as int?,
      proximityAlertRadius: freezed == proximityAlertRadius
          ? _self.proximityAlertRadius
          : proximityAlertRadius // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Location implements Location {
  const _Location(
      {@JsonKey(name: 'longitude') required this.longitude,
      @JsonKey(name: 'latitude') required this.latitude,
      @JsonKey(name: 'horizontal_accuracy') this.horizontalAccuracy,
      @JsonKey(name: 'live_period') this.livePeriod,
      @JsonKey(name: 'heading') this.heading,
      @JsonKey(name: 'proximity_alert_radius') this.proximityAlertRadius});
  factory _Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

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

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LocationCopyWith<_Location> get copyWith =>
      __$LocationCopyWithImpl<_Location>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LocationToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'Location(longitude: $longitude, latitude: $latitude, horizontalAccuracy: $horizontalAccuracy, livePeriod: $livePeriod, heading: $heading, proximityAlertRadius: $proximityAlertRadius)';
  }
}

/// @nodoc
abstract mixin class _$LocationCopyWith<$Res>
    implements $LocationCopyWith<$Res> {
  factory _$LocationCopyWith(_Location value, $Res Function(_Location) _then) =
      __$LocationCopyWithImpl;
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
class __$LocationCopyWithImpl<$Res> implements _$LocationCopyWith<$Res> {
  __$LocationCopyWithImpl(this._self, this._then);

  final _Location _self;
  final $Res Function(_Location) _then;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? longitude = null,
    Object? latitude = null,
    Object? horizontalAccuracy = freezed,
    Object? livePeriod = freezed,
    Object? heading = freezed,
    Object? proximityAlertRadius = freezed,
  }) {
    return _then(_Location(
      longitude: null == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      latitude: null == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      horizontalAccuracy: freezed == horizontalAccuracy
          ? _self.horizontalAccuracy
          : horizontalAccuracy // ignore: cast_nullable_to_non_nullable
              as double?,
      livePeriod: freezed == livePeriod
          ? _self.livePeriod
          : livePeriod // ignore: cast_nullable_to_non_nullable
              as int?,
      heading: freezed == heading
          ? _self.heading
          : heading // ignore: cast_nullable_to_non_nullable
              as int?,
      proximityAlertRadius: freezed == proximityAlertRadius
          ? _self.proximityAlertRadius
          : proximityAlertRadius // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}
