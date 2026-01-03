// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'accepted_gift_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AcceptedGiftTypes {
  /// Optional. True, if unlimited regular gifts are accepted
  @JsonKey(name: 'unlimited_gifts')
  bool? get unlimitedGifts;

  /// Optional. True, if limited regular gifts are accepted
  @JsonKey(name: 'limited_gifts')
  bool? get limitedGifts;

  /// Optional. True, if unique gifts or gifts that can be upgraded to unique for free are accepted
  @JsonKey(name: 'unique_gifts')
  bool? get uniqueGifts;

  /// Optional. True, if a Telegram Premium subscription is accepted
  @JsonKey(name: 'premium_subscription')
  bool? get premiumSubscription;

  /// Optional. True, if transfers of unique gifts from channels are accepted
  @JsonKey(name: 'gifts_from_channels')
  bool? get giftsFromChannels;

  /// Create a copy of AcceptedGiftTypes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AcceptedGiftTypesCopyWith<AcceptedGiftTypes> get copyWith =>
      _$AcceptedGiftTypesCopyWithImpl<AcceptedGiftTypes>(
        this as AcceptedGiftTypes,
        _$identity,
      );

  /// Serializes this AcceptedGiftTypes to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'AcceptedGiftTypes(unlimitedGifts: $unlimitedGifts, limitedGifts: $limitedGifts, uniqueGifts: $uniqueGifts, premiumSubscription: $premiumSubscription, giftsFromChannels: $giftsFromChannels)';
  }
}

/// @nodoc
abstract mixin class $AcceptedGiftTypesCopyWith<$Res> {
  factory $AcceptedGiftTypesCopyWith(
    AcceptedGiftTypes value,
    $Res Function(AcceptedGiftTypes) _then,
  ) = _$AcceptedGiftTypesCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'unlimited_gifts') bool? unlimitedGifts,
    @JsonKey(name: 'limited_gifts') bool? limitedGifts,
    @JsonKey(name: 'unique_gifts') bool? uniqueGifts,
    @JsonKey(name: 'premium_subscription') bool? premiumSubscription,
    @JsonKey(name: 'gifts_from_channels') bool? giftsFromChannels,
  });
}

