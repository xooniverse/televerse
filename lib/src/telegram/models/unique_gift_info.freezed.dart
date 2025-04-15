// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unique_gift_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UniqueGiftInfo {
  /// Information about the gift
  @JsonKey(name: 'gift')
  UniqueGift get gift;

  /// Origin of the gift. Currently, either "upgrade" or "transfer"
  @JsonKey(name: 'origin')
  String get origin;

  /// Optional. Unique identifier of the received gift for the bot;
  /// only present for gifts received on behalf of business accounts
  @JsonKey(name: 'owned_gift_id')
  String? get ownedGiftId;

  /// Optional. Number of Telegram Stars that must be paid to transfer the gift;
  /// omitted if the bot cannot transfer the gift
  @JsonKey(name: 'transfer_star_count')
  int? get transferStarCount;

  /// Create a copy of UniqueGiftInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UniqueGiftInfoCopyWith<UniqueGiftInfo> get copyWith =>
      _$UniqueGiftInfoCopyWithImpl<UniqueGiftInfo>(
          this as UniqueGiftInfo, _$identity);

  /// Serializes this UniqueGiftInfo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'UniqueGiftInfo(gift: $gift, origin: $origin, ownedGiftId: $ownedGiftId, transferStarCount: $transferStarCount)';
  }
}

/// @nodoc
abstract mixin class $UniqueGiftInfoCopyWith<$Res> {
  factory $UniqueGiftInfoCopyWith(
          UniqueGiftInfo value, $Res Function(UniqueGiftInfo) _then) =
      _$UniqueGiftInfoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'gift') UniqueGift gift,
      @JsonKey(name: 'origin') String origin,
      @JsonKey(name: 'owned_gift_id') String? ownedGiftId,
      @JsonKey(name: 'transfer_star_count') int? transferStarCount});

  $UniqueGiftCopyWith<$Res> get gift;
}

/// @nodoc
class _$UniqueGiftInfoCopyWithImpl<$Res>
    implements $UniqueGiftInfoCopyWith<$Res> {
  _$UniqueGiftInfoCopyWithImpl(this._self, this._then);

  final UniqueGiftInfo _self;
  final $Res Function(UniqueGiftInfo) _then;

  /// Create a copy of UniqueGiftInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gift = null,
    Object? origin = null,
    Object? ownedGiftId = freezed,
    Object? transferStarCount = freezed,
  }) {
    return _then(_self.copyWith(
      gift: null == gift
          ? _self.gift
          : gift // ignore: cast_nullable_to_non_nullable
              as UniqueGift,
      origin: null == origin
          ? _self.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as String,
      ownedGiftId: freezed == ownedGiftId
          ? _self.ownedGiftId
          : ownedGiftId // ignore: cast_nullable_to_non_nullable
              as String?,
      transferStarCount: freezed == transferStarCount
          ? _self.transferStarCount
          : transferStarCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  /// Create a copy of UniqueGiftInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UniqueGiftCopyWith<$Res> get gift {
    return $UniqueGiftCopyWith<$Res>(_self.gift, (value) {
      return _then(_self.copyWith(gift: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _UniqueGiftInfo implements UniqueGiftInfo {
  const _UniqueGiftInfo(
      {@JsonKey(name: 'gift') required this.gift,
      @JsonKey(name: 'origin') required this.origin,
      @JsonKey(name: 'owned_gift_id') this.ownedGiftId,
      @JsonKey(name: 'transfer_star_count') this.transferStarCount});
  factory _UniqueGiftInfo.fromJson(Map<String, dynamic> json) =>
      _$UniqueGiftInfoFromJson(json);

  /// Information about the gift
  @override
  @JsonKey(name: 'gift')
  final UniqueGift gift;

  /// Origin of the gift. Currently, either "upgrade" or "transfer"
  @override
  @JsonKey(name: 'origin')
  final String origin;

  /// Optional. Unique identifier of the received gift for the bot;
  /// only present for gifts received on behalf of business accounts
  @override
  @JsonKey(name: 'owned_gift_id')
  final String? ownedGiftId;

  /// Optional. Number of Telegram Stars that must be paid to transfer the gift;
  /// omitted if the bot cannot transfer the gift
  @override
  @JsonKey(name: 'transfer_star_count')
  final int? transferStarCount;

  /// Create a copy of UniqueGiftInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UniqueGiftInfoCopyWith<_UniqueGiftInfo> get copyWith =>
      __$UniqueGiftInfoCopyWithImpl<_UniqueGiftInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UniqueGiftInfoToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'UniqueGiftInfo(gift: $gift, origin: $origin, ownedGiftId: $ownedGiftId, transferStarCount: $transferStarCount)';
  }
}

/// @nodoc
abstract mixin class _$UniqueGiftInfoCopyWith<$Res>
    implements $UniqueGiftInfoCopyWith<$Res> {
  factory _$UniqueGiftInfoCopyWith(
          _UniqueGiftInfo value, $Res Function(_UniqueGiftInfo) _then) =
      __$UniqueGiftInfoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'gift') UniqueGift gift,
      @JsonKey(name: 'origin') String origin,
      @JsonKey(name: 'owned_gift_id') String? ownedGiftId,
      @JsonKey(name: 'transfer_star_count') int? transferStarCount});

  @override
  $UniqueGiftCopyWith<$Res> get gift;
}

/// @nodoc
class __$UniqueGiftInfoCopyWithImpl<$Res>
    implements _$UniqueGiftInfoCopyWith<$Res> {
  __$UniqueGiftInfoCopyWithImpl(this._self, this._then);

  final _UniqueGiftInfo _self;
  final $Res Function(_UniqueGiftInfo) _then;

  /// Create a copy of UniqueGiftInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? gift = null,
    Object? origin = null,
    Object? ownedGiftId = freezed,
    Object? transferStarCount = freezed,
  }) {
    return _then(_UniqueGiftInfo(
      gift: null == gift
          ? _self.gift
          : gift // ignore: cast_nullable_to_non_nullable
              as UniqueGift,
      origin: null == origin
          ? _self.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as String,
      ownedGiftId: freezed == ownedGiftId
          ? _self.ownedGiftId
          : ownedGiftId // ignore: cast_nullable_to_non_nullable
              as String?,
      transferStarCount: freezed == transferStarCount
          ? _self.transferStarCount
          : transferStarCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  /// Create a copy of UniqueGiftInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UniqueGiftCopyWith<$Res> get gift {
    return $UniqueGiftCopyWith<$Res>(_self.gift, (value) {
      return _then(_self.copyWith(gift: value));
    });
  }
}
