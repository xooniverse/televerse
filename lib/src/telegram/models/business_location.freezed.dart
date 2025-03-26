// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'business_location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BusinessLocation {
  /// Address of the business.
  @JsonKey(name: 'address')
  String get address;

  /// Optional. Location of the business.
  @JsonKey(name: 'location')
  Location? get location;

  /// Create a copy of BusinessLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BusinessLocationCopyWith<BusinessLocation> get copyWith =>
      _$BusinessLocationCopyWithImpl<BusinessLocation>(
          this as BusinessLocation, _$identity);

  /// Serializes this BusinessLocation to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'BusinessLocation(address: $address, location: $location)';
  }
}

/// @nodoc
abstract mixin class $BusinessLocationCopyWith<$Res> {
  factory $BusinessLocationCopyWith(
          BusinessLocation value, $Res Function(BusinessLocation) _then) =
      _$BusinessLocationCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'address') String address,
      @JsonKey(name: 'location') Location? location});

  $LocationCopyWith<$Res>? get location;
}

/// @nodoc
class _$BusinessLocationCopyWithImpl<$Res>
    implements $BusinessLocationCopyWith<$Res> {
  _$BusinessLocationCopyWithImpl(this._self, this._then);

  final BusinessLocation _self;
  final $Res Function(BusinessLocation) _then;

  /// Create a copy of BusinessLocation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? location = freezed,
  }) {
    return _then(_self.copyWith(
      address: null == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
    ));
  }

  /// Create a copy of BusinessLocation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res>? get location {
    if (_self.location == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_self.location!, (value) {
      return _then(_self.copyWith(location: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _BusinessLocation implements BusinessLocation {
  const _BusinessLocation(
      {@JsonKey(name: 'address') required this.address,
      @JsonKey(name: 'location') this.location});
  factory _BusinessLocation.fromJson(Map<String, dynamic> json) =>
      _$BusinessLocationFromJson(json);

  /// Address of the business.
  @override
  @JsonKey(name: 'address')
  final String address;

  /// Optional. Location of the business.
  @override
  @JsonKey(name: 'location')
  final Location? location;

  /// Create a copy of BusinessLocation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BusinessLocationCopyWith<_BusinessLocation> get copyWith =>
      __$BusinessLocationCopyWithImpl<_BusinessLocation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BusinessLocationToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'BusinessLocation(address: $address, location: $location)';
  }
}

/// @nodoc
abstract mixin class _$BusinessLocationCopyWith<$Res>
    implements $BusinessLocationCopyWith<$Res> {
  factory _$BusinessLocationCopyWith(
          _BusinessLocation value, $Res Function(_BusinessLocation) _then) =
      __$BusinessLocationCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'address') String address,
      @JsonKey(name: 'location') Location? location});

  @override
  $LocationCopyWith<$Res>? get location;
}

/// @nodoc
class __$BusinessLocationCopyWithImpl<$Res>
    implements _$BusinessLocationCopyWith<$Res> {
  __$BusinessLocationCopyWithImpl(this._self, this._then);

  final _BusinessLocation _self;
  final $Res Function(_BusinessLocation) _then;

  /// Create a copy of BusinessLocation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? address = null,
    Object? location = freezed,
  }) {
    return _then(_BusinessLocation(
      address: null == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
    ));
  }

  /// Create a copy of BusinessLocation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res>? get location {
    if (_self.location == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_self.location!, (value) {
      return _then(_self.copyWith(location: value));
    });
  }
}
