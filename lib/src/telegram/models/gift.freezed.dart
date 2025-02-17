// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gift.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Gift _$GiftFromJson(Map<String, dynamic> json) {
  return _Gift.fromJson(json);
}

/// @nodoc
mixin _$Gift {
  /// Unique identifier of the gift.
  String get id => throw _privateConstructorUsedError;

  /// The sticker that represents the gift.
  Sticker get sticker => throw _privateConstructorUsedError;

  /// The number of Telegram Stars that must be paid to send the sticker.
  @JsonKey(name: 'star_count')
  int get starCount => throw _privateConstructorUsedError;

  /// Optional. The total number of gifts of this type that can be sent; for
  /// limited gifts only.
  @JsonKey(name: 'total_count')
  int? get totalCount => throw _privateConstructorUsedError;

  /// Optional. The number of remaining gifts of this type that can be sent;
  /// for limited gifts only.
  @JsonKey(name: 'remaining_count')
  int? get remainingCount => throw _privateConstructorUsedError;

  /// Optional. The number of Telegram Stars that must be paid to upgrade the
  /// gift to a unique one.
  @JsonKey(name: 'upgrade_star_count')
  int? get upgradeStarCount => throw _privateConstructorUsedError;

  /// Serializes this Gift to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Gift
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GiftCopyWith<Gift> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GiftCopyWith<$Res> {
  factory $GiftCopyWith(Gift value, $Res Function(Gift) then) =
      _$GiftCopyWithImpl<$Res, Gift>;
  @useResult
  $Res call(
      {String id,
      Sticker sticker,
      @JsonKey(name: 'star_count') int starCount,
      @JsonKey(name: 'total_count') int? totalCount,
      @JsonKey(name: 'remaining_count') int? remainingCount,
      @JsonKey(name: 'upgrade_star_count') int? upgradeStarCount});

  $StickerCopyWith<$Res> get sticker;
}

/// @nodoc
class _$GiftCopyWithImpl<$Res, $Val extends Gift>
    implements $GiftCopyWith<$Res> {
  _$GiftCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Gift
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sticker = null,
    Object? starCount = null,
    Object? totalCount = freezed,
    Object? remainingCount = freezed,
    Object? upgradeStarCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sticker: null == sticker
          ? _value.sticker
          : sticker // ignore: cast_nullable_to_non_nullable
              as Sticker,
      starCount: null == starCount
          ? _value.starCount
          : starCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      remainingCount: freezed == remainingCount
          ? _value.remainingCount
          : remainingCount // ignore: cast_nullable_to_non_nullable
              as int?,
      upgradeStarCount: freezed == upgradeStarCount
          ? _value.upgradeStarCount
          : upgradeStarCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of Gift
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StickerCopyWith<$Res> get sticker {
    return $StickerCopyWith<$Res>(_value.sticker, (value) {
      return _then(_value.copyWith(sticker: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GiftImplCopyWith<$Res> implements $GiftCopyWith<$Res> {
  factory _$$GiftImplCopyWith(
          _$GiftImpl value, $Res Function(_$GiftImpl) then) =
      __$$GiftImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      Sticker sticker,
      @JsonKey(name: 'star_count') int starCount,
      @JsonKey(name: 'total_count') int? totalCount,
      @JsonKey(name: 'remaining_count') int? remainingCount,
      @JsonKey(name: 'upgrade_star_count') int? upgradeStarCount});

  @override
  $StickerCopyWith<$Res> get sticker;
}

/// @nodoc
class __$$GiftImplCopyWithImpl<$Res>
    extends _$GiftCopyWithImpl<$Res, _$GiftImpl>
    implements _$$GiftImplCopyWith<$Res> {
  __$$GiftImplCopyWithImpl(_$GiftImpl _value, $Res Function(_$GiftImpl) _then)
      : super(_value, _then);

  /// Create a copy of Gift
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sticker = null,
    Object? starCount = null,
    Object? totalCount = freezed,
    Object? remainingCount = freezed,
    Object? upgradeStarCount = freezed,
  }) {
    return _then(_$GiftImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sticker: null == sticker
          ? _value.sticker
          : sticker // ignore: cast_nullable_to_non_nullable
              as Sticker,
      starCount: null == starCount
          ? _value.starCount
          : starCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      remainingCount: freezed == remainingCount
          ? _value.remainingCount
          : remainingCount // ignore: cast_nullable_to_non_nullable
              as int?,
      upgradeStarCount: freezed == upgradeStarCount
          ? _value.upgradeStarCount
          : upgradeStarCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GiftImpl implements _Gift {
  const _$GiftImpl(
      {required this.id,
      required this.sticker,
      @JsonKey(name: 'star_count') required this.starCount,
      @JsonKey(name: 'total_count') this.totalCount,
      @JsonKey(name: 'remaining_count') this.remainingCount,
      @JsonKey(name: 'upgrade_star_count') this.upgradeStarCount});

  factory _$GiftImpl.fromJson(Map<String, dynamic> json) =>
      _$$GiftImplFromJson(json);

  /// Unique identifier of the gift.
  @override
  final String id;

  /// The sticker that represents the gift.
  @override
  final Sticker sticker;

  /// The number of Telegram Stars that must be paid to send the sticker.
  @override
  @JsonKey(name: 'star_count')
  final int starCount;

  /// Optional. The total number of gifts of this type that can be sent; for
  /// limited gifts only.
  @override
  @JsonKey(name: 'total_count')
  final int? totalCount;

  /// Optional. The number of remaining gifts of this type that can be sent;
  /// for limited gifts only.
  @override
  @JsonKey(name: 'remaining_count')
  final int? remainingCount;

  /// Optional. The number of Telegram Stars that must be paid to upgrade the
  /// gift to a unique one.
  @override
  @JsonKey(name: 'upgrade_star_count')
  final int? upgradeStarCount;

  @override
  String toString() {
    return 'Gift(id: $id, sticker: $sticker, starCount: $starCount, totalCount: $totalCount, remainingCount: $remainingCount, upgradeStarCount: $upgradeStarCount)';
  }

  /// Create a copy of Gift
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GiftImplCopyWith<_$GiftImpl> get copyWith =>
      __$$GiftImplCopyWithImpl<_$GiftImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GiftImplToJson(
      this,
    );
  }
}

abstract class _Gift implements Gift {
  const factory _Gift(
          {required final String id,
          required final Sticker sticker,
          @JsonKey(name: 'star_count') required final int starCount,
          @JsonKey(name: 'total_count') final int? totalCount,
          @JsonKey(name: 'remaining_count') final int? remainingCount,
          @JsonKey(name: 'upgrade_star_count') final int? upgradeStarCount}) =
      _$GiftImpl;

  factory _Gift.fromJson(Map<String, dynamic> json) = _$GiftImpl.fromJson;

  /// Unique identifier of the gift.
  @override
  String get id;

  /// The sticker that represents the gift.
  @override
  Sticker get sticker;

  /// The number of Telegram Stars that must be paid to send the sticker.
  @override
  @JsonKey(name: 'star_count')
  int get starCount;

  /// Optional. The total number of gifts of this type that can be sent; for
  /// limited gifts only.
  @override
  @JsonKey(name: 'total_count')
  int? get totalCount;

  /// Optional. The number of remaining gifts of this type that can be sent;
  /// for limited gifts only.
  @override
  @JsonKey(name: 'remaining_count')
  int? get remainingCount;

  /// Optional. The number of Telegram Stars that must be paid to upgrade the
  /// gift to a unique one.
  @override
  @JsonKey(name: 'upgrade_star_count')
  int? get upgradeStarCount;

  /// Create a copy of Gift
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GiftImplCopyWith<_$GiftImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
