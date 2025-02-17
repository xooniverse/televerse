// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shipping_query.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ShippingQuery _$ShippingQueryFromJson(Map<String, dynamic> json) {
  return _ShippingQuery.fromJson(json);
}

/// @nodoc
mixin _$ShippingQuery {
  /// Unique query identifier
  String get id => throw _privateConstructorUsedError;

  /// User who sent the query
  User get from => throw _privateConstructorUsedError;

  /// Bot specified invoice payload
  @JsonKey(name: 'invoice_payload')
  String get invoicePayload => throw _privateConstructorUsedError;

  /// User specified shipping address
  @JsonKey(name: 'shipping_address')
  ShippingAddress get shippingAddress => throw _privateConstructorUsedError;

  /// Serializes this ShippingQuery to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShippingQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShippingQueryCopyWith<ShippingQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShippingQueryCopyWith<$Res> {
  factory $ShippingQueryCopyWith(
          ShippingQuery value, $Res Function(ShippingQuery) then) =
      _$ShippingQueryCopyWithImpl<$Res, ShippingQuery>;
  @useResult
  $Res call(
      {String id,
      User from,
      @JsonKey(name: 'invoice_payload') String invoicePayload,
      @JsonKey(name: 'shipping_address') ShippingAddress shippingAddress});

  $UserCopyWith<$Res> get from;
  $ShippingAddressCopyWith<$Res> get shippingAddress;
}

/// @nodoc
class _$ShippingQueryCopyWithImpl<$Res, $Val extends ShippingQuery>
    implements $ShippingQueryCopyWith<$Res> {
  _$ShippingQueryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShippingQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? from = null,
    Object? invoicePayload = null,
    Object? shippingAddress = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as User,
      invoicePayload: null == invoicePayload
          ? _value.invoicePayload
          : invoicePayload // ignore: cast_nullable_to_non_nullable
              as String,
      shippingAddress: null == shippingAddress
          ? _value.shippingAddress
          : shippingAddress // ignore: cast_nullable_to_non_nullable
              as ShippingAddress,
    ) as $Val);
  }

  /// Create a copy of ShippingQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get from {
    return $UserCopyWith<$Res>(_value.from, (value) {
      return _then(_value.copyWith(from: value) as $Val);
    });
  }

  /// Create a copy of ShippingQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ShippingAddressCopyWith<$Res> get shippingAddress {
    return $ShippingAddressCopyWith<$Res>(_value.shippingAddress, (value) {
      return _then(_value.copyWith(shippingAddress: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ShippingQueryImplCopyWith<$Res>
    implements $ShippingQueryCopyWith<$Res> {
  factory _$$ShippingQueryImplCopyWith(
          _$ShippingQueryImpl value, $Res Function(_$ShippingQueryImpl) then) =
      __$$ShippingQueryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      User from,
      @JsonKey(name: 'invoice_payload') String invoicePayload,
      @JsonKey(name: 'shipping_address') ShippingAddress shippingAddress});

  @override
  $UserCopyWith<$Res> get from;
  @override
  $ShippingAddressCopyWith<$Res> get shippingAddress;
}

/// @nodoc
class __$$ShippingQueryImplCopyWithImpl<$Res>
    extends _$ShippingQueryCopyWithImpl<$Res, _$ShippingQueryImpl>
    implements _$$ShippingQueryImplCopyWith<$Res> {
  __$$ShippingQueryImplCopyWithImpl(
      _$ShippingQueryImpl _value, $Res Function(_$ShippingQueryImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShippingQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? from = null,
    Object? invoicePayload = null,
    Object? shippingAddress = null,
  }) {
    return _then(_$ShippingQueryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as User,
      invoicePayload: null == invoicePayload
          ? _value.invoicePayload
          : invoicePayload // ignore: cast_nullable_to_non_nullable
              as String,
      shippingAddress: null == shippingAddress
          ? _value.shippingAddress
          : shippingAddress // ignore: cast_nullable_to_non_nullable
              as ShippingAddress,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShippingQueryImpl implements _ShippingQuery {
  const _$ShippingQueryImpl(
      {required this.id,
      required this.from,
      @JsonKey(name: 'invoice_payload') required this.invoicePayload,
      @JsonKey(name: 'shipping_address') required this.shippingAddress});

  factory _$ShippingQueryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShippingQueryImplFromJson(json);

  /// Unique query identifier
  @override
  final String id;

  /// User who sent the query
  @override
  final User from;

  /// Bot specified invoice payload
  @override
  @JsonKey(name: 'invoice_payload')
  final String invoicePayload;

  /// User specified shipping address
  @override
  @JsonKey(name: 'shipping_address')
  final ShippingAddress shippingAddress;

  @override
  String toString() {
    return 'ShippingQuery(id: $id, from: $from, invoicePayload: $invoicePayload, shippingAddress: $shippingAddress)';
  }

  /// Create a copy of ShippingQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShippingQueryImplCopyWith<_$ShippingQueryImpl> get copyWith =>
      __$$ShippingQueryImplCopyWithImpl<_$ShippingQueryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShippingQueryImplToJson(
      this,
    );
  }
}

abstract class _ShippingQuery implements ShippingQuery {
  const factory _ShippingQuery(
      {required final String id,
      required final User from,
      @JsonKey(name: 'invoice_payload') required final String invoicePayload,
      @JsonKey(name: 'shipping_address')
      required final ShippingAddress shippingAddress}) = _$ShippingQueryImpl;

  factory _ShippingQuery.fromJson(Map<String, dynamic> json) =
      _$ShippingQueryImpl.fromJson;

  /// Unique query identifier
  @override
  String get id;

  /// User who sent the query
  @override
  User get from;

  /// Bot specified invoice payload
  @override
  @JsonKey(name: 'invoice_payload')
  String get invoicePayload;

  /// User specified shipping address
  @override
  @JsonKey(name: 'shipping_address')
  ShippingAddress get shippingAddress;

  /// Create a copy of ShippingQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShippingQueryImplCopyWith<_$ShippingQueryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
