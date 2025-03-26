// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderInfo {
  /// User name
  String? get name;

  /// User's phone number
  @JsonKey(name: 'phone_number')
  String? get phoneNumber;

  /// User email
  @JsonKey(name: 'email')
  String? get email;

  /// User shipping address
  @JsonKey(name: 'shipping_address')
  ShippingAddress? get shippingAddress;

  /// Create a copy of OrderInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OrderInfoCopyWith<OrderInfo> get copyWith =>
      _$OrderInfoCopyWithImpl<OrderInfo>(this as OrderInfo, _$identity);

  /// Serializes this OrderInfo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'OrderInfo(name: $name, phoneNumber: $phoneNumber, email: $email, shippingAddress: $shippingAddress)';
  }
}

/// @nodoc
abstract mixin class $OrderInfoCopyWith<$Res> {
  factory $OrderInfoCopyWith(OrderInfo value, $Res Function(OrderInfo) _then) =
      _$OrderInfoCopyWithImpl;
  @useResult
  $Res call(
      {String? name,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'shipping_address') ShippingAddress? shippingAddress});

  $ShippingAddressCopyWith<$Res>? get shippingAddress;
}

/// @nodoc
class _$OrderInfoCopyWithImpl<$Res> implements $OrderInfoCopyWith<$Res> {
  _$OrderInfoCopyWithImpl(this._self, this._then);

  final OrderInfo _self;
  final $Res Function(OrderInfo) _then;

  /// Create a copy of OrderInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
    Object? shippingAddress = freezed,
  }) {
    return _then(_self.copyWith(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _self.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingAddress: freezed == shippingAddress
          ? _self.shippingAddress
          : shippingAddress // ignore: cast_nullable_to_non_nullable
              as ShippingAddress?,
    ));
  }

  /// Create a copy of OrderInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ShippingAddressCopyWith<$Res>? get shippingAddress {
    if (_self.shippingAddress == null) {
      return null;
    }

    return $ShippingAddressCopyWith<$Res>(_self.shippingAddress!, (value) {
      return _then(_self.copyWith(shippingAddress: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _OrderInfo implements OrderInfo {
  const _OrderInfo(
      {this.name,
      @JsonKey(name: 'phone_number') this.phoneNumber,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'shipping_address') this.shippingAddress});
  factory _OrderInfo.fromJson(Map<String, dynamic> json) =>
      _$OrderInfoFromJson(json);

  /// User name
  @override
  final String? name;

  /// User's phone number
  @override
  @JsonKey(name: 'phone_number')
  final String? phoneNumber;

  /// User email
  @override
  @JsonKey(name: 'email')
  final String? email;

  /// User shipping address
  @override
  @JsonKey(name: 'shipping_address')
  final ShippingAddress? shippingAddress;

  /// Create a copy of OrderInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OrderInfoCopyWith<_OrderInfo> get copyWith =>
      __$OrderInfoCopyWithImpl<_OrderInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OrderInfoToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'OrderInfo(name: $name, phoneNumber: $phoneNumber, email: $email, shippingAddress: $shippingAddress)';
  }
}

/// @nodoc
abstract mixin class _$OrderInfoCopyWith<$Res>
    implements $OrderInfoCopyWith<$Res> {
  factory _$OrderInfoCopyWith(
          _OrderInfo value, $Res Function(_OrderInfo) _then) =
      __$OrderInfoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? name,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'shipping_address') ShippingAddress? shippingAddress});

  @override
  $ShippingAddressCopyWith<$Res>? get shippingAddress;
}

/// @nodoc
class __$OrderInfoCopyWithImpl<$Res> implements _$OrderInfoCopyWith<$Res> {
  __$OrderInfoCopyWithImpl(this._self, this._then);

  final _OrderInfo _self;
  final $Res Function(_OrderInfo) _then;

  /// Create a copy of OrderInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
    Object? shippingAddress = freezed,
  }) {
    return _then(_OrderInfo(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _self.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingAddress: freezed == shippingAddress
          ? _self.shippingAddress
          : shippingAddress // ignore: cast_nullable_to_non_nullable
              as ShippingAddress?,
    ));
  }

  /// Create a copy of OrderInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ShippingAddressCopyWith<$Res>? get shippingAddress {
    if (_self.shippingAddress == null) {
      return null;
    }

    return $ShippingAddressCopyWith<$Res>(_self.shippingAddress!, (value) {
      return _then(_self.copyWith(shippingAddress: value));
    });
  }
}
