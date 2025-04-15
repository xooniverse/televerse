// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unique_gift_symbol.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UniqueGiftSymbol {
  /// Name of the symbol
  @JsonKey(name: 'name')
  String get name;

  /// The sticker that represents the unique gift
  @JsonKey(name: 'sticker')
  Sticker get sticker;

  /// The number of unique gifts that receive this model for every 1000 gifts upgraded
  @JsonKey(name: 'rarity_per_mille')
  int get rarityPerMille;

  /// Create a copy of UniqueGiftSymbol
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UniqueGiftSymbolCopyWith<UniqueGiftSymbol> get copyWith =>
      _$UniqueGiftSymbolCopyWithImpl<UniqueGiftSymbol>(
          this as UniqueGiftSymbol, _$identity);

  /// Serializes this UniqueGiftSymbol to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'UniqueGiftSymbol(name: $name, sticker: $sticker, rarityPerMille: $rarityPerMille)';
  }
}

/// @nodoc
abstract mixin class $UniqueGiftSymbolCopyWith<$Res> {
  factory $UniqueGiftSymbolCopyWith(
          UniqueGiftSymbol value, $Res Function(UniqueGiftSymbol) _then) =
      _$UniqueGiftSymbolCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'sticker') Sticker sticker,
      @JsonKey(name: 'rarity_per_mille') int rarityPerMille});

  $StickerCopyWith<$Res> get sticker;
}

/// @nodoc
class _$UniqueGiftSymbolCopyWithImpl<$Res>
    implements $UniqueGiftSymbolCopyWith<$Res> {
  _$UniqueGiftSymbolCopyWithImpl(this._self, this._then);

  final UniqueGiftSymbol _self;
  final $Res Function(UniqueGiftSymbol) _then;

  /// Create a copy of UniqueGiftSymbol
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? sticker = null,
    Object? rarityPerMille = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sticker: null == sticker
          ? _self.sticker
          : sticker // ignore: cast_nullable_to_non_nullable
              as Sticker,
      rarityPerMille: null == rarityPerMille
          ? _self.rarityPerMille
          : rarityPerMille // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of UniqueGiftSymbol
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StickerCopyWith<$Res> get sticker {
    return $StickerCopyWith<$Res>(_self.sticker, (value) {
      return _then(_self.copyWith(sticker: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _UniqueGiftSymbol implements UniqueGiftSymbol {
  const _UniqueGiftSymbol(
      {@JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'sticker') required this.sticker,
      @JsonKey(name: 'rarity_per_mille') required this.rarityPerMille});
  factory _UniqueGiftSymbol.fromJson(Map<String, dynamic> json) =>
      _$UniqueGiftSymbolFromJson(json);

  /// Name of the symbol
  @override
  @JsonKey(name: 'name')
  final String name;

  /// The sticker that represents the unique gift
  @override
  @JsonKey(name: 'sticker')
  final Sticker sticker;

  /// The number of unique gifts that receive this model for every 1000 gifts upgraded
  @override
  @JsonKey(name: 'rarity_per_mille')
  final int rarityPerMille;

  /// Create a copy of UniqueGiftSymbol
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UniqueGiftSymbolCopyWith<_UniqueGiftSymbol> get copyWith =>
      __$UniqueGiftSymbolCopyWithImpl<_UniqueGiftSymbol>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UniqueGiftSymbolToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'UniqueGiftSymbol(name: $name, sticker: $sticker, rarityPerMille: $rarityPerMille)';
  }
}

/// @nodoc
abstract mixin class _$UniqueGiftSymbolCopyWith<$Res>
    implements $UniqueGiftSymbolCopyWith<$Res> {
  factory _$UniqueGiftSymbolCopyWith(
          _UniqueGiftSymbol value, $Res Function(_UniqueGiftSymbol) _then) =
      __$UniqueGiftSymbolCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'sticker') Sticker sticker,
      @JsonKey(name: 'rarity_per_mille') int rarityPerMille});

  @override
  $StickerCopyWith<$Res> get sticker;
}

/// @nodoc
class __$UniqueGiftSymbolCopyWithImpl<$Res>
    implements _$UniqueGiftSymbolCopyWith<$Res> {
  __$UniqueGiftSymbolCopyWithImpl(this._self, this._then);

  final _UniqueGiftSymbol _self;
  final $Res Function(_UniqueGiftSymbol) _then;

  /// Create a copy of UniqueGiftSymbol
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? sticker = null,
    Object? rarityPerMille = null,
  }) {
    return _then(_UniqueGiftSymbol(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sticker: null == sticker
          ? _self.sticker
          : sticker // ignore: cast_nullable_to_non_nullable
              as Sticker,
      rarityPerMille: null == rarityPerMille
          ? _self.rarityPerMille
          : rarityPerMille // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of UniqueGiftSymbol
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StickerCopyWith<$Res> get sticker {
    return $StickerCopyWith<$Res>(_self.sticker, (value) {
      return _then(_self.copyWith(sticker: value));
    });
  }
}
