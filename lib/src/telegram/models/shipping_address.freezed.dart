// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shipping_address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ShippingAddress {
  /// ISO 3166-1 alpha-2 country code
  @JsonKey(name: 'country_code')
  String get countryCode;

  /// State, if applicable
  @JsonKey(name: 'state')
  String get state;

  /// City
  @JsonKey(name: 'city')
  String get city;

  /// First line for the address
  @JsonKey(name: 'street_line1')
  String get streetLine1;

  /// Second line for the address
  @JsonKey(name: 'street_line2')
  String get streetLine2;

  /// Address post code
  @JsonKey(name: 'post_code')
  String get postCode;

  /// Create a copy of ShippingAddress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ShippingAddressCopyWith<ShippingAddress> get copyWith =>
      _$ShippingAddressCopyWithImpl<ShippingAddress>(
          this as ShippingAddress, _$identity);

  /// Serializes this ShippingAddress to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'ShippingAddress(countryCode: $countryCode, state: $state, city: $city, streetLine1: $streetLine1, streetLine2: $streetLine2, postCode: $postCode)';
  }
}

/// @nodoc
abstract mixin class $ShippingAddressCopyWith<$Res> {
  factory $ShippingAddressCopyWith(
          ShippingAddress value, $Res Function(ShippingAddress) _then) =
      _$ShippingAddressCopyWithImpl;
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
class _$ShippingAddressCopyWithImpl<$Res>
    implements $ShippingAddressCopyWith<$Res> {
  _$ShippingAddressCopyWithImpl(this._self, this._then);

  final ShippingAddress _self;
  final $Res Function(ShippingAddress) _then;

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
    return _then(_self.copyWith(
      countryCode: null == countryCode
          ? _self.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _self.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      streetLine1: null == streetLine1
          ? _self.streetLine1
          : streetLine1 // ignore: cast_nullable_to_non_nullable
              as String,
      streetLine2: null == streetLine2
          ? _self.streetLine2
          : streetLine2 // ignore: cast_nullable_to_non_nullable
              as String,
      postCode: null == postCode
          ? _self.postCode
          : postCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ShippingAddress implements ShippingAddress {
  const _ShippingAddress(
      {@JsonKey(name: 'country_code') required this.countryCode,
      @JsonKey(name: 'state') required this.state,
      @JsonKey(name: 'city') required this.city,
      @JsonKey(name: 'street_line1') required this.streetLine1,
      @JsonKey(name: 'street_line2') required this.streetLine2,
      @JsonKey(name: 'post_code') required this.postCode});
  factory _ShippingAddress.fromJson(Map<String, dynamic> json) =>
      _$ShippingAddressFromJson(json);

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

  /// Create a copy of ShippingAddress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ShippingAddressCopyWith<_ShippingAddress> get copyWith =>
      __$ShippingAddressCopyWithImpl<_ShippingAddress>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ShippingAddressToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'ShippingAddress(countryCode: $countryCode, state: $state, city: $city, streetLine1: $streetLine1, streetLine2: $streetLine2, postCode: $postCode)';
  }
}

/// @nodoc
abstract mixin class _$ShippingAddressCopyWith<$Res>
    implements $ShippingAddressCopyWith<$Res> {
  factory _$ShippingAddressCopyWith(
          _ShippingAddress value, $Res Function(_ShippingAddress) _then) =
      __$ShippingAddressCopyWithImpl;
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
class __$ShippingAddressCopyWithImpl<$Res>
    implements _$ShippingAddressCopyWith<$Res> {
  __$ShippingAddressCopyWithImpl(this._self, this._then);

  final _ShippingAddress _self;
  final $Res Function(_ShippingAddress) _then;

  /// Create a copy of ShippingAddress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? countryCode = null,
    Object? state = null,
    Object? city = null,
    Object? streetLine1 = null,
    Object? streetLine2 = null,
    Object? postCode = null,
  }) {
    return _then(_ShippingAddress(
      countryCode: null == countryCode
          ? _self.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _self.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      streetLine1: null == streetLine1
          ? _self.streetLine1
          : streetLine1 // ignore: cast_nullable_to_non_nullable
              as String,
      streetLine2: null == streetLine2
          ? _self.streetLine2
          : streetLine2 // ignore: cast_nullable_to_non_nullable
              as String,
      postCode: null == postCode
          ? _self.postCode
          : postCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}
