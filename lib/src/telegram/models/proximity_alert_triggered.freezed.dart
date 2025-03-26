// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'proximity_alert_triggered.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProximityAlertTriggered {
  /// User that triggered the alert
  @JsonKey(name: 'traveler')
  User get traveler;

  /// User that set the alert
  @JsonKey(name: 'watcher')
  User get watcher;

  /// The distance between the users
  @JsonKey(name: 'distance')
  int get distance;

  /// Create a copy of ProximityAlertTriggered
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProximityAlertTriggeredCopyWith<ProximityAlertTriggered> get copyWith =>
      _$ProximityAlertTriggeredCopyWithImpl<ProximityAlertTriggered>(
          this as ProximityAlertTriggered, _$identity);

  /// Serializes this ProximityAlertTriggered to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'ProximityAlertTriggered(traveler: $traveler, watcher: $watcher, distance: $distance)';
  }
}

/// @nodoc
abstract mixin class $ProximityAlertTriggeredCopyWith<$Res> {
  factory $ProximityAlertTriggeredCopyWith(ProximityAlertTriggered value,
          $Res Function(ProximityAlertTriggered) _then) =
      _$ProximityAlertTriggeredCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'traveler') User traveler,
      @JsonKey(name: 'watcher') User watcher,
      @JsonKey(name: 'distance') int distance});

  $UserCopyWith<$Res> get traveler;
  $UserCopyWith<$Res> get watcher;
}

/// @nodoc
class _$ProximityAlertTriggeredCopyWithImpl<$Res>
    implements $ProximityAlertTriggeredCopyWith<$Res> {
  _$ProximityAlertTriggeredCopyWithImpl(this._self, this._then);

  final ProximityAlertTriggered _self;
  final $Res Function(ProximityAlertTriggered) _then;

  /// Create a copy of ProximityAlertTriggered
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? traveler = null,
    Object? watcher = null,
    Object? distance = null,
  }) {
    return _then(_self.copyWith(
      traveler: null == traveler
          ? _self.traveler
          : traveler // ignore: cast_nullable_to_non_nullable
              as User,
      watcher: null == watcher
          ? _self.watcher
          : watcher // ignore: cast_nullable_to_non_nullable
              as User,
      distance: null == distance
          ? _self.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of ProximityAlertTriggered
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get traveler {
    return $UserCopyWith<$Res>(_self.traveler, (value) {
      return _then(_self.copyWith(traveler: value));
    });
  }

  /// Create a copy of ProximityAlertTriggered
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get watcher {
    return $UserCopyWith<$Res>(_self.watcher, (value) {
      return _then(_self.copyWith(watcher: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _ProximityAlertTriggered implements ProximityAlertTriggered {
  const _ProximityAlertTriggered(
      {@JsonKey(name: 'traveler') required this.traveler,
      @JsonKey(name: 'watcher') required this.watcher,
      @JsonKey(name: 'distance') required this.distance});
  factory _ProximityAlertTriggered.fromJson(Map<String, dynamic> json) =>
      _$ProximityAlertTriggeredFromJson(json);

  /// User that triggered the alert
  @override
  @JsonKey(name: 'traveler')
  final User traveler;

  /// User that set the alert
  @override
  @JsonKey(name: 'watcher')
  final User watcher;

  /// The distance between the users
  @override
  @JsonKey(name: 'distance')
  final int distance;

  /// Create a copy of ProximityAlertTriggered
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProximityAlertTriggeredCopyWith<_ProximityAlertTriggered> get copyWith =>
      __$ProximityAlertTriggeredCopyWithImpl<_ProximityAlertTriggered>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ProximityAlertTriggeredToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'ProximityAlertTriggered(traveler: $traveler, watcher: $watcher, distance: $distance)';
  }
}

/// @nodoc
abstract mixin class _$ProximityAlertTriggeredCopyWith<$Res>
    implements $ProximityAlertTriggeredCopyWith<$Res> {
  factory _$ProximityAlertTriggeredCopyWith(_ProximityAlertTriggered value,
          $Res Function(_ProximityAlertTriggered) _then) =
      __$ProximityAlertTriggeredCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'traveler') User traveler,
      @JsonKey(name: 'watcher') User watcher,
      @JsonKey(name: 'distance') int distance});

  @override
  $UserCopyWith<$Res> get traveler;
  @override
  $UserCopyWith<$Res> get watcher;
}

/// @nodoc
class __$ProximityAlertTriggeredCopyWithImpl<$Res>
    implements _$ProximityAlertTriggeredCopyWith<$Res> {
  __$ProximityAlertTriggeredCopyWithImpl(this._self, this._then);

  final _ProximityAlertTriggered _self;
  final $Res Function(_ProximityAlertTriggered) _then;

  /// Create a copy of ProximityAlertTriggered
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? traveler = null,
    Object? watcher = null,
    Object? distance = null,
  }) {
    return _then(_ProximityAlertTriggered(
      traveler: null == traveler
          ? _self.traveler
          : traveler // ignore: cast_nullable_to_non_nullable
              as User,
      watcher: null == watcher
          ? _self.watcher
          : watcher // ignore: cast_nullable_to_non_nullable
              as User,
      distance: null == distance
          ? _self.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of ProximityAlertTriggered
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get traveler {
    return $UserCopyWith<$Res>(_self.traveler, (value) {
      return _then(_self.copyWith(traveler: value));
    });
  }

  /// Create a copy of ProximityAlertTriggered
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get watcher {
    return $UserCopyWith<$Res>(_self.watcher, (value) {
      return _then(_self.copyWith(watcher: value));
    });
  }
}
