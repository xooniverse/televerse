// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unique_gift_backdrop.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UniqueGiftBackdrop {
  /// Name of the backdrop
  @JsonKey(name: 'name')
  String get name;

  /// Colors of the backdrop
  @JsonKey(name: 'colors')
  UniqueGiftBackdropColors get colors;

  /// The number of unique gifts that receive this backdrop for every 1000 gifts upgraded
  @JsonKey(name: 'rarity_per_mille')
  int get rarityPerMille;

  /// Create a copy of UniqueGiftBackdrop
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UniqueGiftBackdropCopyWith<UniqueGiftBackdrop> get copyWith =>
      _$UniqueGiftBackdropCopyWithImpl<UniqueGiftBackdrop>(
          this as UniqueGiftBackdrop, _$identity);

  /// Serializes this UniqueGiftBackdrop to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'UniqueGiftBackdrop(name: $name, colors: $colors, rarityPerMille: $rarityPerMille)';
  }
}

/// @nodoc
abstract mixin class $UniqueGiftBackdropCopyWith<$Res> {
  factory $UniqueGiftBackdropCopyWith(
          UniqueGiftBackdrop value, $Res Function(UniqueGiftBackdrop) _then) =
      _$UniqueGiftBackdropCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'colors') UniqueGiftBackdropColors colors,
      @JsonKey(name: 'rarity_per_mille') int rarityPerMille});

  $UniqueGiftBackdropColorsCopyWith<$Res> get colors;
}

/// @nodoc
class _$UniqueGiftBackdropCopyWithImpl<$Res>
    implements $UniqueGiftBackdropCopyWith<$Res> {
  _$UniqueGiftBackdropCopyWithImpl(this._self, this._then);

  final UniqueGiftBackdrop _self;
  final $Res Function(UniqueGiftBackdrop) _then;

  /// Create a copy of UniqueGiftBackdrop
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? colors = null,
    Object? rarityPerMille = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      colors: null == colors
          ? _self.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as UniqueGiftBackdropColors,
      rarityPerMille: null == rarityPerMille
          ? _self.rarityPerMille
          : rarityPerMille // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of UniqueGiftBackdrop
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UniqueGiftBackdropColorsCopyWith<$Res> get colors {
    return $UniqueGiftBackdropColorsCopyWith<$Res>(_self.colors, (value) {
      return _then(_self.copyWith(colors: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _UniqueGiftBackdrop implements UniqueGiftBackdrop {
  const _UniqueGiftBackdrop(
      {@JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'colors') required this.colors,
      @JsonKey(name: 'rarity_per_mille') required this.rarityPerMille});
  factory _UniqueGiftBackdrop.fromJson(Map<String, dynamic> json) =>
      _$UniqueGiftBackdropFromJson(json);

  /// Name of the backdrop
  @override
  @JsonKey(name: 'name')
  final String name;

  /// Colors of the backdrop
  @override
  @JsonKey(name: 'colors')
  final UniqueGiftBackdropColors colors;

  /// The number of unique gifts that receive this backdrop for every 1000 gifts upgraded
  @override
  @JsonKey(name: 'rarity_per_mille')
  final int rarityPerMille;

  /// Create a copy of UniqueGiftBackdrop
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UniqueGiftBackdropCopyWith<_UniqueGiftBackdrop> get copyWith =>
      __$UniqueGiftBackdropCopyWithImpl<_UniqueGiftBackdrop>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UniqueGiftBackdropToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'UniqueGiftBackdrop(name: $name, colors: $colors, rarityPerMille: $rarityPerMille)';
  }
}

/// @nodoc
abstract mixin class _$UniqueGiftBackdropCopyWith<$Res>
    implements $UniqueGiftBackdropCopyWith<$Res> {
  factory _$UniqueGiftBackdropCopyWith(
          _UniqueGiftBackdrop value, $Res Function(_UniqueGiftBackdrop) _then) =
      __$UniqueGiftBackdropCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'colors') UniqueGiftBackdropColors colors,
      @JsonKey(name: 'rarity_per_mille') int rarityPerMille});

  @override
  $UniqueGiftBackdropColorsCopyWith<$Res> get colors;
}

/// @nodoc
class __$UniqueGiftBackdropCopyWithImpl<$Res>
    implements _$UniqueGiftBackdropCopyWith<$Res> {
  __$UniqueGiftBackdropCopyWithImpl(this._self, this._then);

  final _UniqueGiftBackdrop _self;
  final $Res Function(_UniqueGiftBackdrop) _then;

  /// Create a copy of UniqueGiftBackdrop
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? colors = null,
    Object? rarityPerMille = null,
  }) {
    return _then(_UniqueGiftBackdrop(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      colors: null == colors
          ? _self.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as UniqueGiftBackdropColors,
      rarityPerMille: null == rarityPerMille
          ? _self.rarityPerMille
          : rarityPerMille // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of UniqueGiftBackdrop
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UniqueGiftBackdropColorsCopyWith<$Res> get colors {
    return $UniqueGiftBackdropColorsCopyWith<$Res>(_self.colors, (value) {
      return _then(_self.copyWith(colors: value));
    });
  }
}
