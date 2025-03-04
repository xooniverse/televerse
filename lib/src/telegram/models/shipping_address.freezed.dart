// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shipping_address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ShippingAddress _$ShippingAddressFromJson(Map<String, dynamic> json) {
  return _ShippingAddress.fromJson(json);
}

/// @nodoc
mixin _$ShippingAddress {
  /// ISO 3166-1 alpha-2 country code
  @JsonKey(name: 'country_code')
  String get countryCode => throw _privateConstructorUsedError;

  /// State, if applicable
  @JsonKey(name: 'state')
  String get state => throw _privateConstructorUsedError;

  /// City
  @JsonKey(name: 'city')
  String get city => throw _privateConstructorUsedError;

  /// First line for the address
  @JsonKey(name: 'street_line1')
  String get streetLine1 => throw _privateConstructorUsedError;

  /// Second line for the address
  @JsonKey(name: 'street_line2')
  String get streetLine2 => throw _privateConstructorUsedError;

  /// Address post code
  @JsonKey(name: 'post_code')
  String get postCode => throw _privateConstructorUsedError;

  /// Serializes this ShippingAddress to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShippingAddress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShippingAddressCopyWith<ShippingAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShippingAddressCopyWith<$Res> {
  factory $ShippingAddressCopyWith(
          ShippingAddress value, $Res Function(ShippingAddress) then) =
      _$ShippingAddressCopyWithImpl<$Res, ShippingAddress>;
  @useResult
  $Res call(
      {@JsonKey(name: 'country_code') String countryCode,
      @JsonKey(name: 'state') String state,
      @JsonKey(name: 'city') String city,
      @JsonKey(name: 'street_line1') String streetLine1,
      @JsonKey(name: 'street_line2') String streetLine2,
      @JsonKey(name: 'post_code') String postCode});
}

/// @nodoc
class _$ShippingAddressCopyWithImpl<$Res, $Val extends ShippingAddress>
    implements $ShippingAddressCopyWith<$Res> {
  _$ShippingAddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShippingAddress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryCode = null,
    Object? state = null,
    Object? city = null,
    Object? streetLine1 = null,
    Object? streetLine2 = null,
    Object? postCode = null,
  }) {
    return _then(_value.copyWith(
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      streetLine1: null == streetLine1
          ? _value.streetLine1
          : streetLine1 // ignore: cast_nullable_to_non_nullable
              as String,
      streetLine2: null == streetLine2
          ? _value.streetLine2
          : streetLine2 // ignore: cast_nullable_to_non_nullable
              as String,
      postCode: null == postCode
          ? _value.postCode
          : postCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShippingAddressImplCopyWith<$Res>
    implements $ShippingAddressCopyWith<$Res> {
  factory _$$ShippingAddressImplCopyWith(_$ShippingAddressImpl value,
          $Res Function(_$ShippingAddressImpl) then) =
      __$$ShippingAddressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'country_code') String countryCode,
      @JsonKey(name: 'state') String state,
      @JsonKey(name: 'city') String city,
      @JsonKey(name: 'street_line1') String streetLine1,
      @JsonKey(name: 'street_line2') String streetLine2,
      @JsonKey(name: 'post_code') String postCode});
}

/// @nodoc
class __$$ShippingAddressImplCopyWithImpl<$Res>
    extends _$ShippingAddressCopyWithImpl<$Res, _$ShippingAddressImpl>
    implements _$$ShippingAddressImplCopyWith<$Res> {
  __$$ShippingAddressImplCopyWithImpl(
      _$ShippingAddressImpl _value, $Res Function(_$ShippingAddressImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShippingAddress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryCode = null,
    Object? state = null,
    Object? city = null,
    Object? streetLine1 = null,
    Object? streetLine2 = null,
    Object? postCode = null,
  }) {
    return _then(_$ShippingAddressImpl(
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      streetLine1: null == streetLine1
          ? _value.streetLine1
          : streetLine1 // ignore: cast_nullable_to_non_nullable
              as String,
      streetLine2: null == streetLine2
          ? _value.streetLine2
          : streetLine2 // ignore: cast_nullable_to_non_nullable
              as String,
      postCode: null == postCode
          ? _value.postCode
          : postCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShippingAddressImpl implements _ShippingAddress {
  const _$ShippingAddressImpl(
      {@JsonKey(name: 'country_code') required this.countryCode,
      @JsonKey(name: 'state') required this.state,
      @JsonKey(name: 'city') required this.city,
      @JsonKey(name: 'street_line1') required this.streetLine1,
      @JsonKey(name: 'street_line2') required this.streetLine2,
      @JsonKey(name: 'post_code') required this.postCode});

  factory _$ShippingAddressImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShippingAddressImplFromJson(json);

  /// ISO 3166-1 alpha-2 country code
  @override
  @JsonKey(name: 'country_code')
  final String countryCode;

  /// State, if applicable
  @override
  @JsonKey(name: 'state')
  final String state;

  /// City
  @override
  @JsonKey(name: 'city')
  final String city;

  /// First line for the address
  @override
  @JsonKey(name: 'street_line1')
  final String streetLine1;

  /// Second line for the address
  @override
  @JsonKey(name: 'street_line2')
  final String streetLine2;

  /// Address post code
  @override
  @JsonKey(name: 'post_code')
  final String postCode;

  @override
  String toString() {
    return 'ShippingAddress(countryCode: $countryCode, state: $state, city: $city, streetLine1: $streetLine1, streetLine2: $streetLine2, postCode: $postCode)';
  }

  /// Create a copy of ShippingAddress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShippingAddressImplCopyWith<_$ShippingAddressImpl> get copyWith =>
      __$$ShippingAddressImplCopyWithImpl<_$ShippingAddressImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShippingAddressImplToJson(
      this,
    );
  }
}

abstract class _ShippingAddress implements ShippingAddress {
  const factory _ShippingAddress(
          {@JsonKey(name: 'country_code') required final String countryCode,
          @JsonKey(name: 'state') required final String state,
          @JsonKey(name: 'city') required final String city,
          @JsonKey(name: 'street_line1') required final String streetLine1,
          @JsonKey(name: 'street_line2') required final String streetLine2,
          @JsonKey(name: 'post_code') required final String postCode}) =
      _$ShippingAddressImpl;

  factory _ShippingAddress.fromJson(Map<String, dynamic> json) =
      _$ShippingAddressImpl.fromJson;

  /// ISO 3166-1 alpha-2 country code
  @override
  @JsonKey(name: 'country_code')
  String get countryCode;

  /// State, if applicable
  @override
  @JsonKey(name: 'state')
  String get state;

  /// City
  @override
  @JsonKey(name: 'city')
  String get city;

  /// First line for the address
  @override
  @JsonKey(name: 'street_line1')
  String get streetLine1;

  /// Second line for the address
  @override
  @JsonKey(name: 'street_line2')
  String get streetLine2;

  /// Address post code
  @override
  @JsonKey(name: 'post_code')
  String get postCode;

  /// Create a copy of ShippingAddress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShippingAddressImplCopyWith<_$ShippingAddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
