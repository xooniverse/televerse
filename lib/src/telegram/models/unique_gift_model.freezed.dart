// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
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

  /// Optional. Rarity of the model if it is a crafted model. Currently, can be “uncommon”, “rare”, “epic”, or “legendary”.
  @JsonKey(name: 'rarity')
  RarityType? get rarity;

  /// Create a copy of UniqueGiftModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UniqueGiftModelCopyWith<UniqueGiftModel> get copyWith =>
      _$UniqueGiftModelCopyWithImpl<UniqueGiftModel>(
        this as UniqueGiftModel,
        _$identity,
      );

  /// Serializes this UniqueGiftModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'UniqueGiftModel(name: $name, sticker: $sticker, rarityPerMille: $rarityPerMille, rarity: $rarity)';
  }
}

/// @nodoc
abstract mixin class $UniqueGiftModelCopyWith<$Res> {
  factory $UniqueGiftModelCopyWith(
    UniqueGiftModel value,
    $Res Function(UniqueGiftModel) _then,
  ) = _$UniqueGiftModelCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'sticker') Sticker sticker,
    @JsonKey(name: 'rarity_per_mille') int rarityPerMille,
    @JsonKey(name: 'rarity') RarityType? rarity,
  });

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
    Object? rarity = freezed,
  }) {
    return _then(
      _self.copyWith(
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
        rarity: freezed == rarity
            ? _self.rarity
            : rarity // ignore: cast_nullable_to_non_nullable
                  as RarityType?,
      ),
    );
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

/// Adds pattern-matching-related methods to [UniqueGiftModel].
extension UniqueGiftModelPatterns on UniqueGiftModel {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UniqueGiftModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UniqueGiftModel() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_UniqueGiftModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UniqueGiftModel():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_UniqueGiftModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UniqueGiftModel() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UniqueGiftModel implements UniqueGiftModel {
  const _UniqueGiftModel({
    @JsonKey(name: 'name') required this.name,
    @JsonKey(name: 'sticker') required this.sticker,
    @JsonKey(name: 'rarity_per_mille') required this.rarityPerMille,
    @JsonKey(name: 'rarity') this.rarity,
  });
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

  /// Optional. Rarity of the model if it is a crafted model. Currently, can be “uncommon”, “rare”, “epic”, or “legendary”.
  @override
  @JsonKey(name: 'rarity')
  final RarityType? rarity;

  /// Create a copy of UniqueGiftModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UniqueGiftModelCopyWith<_UniqueGiftModel> get copyWith =>
      __$UniqueGiftModelCopyWithImpl<_UniqueGiftModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UniqueGiftModelToJson(this);
  }

  @override
  String toString() {
    return 'UniqueGiftModel(name: $name, sticker: $sticker, rarityPerMille: $rarityPerMille, rarity: $rarity)';
  }
}

/// @nodoc
abstract mixin class _$UniqueGiftModelCopyWith<$Res>
    implements $UniqueGiftModelCopyWith<$Res> {
  factory _$UniqueGiftModelCopyWith(
    _UniqueGiftModel value,
    $Res Function(_UniqueGiftModel) _then,
  ) = __$UniqueGiftModelCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'sticker') Sticker sticker,
    @JsonKey(name: 'rarity_per_mille') int rarityPerMille,
    @JsonKey(name: 'rarity') RarityType? rarity,
  });

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
    Object? rarity = freezed,
  }) {
    return _then(
      _UniqueGiftModel(
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
        rarity: freezed == rarity
            ? _self.rarity
            : rarity // ignore: cast_nullable_to_non_nullable
                  as RarityType?,
      ),
    );
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
