// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shipping_option.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ShippingOption {
  /// Shipping option identifier
  @JsonKey(name: 'id')
  String get id;

  /// Option title
  @JsonKey(name: 'title')
  String get title;

  /// List of price portions
  @JsonKey(name: 'prices')
  List<LabeledPrice> get prices;

  /// Create a copy of ShippingOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ShippingOptionCopyWith<ShippingOption> get copyWith =>
      _$ShippingOptionCopyWithImpl<ShippingOption>(
          this as ShippingOption, _$identity);

  /// Serializes this ShippingOption to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'ShippingOption(id: $id, title: $title, prices: $prices)';
  }
}

/// @nodoc
abstract mixin class $ShippingOptionCopyWith<$Res> {
  factory $ShippingOptionCopyWith(
          ShippingOption value, $Res Function(ShippingOption) _then) =
      _$ShippingOptionCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'prices') List<LabeledPrice> prices});
}

/// @nodoc
class _$ShippingOptionCopyWithImpl<$Res>
    implements $ShippingOptionCopyWith<$Res> {
  _$ShippingOptionCopyWithImpl(this._self, this._then);

  final ShippingOption _self;
  final $Res Function(ShippingOption) _then;

  /// Create a copy of ShippingOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? prices = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      prices: null == prices
          ? _self.prices
          : prices // ignore: cast_nullable_to_non_nullable
              as List<LabeledPrice>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ShippingOption implements ShippingOption {
  const _ShippingOption(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'prices') required final List<LabeledPrice> prices})
      : _prices = prices;
  factory _ShippingOption.fromJson(Map<String, dynamic> json) =>
      _$ShippingOptionFromJson(json);

  /// Shipping option identifier
  @override
  @JsonKey(name: 'id')
  final String id;

  /// Option title
  @override
  @JsonKey(name: 'title')
  final String title;

  /// List of price portions
  final List<LabeledPrice> _prices;

  /// List of price portions
  @override
  @JsonKey(name: 'prices')
  List<LabeledPrice> get prices {
    if (_prices is EqualUnmodifiableListView) return _prices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_prices);
  }

  /// Create a copy of ShippingOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ShippingOptionCopyWith<_ShippingOption> get copyWith =>
      __$ShippingOptionCopyWithImpl<_ShippingOption>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ShippingOptionToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'ShippingOption(id: $id, title: $title, prices: $prices)';
  }
}

/// @nodoc
abstract mixin class _$ShippingOptionCopyWith<$Res>
    implements $ShippingOptionCopyWith<$Res> {
  factory _$ShippingOptionCopyWith(
          _ShippingOption value, $Res Function(_ShippingOption) _then) =
      __$ShippingOptionCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'prices') List<LabeledPrice> prices});
}

/// @nodoc
class __$ShippingOptionCopyWithImpl<$Res>
    implements _$ShippingOptionCopyWith<$Res> {
  __$ShippingOptionCopyWithImpl(this._self, this._then);

  final _ShippingOption _self;
  final $Res Function(_ShippingOption) _then;

  /// Create a copy of ShippingOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? prices = null,
  }) {
    return _then(_ShippingOption(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      prices: null == prices
          ? _self._prices
          : prices // ignore: cast_nullable_to_non_nullable
              as List<LabeledPrice>,
    ));
  }
}
