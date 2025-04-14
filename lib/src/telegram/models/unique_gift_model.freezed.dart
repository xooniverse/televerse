// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unique_gift_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UniqueGiftModel {
  /// Name of the model
  @JsonKey(name: 'name')
  String get name;

  /// The sticker that represents the unique gift
  @JsonKey(name: 'sticker')
  Sticker get sticker;

  /// The number of unique gifts that receive this model for every 1000 gifts upgraded
  @JsonKey(name: 'rarity_per_mille')
  int get rarityPerMille;

  /// Create a copy of UniqueGiftModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UniqueGiftModelCopyWith<UniqueGiftModel> get copyWith =>
      _$UniqueGiftModelCopyWithImpl<UniqueGiftModel>(
          this as UniqueGiftModel, _$identity);

  /// Serializes this UniqueGiftModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'UniqueGiftModel(name: $name, sticker: $sticker, rarityPerMille: $rarityPerMille)';
  }
}

/// @nodoc
abstract mixin class $UniqueGiftModelCopyWith<$Res> {
  factory $UniqueGiftModelCopyWith(
          UniqueGiftModel value, $Res Function(UniqueGiftModel) _then) =
      _$UniqueGiftModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'sticker') Sticker sticker,
      @JsonKey(name: 'rarity_per_mille') int rarityPerMille});

  $StickerCopyWith<$Res> get sticker;
}

/// @nodoc
class _$UniqueGiftModelCopyWithImpl<$Res>
    implements $UniqueGiftModelCopyWith<$Res> {
  _$UniqueGiftModelCopyWithImpl(this._self, this._then);

  final UniqueGiftModel _self;
  final $Res Function(UniqueGiftModel) _then;

  /// Create a copy of UniqueGiftModel
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

  /// Create a copy of UniqueGiftModel
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
class _UniqueGiftModel implements UniqueGiftModel {
  const _UniqueGiftModel(
      {@JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'sticker') required this.sticker,
      @JsonKey(name: 'rarity_per_mille') required this.rarityPerMille});
  factory _UniqueGiftModel.fromJson(Map<String, dynamic> json) =>
      _$UniqueGiftModelFromJson(json);

  /// Name of the model
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

  /// Create a copy of UniqueGiftModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UniqueGiftModelCopyWith<_UniqueGiftModel> get copyWith =>
      __$UniqueGiftModelCopyWithImpl<_UniqueGiftModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UniqueGiftModelToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'UniqueGiftModel(name: $name, sticker: $sticker, rarityPerMille: $rarityPerMille)';
  }
}

/// @nodoc
abstract mixin class _$UniqueGiftModelCopyWith<$Res>
    implements $UniqueGiftModelCopyWith<$Res> {
  factory _$UniqueGiftModelCopyWith(
          _UniqueGiftModel value, $Res Function(_UniqueGiftModel) _then) =
      __$UniqueGiftModelCopyWithImpl;
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
class __$UniqueGiftModelCopyWithImpl<$Res>
    implements _$UniqueGiftModelCopyWith<$Res> {
  __$UniqueGiftModelCopyWithImpl(this._self, this._then);

  final _UniqueGiftModel _self;
  final $Res Function(_UniqueGiftModel) _then;

  /// Create a copy of UniqueGiftModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? sticker = null,
    Object? rarityPerMille = null,
  }) {
    return _then(_UniqueGiftModel(
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

  /// Create a copy of UniqueGiftModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StickerCopyWith<$Res> get sticker {
    return $StickerCopyWith<$Res>(_self.sticker, (value) {
      return _then(_self.copyWith(sticker: value));
    });
  }
}