/// @nodoc
class _$AcceptedGiftTypesCopyWithImpl<$Res>
    implements $AcceptedGiftTypesCopyWith<$Res> {
  _$AcceptedGiftTypesCopyWithImpl(this._self, this._then);

  final AcceptedGiftTypes _self;
  final $Res Function(AcceptedGiftTypes) _then;

  /// Create a copy of AcceptedGiftTypes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unlimitedGifts = freezed,
    Object? limitedGifts = freezed,
    Object? uniqueGifts = freezed,
    Object? premiumSubscription = freezed,
    Object? giftsFromChannels = freezed,
  }) {
    return _then(
      _self.copyWith(
        unlimitedGifts: freezed == unlimitedGifts
            ? _self.unlimitedGifts
            : unlimitedGifts // ignore: cast_nullable_to_non_nullable
                  as bool?,
        limitedGifts: freezed == limitedGifts
            ? _self.limitedGifts
            : limitedGifts // ignore: cast_nullable_to_non_nullable
                  as bool?,
        uniqueGifts: freezed == uniqueGifts
            ? _self.uniqueGifts
            : uniqueGifts // ignore: cast_nullable_to_non_nullable
                  as bool?,
        premiumSubscription: freezed == premiumSubscription
            ? _self.premiumSubscription
            : premiumSubscription // ignore: cast_nullable_to_non_nullable
                  as bool?,
        giftsFromChannels: freezed == giftsFromChannels
            ? _self.giftsFromChannels
            : giftsFromChannels // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [AcceptedGiftTypes].
extension AcceptedGiftTypesPatterns on AcceptedGiftTypes {
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
    TResult Function(_AcceptedGiftTypes value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AcceptedGiftTypes() when $default != null:
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
    TResult Function(_AcceptedGiftTypes value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AcceptedGiftTypes():
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
    TResult? Function(_AcceptedGiftTypes value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AcceptedGiftTypes() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AcceptedGiftTypes implements AcceptedGiftTypes {
  const _AcceptedGiftTypes({
    @JsonKey(name: 'unlimited_gifts') this.unlimitedGifts,
    @JsonKey(name: 'limited_gifts') this.limitedGifts,
    @JsonKey(name: 'unique_gifts') this.uniqueGifts,
    @JsonKey(name: 'premium_subscription') this.premiumSubscription,
    @JsonKey(name: 'gifts_from_channels') this.giftsFromChannels,
  });
  factory _AcceptedGiftTypes.fromJson(Map<String, dynamic> json) =>
      _$AcceptedGiftTypesFromJson(json);

  /// Optional. True, if unlimited regular gifts are accepted
  @override
  @JsonKey(name: 'unlimited_gifts')
  final bool? unlimitedGifts;

  /// Optional. True, if limited regular gifts are accepted
  @override
  @JsonKey(name: 'limited_gifts')
  final bool? limitedGifts;

  /// Optional. True, if unique gifts or gifts that can be upgraded to unique for free are accepted
  @override
  @JsonKey(name: 'unique_gifts')
  final bool? uniqueGifts;

  /// Optional. True, if a Telegram Premium subscription is accepted
  @override
  @JsonKey(name: 'premium_subscription')
  final bool? premiumSubscription;

  /// Optional. True, if transfers of unique gifts from channels are accepted
  @override
  @JsonKey(name: 'gifts_from_channels')
  final bool? giftsFromChannels;

  /// Create a copy of AcceptedGiftTypes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AcceptedGiftTypesCopyWith<_AcceptedGiftTypes> get copyWith =>
      __$AcceptedGiftTypesCopyWithImpl<_AcceptedGiftTypes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AcceptedGiftTypesToJson(this);
  }

  @override
  String toString() {
    return 'AcceptedGiftTypes(unlimitedGifts: $unlimitedGifts, limitedGifts: $limitedGifts, uniqueGifts: $uniqueGifts, premiumSubscription: $premiumSubscription, giftsFromChannels: $giftsFromChannels)';
  }
}

/// @nodoc
abstract mixin class _$AcceptedGiftTypesCopyWith<$Res>
    implements $AcceptedGiftTypesCopyWith<$Res> {
  factory _$AcceptedGiftTypesCopyWith(
    _AcceptedGiftTypes value,
    $Res Function(_AcceptedGiftTypes) _then,
  ) = __$AcceptedGiftTypesCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'unlimited_gifts') bool? unlimitedGifts,
    @JsonKey(name: 'limited_gifts') bool? limitedGifts,
    @JsonKey(name: 'unique_gifts') bool? uniqueGifts,
    @JsonKey(name: 'premium_subscription') bool? premiumSubscription,
    @JsonKey(name: 'gifts_from_channels') bool? giftsFromChannels,
  });
}

/// @nodoc
class __$AcceptedGiftTypesCopyWithImpl<$Res>
    implements _$AcceptedGiftTypesCopyWith<$Res> {
  __$AcceptedGiftTypesCopyWithImpl(this._self, this._then);

  final _AcceptedGiftTypes _self;
  final $Res Function(_AcceptedGiftTypes) _then;

  /// Create a copy of AcceptedGiftTypes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? unlimitedGifts = freezed,
    Object? limitedGifts = freezed,
    Object? uniqueGifts = freezed,
    Object? premiumSubscription = freezed,
    Object? giftsFromChannels = freezed,
  }) {
    return _then(
      _AcceptedGiftTypes(
        unlimitedGifts: freezed == unlimitedGifts
            ? _self.unlimitedGifts
            : unlimitedGifts // ignore: cast_nullable_to_non_nullable
                  as bool?,
        limitedGifts: freezed == limitedGifts
            ? _self.limitedGifts
            : limitedGifts // ignore: cast_nullable_to_non_nullable
                  as bool?,
        uniqueGifts: freezed == uniqueGifts
            ? _self.uniqueGifts
            : uniqueGifts // ignore: cast_nullable_to_non_nullable
                  as bool?,
        premiumSubscription: freezed == premiumSubscription
            ? _self.premiumSubscription
            : premiumSubscription // ignore: cast_nullable_to_non_nullable
                  as bool?,
        giftsFromChannels: freezed == giftsFromChannels
            ? _self.giftsFromChannels
            : giftsFromChannels // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}
