// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shipping_option.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ShippingOption _$ShippingOptionFromJson(Map<String, dynamic> json) {
  return _ShippingOption.fromJson(json);
}

/// @nodoc
mixin _$ShippingOption {
  /// Shipping option identifier
  String get id => throw _privateConstructorUsedError;

  /// Option title
  String get title => throw _privateConstructorUsedError;

  /// List of price portions
  List<LabeledPrice> get prices => throw _privateConstructorUsedError;

  /// Serializes this ShippingOption to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShippingOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShippingOptionCopyWith<ShippingOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShippingOptionCopyWith<$Res> {
  factory $ShippingOptionCopyWith(
          ShippingOption value, $Res Function(ShippingOption) then) =
      _$ShippingOptionCopyWithImpl<$Res, ShippingOption>;
  @useResult
  $Res call({String id, String title, List<LabeledPrice> prices});
}

/// @nodoc
class _$ShippingOptionCopyWithImpl<$Res, $Val extends ShippingOption>
    implements $ShippingOptionCopyWith<$Res> {
  _$ShippingOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShippingOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? prices = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      prices: null == prices
          ? _value.prices
          : prices // ignore: cast_nullable_to_non_nullable
              as List<LabeledPrice>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShippingOptionImplCopyWith<$Res>
    implements $ShippingOptionCopyWith<$Res> {
  factory _$$ShippingOptionImplCopyWith(_$ShippingOptionImpl value,
          $Res Function(_$ShippingOptionImpl) then) =
      __$$ShippingOptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, List<LabeledPrice> prices});
}

/// @nodoc
class __$$ShippingOptionImplCopyWithImpl<$Res>
    extends _$ShippingOptionCopyWithImpl<$Res, _$ShippingOptionImpl>
    implements _$$ShippingOptionImplCopyWith<$Res> {
  __$$ShippingOptionImplCopyWithImpl(
      _$ShippingOptionImpl _value, $Res Function(_$ShippingOptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShippingOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? prices = null,
  }) {
    return _then(_$ShippingOptionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      prices: null == prices
          ? _value._prices
          : prices // ignore: cast_nullable_to_non_nullable
              as List<LabeledPrice>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShippingOptionImpl implements _ShippingOption {
  const _$ShippingOptionImpl(
      {required this.id,
      required this.title,
      required final List<LabeledPrice> prices})
      : _prices = prices;

  factory _$ShippingOptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShippingOptionImplFromJson(json);

  /// Shipping option identifier
  @override
  final String id;

  /// Option title
  @override
  final String title;

  /// List of price portions
  final List<LabeledPrice> _prices;

  /// List of price portions
  @override
  List<LabeledPrice> get prices {
    if (_prices is EqualUnmodifiableListView) return _prices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_prices);
  }

  @override
  String toString() {
    return 'ShippingOption(id: $id, title: $title, prices: $prices)';
  }

  /// Create a copy of ShippingOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShippingOptionImplCopyWith<_$ShippingOptionImpl> get copyWith =>
      __$$ShippingOptionImplCopyWithImpl<_$ShippingOptionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShippingOptionImplToJson(
      this,
    );
  }
}

abstract class _ShippingOption implements ShippingOption {
  const factory _ShippingOption(
      {required final String id,
      required final String title,
      required final List<LabeledPrice> prices}) = _$ShippingOptionImpl;

  factory _ShippingOption.fromJson(Map<String, dynamic> json) =
      _$ShippingOptionImpl.fromJson;

  /// Shipping option identifier
  @override
  String get id;

  /// Option title
  @override
  String get title;

  /// List of price portions
  @override
  List<LabeledPrice> get prices;

  /// Create a copy of ShippingOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShippingOptionImplCopyWith<_$ShippingOptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
