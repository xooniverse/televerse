// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'proximity_alert_triggered.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProximityAlertTriggered _$ProximityAlertTriggeredFromJson(
    Map<String, dynamic> json) {
  return _ProximityAlertTriggered.fromJson(json);
}

/// @nodoc
mixin _$ProximityAlertTriggered {
  /// User that triggered the alert
  @JsonKey(name: 'traveler')
  User get traveler => throw _privateConstructorUsedError;

  /// User that set the alert
  @JsonKey(name: 'watcher')
  User get watcher => throw _privateConstructorUsedError;

  /// The distance between the users
  @JsonKey(name: 'distance')
  int get distance => throw _privateConstructorUsedError;

  /// Serializes this ProximityAlertTriggered to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProximityAlertTriggered
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProximityAlertTriggeredCopyWith<ProximityAlertTriggered> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProximityAlertTriggeredCopyWith<$Res> {
  factory $ProximityAlertTriggeredCopyWith(ProximityAlertTriggered value,
          $Res Function(ProximityAlertTriggered) then) =
      _$ProximityAlertTriggeredCopyWithImpl<$Res, ProximityAlertTriggered>;
  @useResult
  $Res call(
      {@JsonKey(name: 'traveler') User traveler,
      @JsonKey(name: 'watcher') User watcher,
      @JsonKey(name: 'distance') int distance});

  $UserCopyWith<$Res> get traveler;
  $UserCopyWith<$Res> get watcher;
}

/// @nodoc
class _$ProximityAlertTriggeredCopyWithImpl<$Res,
        $Val extends ProximityAlertTriggered>
    implements $ProximityAlertTriggeredCopyWith<$Res> {
  _$ProximityAlertTriggeredCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProximityAlertTriggered
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? traveler = null,
    Object? watcher = null,
    Object? distance = null,
  }) {
    return _then(_value.copyWith(
      traveler: null == traveler
          ? _value.traveler
          : traveler // ignore: cast_nullable_to_non_nullable
              as User,
      watcher: null == watcher
          ? _value.watcher
          : watcher // ignore: cast_nullable_to_non_nullable
              as User,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of ProximityAlertTriggered
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get traveler {
    return $UserCopyWith<$Res>(_value.traveler, (value) {
      return _then(_value.copyWith(traveler: value) as $Val);
    });
  }

  /// Create a copy of ProximityAlertTriggered
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get watcher {
    return $UserCopyWith<$Res>(_value.watcher, (value) {
      return _then(_value.copyWith(watcher: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProximityAlertTriggeredImplCopyWith<$Res>
    implements $ProximityAlertTriggeredCopyWith<$Res> {
  factory _$$ProximityAlertTriggeredImplCopyWith(
          _$ProximityAlertTriggeredImpl value,
          $Res Function(_$ProximityAlertTriggeredImpl) then) =
      __$$ProximityAlertTriggeredImplCopyWithImpl<$Res>;
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
class __$$ProximityAlertTriggeredImplCopyWithImpl<$Res>
    extends _$ProximityAlertTriggeredCopyWithImpl<$Res,
        _$ProximityAlertTriggeredImpl>
    implements _$$ProximityAlertTriggeredImplCopyWith<$Res> {
  __$$ProximityAlertTriggeredImplCopyWithImpl(
      _$ProximityAlertTriggeredImpl _value,
      $Res Function(_$ProximityAlertTriggeredImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProximityAlertTriggered
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? traveler = null,
    Object? watcher = null,
    Object? distance = null,
  }) {
    return _then(_$ProximityAlertTriggeredImpl(
      traveler: null == traveler
          ? _value.traveler
          : traveler // ignore: cast_nullable_to_non_nullable
              as User,
      watcher: null == watcher
          ? _value.watcher
          : watcher // ignore: cast_nullable_to_non_nullable
              as User,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProximityAlertTriggeredImpl implements _ProximityAlertTriggered {
  const _$ProximityAlertTriggeredImpl(
      {@JsonKey(name: 'traveler') required this.traveler,
      @JsonKey(name: 'watcher') required this.watcher,
      @JsonKey(name: 'distance') required this.distance});

  factory _$ProximityAlertTriggeredImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProximityAlertTriggeredImplFromJson(json);

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

  @override
  String toString() {
    return 'ProximityAlertTriggered(traveler: $traveler, watcher: $watcher, distance: $distance)';
  }

  /// Create a copy of ProximityAlertTriggered
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProximityAlertTriggeredImplCopyWith<_$ProximityAlertTriggeredImpl>
      get copyWith => __$$ProximityAlertTriggeredImplCopyWithImpl<
          _$ProximityAlertTriggeredImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProximityAlertTriggeredImplToJson(
      this,
    );
  }
}

abstract class _ProximityAlertTriggered implements ProximityAlertTriggered {
  const factory _ProximityAlertTriggered(
          {@JsonKey(name: 'traveler') required final User traveler,
          @JsonKey(name: 'watcher') required final User watcher,
          @JsonKey(name: 'distance') required final int distance}) =
      _$ProximityAlertTriggeredImpl;

  factory _ProximityAlertTriggered.fromJson(Map<String, dynamic> json) =
      _$ProximityAlertTriggeredImpl.fromJson;

  /// User that triggered the alert
  @override
  @JsonKey(name: 'traveler')
  User get traveler;

  /// User that set the alert
  @override
  @JsonKey(name: 'watcher')
  User get watcher;

  /// The distance between the users
  @override
  @JsonKey(name: 'distance')
  int get distance;

  /// Create a copy of ProximityAlertTriggered
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProximityAlertTriggeredImplCopyWith<_$ProximityAlertTriggeredImpl>
      get copyWith => throw _privateConstructorUsedError;
}
