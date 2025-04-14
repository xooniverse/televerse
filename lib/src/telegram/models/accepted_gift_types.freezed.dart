// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'accepted_gift_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AcceptedGiftTypes {
  /// True, if unlimited regular gifts are accepted
  @JsonKey(name: 'unlimited_gifts')
  bool get unlimitedGifts;

  /// True, if limited regular gifts are accepted
  @JsonKey(name: 'limited_gifts')
  bool get limitedGifts;

  /// True, if unique gifts or gifts that can be upgraded to unique for free are accepted
  @JsonKey(name: 'unique_gifts')
  bool get uniqueGifts;

  /// True, if a Telegram Premium subscription is accepted
  @JsonKey(name: 'premium_subscription')
  bool get premiumSubscription;

  /// Create a copy of AcceptedGiftTypes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AcceptedGiftTypesCopyWith<AcceptedGiftTypes> get copyWith =>
      _$AcceptedGiftTypesCopyWithImpl<AcceptedGiftTypes>(
          this as AcceptedGiftTypes, _$identity);

  /// Serializes this AcceptedGiftTypes to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'AcceptedGiftTypes(unlimitedGifts: $unlimitedGifts, limitedGifts: $limitedGifts, uniqueGifts: $uniqueGifts, premiumSubscription: $premiumSubscription)';
  }
}

/// @nodoc
abstract mixin class $AcceptedGiftTypesCopyWith<$Res> {
  factory $AcceptedGiftTypesCopyWith(
          AcceptedGiftTypes value, $Res Function(AcceptedGiftTypes) _then) =
      _$AcceptedGiftTypesCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'unlimited_gifts') bool unlimitedGifts,
      @JsonKey(name: 'limited_gifts') bool limitedGifts,
      @JsonKey(name: 'unique_gifts') bool uniqueGifts,
      @JsonKey(name: 'premium_subscription') bool premiumSubscription});
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
    Object? unlimitedGifts = null,
    Object? limitedGifts = null,
    Object? uniqueGifts = null,
    Object? premiumSubscription = null,
  }) {
    return _then(_self.copyWith(
      unlimitedGifts: null == unlimitedGifts
          ? _self.unlimitedGifts
          : unlimitedGifts // ignore: cast_nullable_to_non_nullable
              as bool,
      limitedGifts: null == limitedGifts
          ? _self.limitedGifts
          : limitedGifts // ignore: cast_nullable_to_non_nullable
              as bool,
      uniqueGifts: null == uniqueGifts
          ? _self.uniqueGifts
          : uniqueGifts // ignore: cast_nullable_to_non_nullable
              as bool,
      premiumSubscription: null == premiumSubscription
          ? _self.premiumSubscription
          : premiumSubscription // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _AcceptedGiftTypes implements AcceptedGiftTypes {
  const _AcceptedGiftTypes(
      {@JsonKey(name: 'unlimited_gifts') required this.unlimitedGifts,
      @JsonKey(name: 'limited_gifts') required this.limitedGifts,
      @JsonKey(name: 'unique_gifts') required this.uniqueGifts,
      @JsonKey(name: 'premium_subscription')
      required this.premiumSubscription});
  factory _AcceptedGiftTypes.fromJson(Map<String, dynamic> json) =>
      _$AcceptedGiftTypesFromJson(json);

  /// True, if unlimited regular gifts are accepted
  @override
  @JsonKey(name: 'unlimited_gifts')
  final bool unlimitedGifts;

  /// True, if limited regular gifts are accepted
  @override
  @JsonKey(name: 'limited_gifts')
  final bool limitedGifts;

  /// True, if unique gifts or gifts that can be upgraded to unique for free are accepted
  @override
  @JsonKey(name: 'unique_gifts')
  final bool uniqueGifts;

  /// True, if a Telegram Premium subscription is accepted
  @override
  @JsonKey(name: 'premium_subscription')
  final bool premiumSubscription;

  /// Create a copy of AcceptedGiftTypes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AcceptedGiftTypesCopyWith<_AcceptedGiftTypes> get copyWith =>
      __$AcceptedGiftTypesCopyWithImpl<_AcceptedGiftTypes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AcceptedGiftTypesToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'AcceptedGiftTypes(unlimitedGifts: $unlimitedGifts, limitedGifts: $limitedGifts, uniqueGifts: $uniqueGifts, premiumSubscription: $premiumSubscription)';
  }
}

/// @nodoc
abstract mixin class _$AcceptedGiftTypesCopyWith<$Res>
    implements $AcceptedGiftTypesCopyWith<$Res> {
  factory _$AcceptedGiftTypesCopyWith(
          _AcceptedGiftTypes value, $Res Function(_AcceptedGiftTypes) _then) =
      __$AcceptedGiftTypesCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'unlimited_gifts') bool unlimitedGifts,
      @JsonKey(name: 'limited_gifts') bool limitedGifts,
      @JsonKey(name: 'unique_gifts') bool uniqueGifts,
      @JsonKey(name: 'premium_subscription') bool premiumSubscription});
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
    Object? unlimitedGifts = null,
    Object? limitedGifts = null,
    Object? uniqueGifts = null,
    Object? premiumSubscription = null,
  }) {
    return _then(_AcceptedGiftTypes(
      unlimitedGifts: null == unlimitedGifts
          ? _self.unlimitedGifts
          : unlimitedGifts // ignore: cast_nullable_to_non_nullable
              as bool,
      limitedGifts: null == limitedGifts
          ? _self.limitedGifts
          : limitedGifts // ignore: cast_nullable_to_non_nullable
              as bool,
      uniqueGifts: null == uniqueGifts
          ? _self.uniqueGifts
          : uniqueGifts // ignore: cast_nullable_to_non_nullable
              as bool,
      premiumSubscription: null == premiumSubscription
          ? _self.premiumSubscription
          : premiumSubscription // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}
