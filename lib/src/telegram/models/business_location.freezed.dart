// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'business_location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BusinessLocation _$BusinessLocationFromJson(Map<String, dynamic> json) {
  return _BusinessLocation.fromJson(json);
}

/// @nodoc
mixin _$BusinessLocation {
  /// Address of the business.
  @JsonKey(name: 'address')
  String get address => throw _privateConstructorUsedError;

  /// Optional. Location of the business.
  @JsonKey(name: 'location')
  Location? get location => throw _privateConstructorUsedError;

  /// Serializes this BusinessLocation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BusinessLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BusinessLocationCopyWith<BusinessLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessLocationCopyWith<$Res> {
  factory $BusinessLocationCopyWith(
          BusinessLocation value, $Res Function(BusinessLocation) then) =
      _$BusinessLocationCopyWithImpl<$Res, BusinessLocation>;
  @useResult
  $Res call(
      {@JsonKey(name: 'address') String address,
      @JsonKey(name: 'location') Location? location});

  $LocationCopyWith<$Res>? get location;
}

/// @nodoc
class _$BusinessLocationCopyWithImpl<$Res, $Val extends BusinessLocation>
    implements $BusinessLocationCopyWith<$Res> {
  _$BusinessLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BusinessLocation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
    ) as $Val);
  }

  /// Create a copy of BusinessLocation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BusinessLocationImplCopyWith<$Res>
    implements $BusinessLocationCopyWith<$Res> {
  factory _$$BusinessLocationImplCopyWith(_$BusinessLocationImpl value,
          $Res Function(_$BusinessLocationImpl) then) =
      __$$BusinessLocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'address') String address,
      @JsonKey(name: 'location') Location? location});

  @override
  $LocationCopyWith<$Res>? get location;
}

/// @nodoc
class __$$BusinessLocationImplCopyWithImpl<$Res>
    extends _$BusinessLocationCopyWithImpl<$Res, _$BusinessLocationImpl>
    implements _$$BusinessLocationImplCopyWith<$Res> {
  __$$BusinessLocationImplCopyWithImpl(_$BusinessLocationImpl _value,
      $Res Function(_$BusinessLocationImpl) _then)
      : super(_value, _then);

  /// Create a copy of BusinessLocation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? location = freezed,
  }) {
    return _then(_$BusinessLocationImpl(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BusinessLocationImpl implements _BusinessLocation {
  const _$BusinessLocationImpl(
      {@JsonKey(name: 'address') required this.address,
      @JsonKey(name: 'location') this.location});

  factory _$BusinessLocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$BusinessLocationImplFromJson(json);

  /// Address of the business.
  @override
  @JsonKey(name: 'address')
  final String address;

  /// Optional. Location of the business.
  @override
  @JsonKey(name: 'location')
  final Location? location;

  @override
  String toString() {
    return 'BusinessLocation(address: $address, location: $location)';
  }

  /// Create a copy of BusinessLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BusinessLocationImplCopyWith<_$BusinessLocationImpl> get copyWith =>
      __$$BusinessLocationImplCopyWithImpl<_$BusinessLocationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BusinessLocationImplToJson(
      this,
    );
  }
}

abstract class _BusinessLocation implements BusinessLocation {
  const factory _BusinessLocation(
          {@JsonKey(name: 'address') required final String address,
          @JsonKey(name: 'location') final Location? location}) =
      _$BusinessLocationImpl;

  factory _BusinessLocation.fromJson(Map<String, dynamic> json) =
      _$BusinessLocationImpl.fromJson;

  /// Address of the business.
  @override
  @JsonKey(name: 'address')
  String get address;

  /// Optional. Location of the business.
  @override
  @JsonKey(name: 'location')
  Location? get location;

  /// Create a copy of BusinessLocation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BusinessLocationImplCopyWith<_$BusinessLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
