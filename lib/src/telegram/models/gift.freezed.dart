// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gift.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Gift {
  /// Unique identifier of the gift.
  @JsonKey(name: 'id')
  String get id;

  /// The sticker that represents the gift.
  @JsonKey(name: 'sticker')
  Sticker get sticker;

  /// The number of Telegram Stars that must be paid to send the sticker.
  @JsonKey(name: 'star_count')
  int get starCount;

  /// Optional. The total number of gifts of this type that can be sent; for
  /// limited gifts only.
  @JsonKey(name: 'total_count')
  int? get totalCount;

  /// Optional. The number of remaining gifts of this type that can be sent;
  /// for limited gifts only.
  @JsonKey(name: 'remaining_count')
  int? get remainingCount;

  /// Optional. The number of Telegram Stars that must be paid to upgrade the
  /// gift to a unique one.
  @JsonKey(name: 'upgrade_star_count')
  int? get upgradeStarCount;

  /// Optional. Information about the chat that published the gift
  @JsonKey(name: 'publisher_chat')
  Chat? get publisherChat;

  /// Create a copy of Gift
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GiftCopyWith<Gift> get copyWith =>
      _$GiftCopyWithImpl<Gift>(this as Gift, _$identity);

  /// Serializes this Gift to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'Gift(id: $id, sticker: $sticker, starCount: $starCount, totalCount: $totalCount, remainingCount: $remainingCount, upgradeStarCount: $upgradeStarCount, publisherChat: $publisherChat)';
  }
}

/// @nodoc
abstract mixin class $GiftCopyWith<$Res> {
  factory $GiftCopyWith(Gift value, $Res Function(Gift) _then) =
      _$GiftCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'sticker') Sticker sticker,
      @JsonKey(name: 'star_count') int starCount,
      @JsonKey(name: 'total_count') int? totalCount,
      @JsonKey(name: 'remaining_count') int? remainingCount,
      @JsonKey(name: 'upgrade_star_count') int? upgradeStarCount,
      @JsonKey(name: 'publisher_chat') Chat? publisherChat});

  $StickerCopyWith<$Res> get sticker;
  $ChatCopyWith<$Res>? get publisherChat;
}

/// @nodoc
class _$GiftCopyWithImpl<$Res> implements $GiftCopyWith<$Res> {
  _$GiftCopyWithImpl(this._self, this._then);

  final Gift _self;
  final $Res Function(Gift) _then;

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
    Object? publisherChat = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sticker: null == sticker
          ? _self.sticker
          : sticker // ignore: cast_nullable_to_non_nullable
              as Sticker,
      starCount: null == starCount
          ? _self.starCount
          : starCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalCount: freezed == totalCount
          ? _self.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      remainingCount: freezed == remainingCount
          ? _self.remainingCount
          : remainingCount // ignore: cast_nullable_to_non_nullable
              as int?,
      upgradeStarCount: freezed == upgradeStarCount
          ? _self.upgradeStarCount
          : upgradeStarCount // ignore: cast_nullable_to_non_nullable
              as int?,
      publisherChat: freezed == publisherChat
          ? _self.publisherChat
          : publisherChat // ignore: cast_nullable_to_non_nullable
              as Chat?,
    ));
  }

  /// Create a copy of Gift
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StickerCopyWith<$Res> get sticker {
    return $StickerCopyWith<$Res>(_self.sticker, (value) {
      return _then(_self.copyWith(sticker: value));
    });
  }

  /// Create a copy of Gift
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatCopyWith<$Res>? get publisherChat {
    if (_self.publisherChat == null) {
      return null;
    }

    return $ChatCopyWith<$Res>(_self.publisherChat!, (value) {
      return _then(_self.copyWith(publisherChat: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _Gift implements Gift {
  const _Gift(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'sticker') required this.sticker,
      @JsonKey(name: 'star_count') required this.starCount,
      @JsonKey(name: 'total_count') this.totalCount,
      @JsonKey(name: 'remaining_count') this.remainingCount,
      @JsonKey(name: 'upgrade_star_count') this.upgradeStarCount,
      @JsonKey(name: 'publisher_chat') this.publisherChat});
  factory _Gift.fromJson(Map<String, dynamic> json) => _$GiftFromJson(json);

  /// Unique identifier of the gift.
  @override
  @JsonKey(name: 'id')
  final String id;

  /// The sticker that represents the gift.
  @override
  @JsonKey(name: 'sticker')
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

  /// Optional. Information about the chat that published the gift
  @override
  @JsonKey(name: 'publisher_chat')
  final Chat? publisherChat;

  /// Create a copy of Gift
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GiftCopyWith<_Gift> get copyWith =>
      __$GiftCopyWithImpl<_Gift>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GiftToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'Gift(id: $id, sticker: $sticker, starCount: $starCount, totalCount: $totalCount, remainingCount: $remainingCount, upgradeStarCount: $upgradeStarCount, publisherChat: $publisherChat)';
  }
}

/// @nodoc
abstract mixin class _$GiftCopyWith<$Res> implements $GiftCopyWith<$Res> {
  factory _$GiftCopyWith(_Gift value, $Res Function(_Gift) _then) =
      __$GiftCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'sticker') Sticker sticker,
      @JsonKey(name: 'star_count') int starCount,
      @JsonKey(name: 'total_count') int? totalCount,
      @JsonKey(name: 'remaining_count') int? remainingCount,
      @JsonKey(name: 'upgrade_star_count') int? upgradeStarCount,
      @JsonKey(name: 'publisher_chat') Chat? publisherChat});

  @override
  $StickerCopyWith<$Res> get sticker;
  @override
  $ChatCopyWith<$Res>? get publisherChat;
}

/// @nodoc
class __$GiftCopyWithImpl<$Res> implements _$GiftCopyWith<$Res> {
  __$GiftCopyWithImpl(this._self, this._then);

  final _Gift _self;
  final $Res Function(_Gift) _then;

  /// Create a copy of Gift
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? sticker = null,
    Object? starCount = null,
    Object? totalCount = freezed,
    Object? remainingCount = freezed,
    Object? upgradeStarCount = freezed,
    Object? publisherChat = freezed,
  }) {
    return _then(_Gift(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sticker: null == sticker
          ? _self.sticker
          : sticker // ignore: cast_nullable_to_non_nullable
              as Sticker,
      starCount: null == starCount
          ? _self.starCount
          : starCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalCount: freezed == totalCount
          ? _self.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      remainingCount: freezed == remainingCount
          ? _self.remainingCount
          : remainingCount // ignore: cast_nullable_to_non_nullable
              as int?,
      upgradeStarCount: freezed == upgradeStarCount
          ? _self.upgradeStarCount
          : upgradeStarCount // ignore: cast_nullable_to_non_nullable
              as int?,
      publisherChat: freezed == publisherChat
          ? _self.publisherChat
          : publisherChat // ignore: cast_nullable_to_non_nullable
              as Chat?,
    ));
  }

  /// Create a copy of Gift
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StickerCopyWith<$Res> get sticker {
    return $StickerCopyWith<$Res>(_self.sticker, (value) {
      return _then(_self.copyWith(sticker: value));
    });
  }

  /// Create a copy of Gift
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatCopyWith<$Res>? get publisherChat {
    if (_self.publisherChat == null) {
      return null;
    }

    return $ChatCopyWith<$Res>(_self.publisherChat!, (value) {
      return _then(_self.copyWith(publisherChat: value));
    });
  }
}
