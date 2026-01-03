// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
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

  /// Optional. The number of remaining gifts of this type that can be sent by the bot; for limited gifts only
  @JsonKey(name: 'personal_remaining_count')
  int? get personalRemainingCount;

  /// Optional. The total number of gifts of this type that can be sent by the bot; for limited gifts only
  @JsonKey(name: 'personal_total_count')
  int? get personalTotalCount;

  /// Optional. True, if the gift can only be purchased by Telegram Premium subscribers
  @JsonKey(name: 'is_premium')
  bool? get isPremium;

  /// Optional. True, if the gift can be used (after being upgraded) to customize a user's appearance
  @JsonKey(name: 'has_colors')
  bool? get hasColors;

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
    return 'Gift(id: $id, sticker: $sticker, starCount: $starCount, totalCount: $totalCount, remainingCount: $remainingCount, upgradeStarCount: $upgradeStarCount, publisherChat: $publisherChat, personalRemainingCount: $personalRemainingCount, personalTotalCount: $personalTotalCount, isPremium: $isPremium, hasColors: $hasColors)';
  }
}

/// @nodoc
abstract mixin class $GiftCopyWith<$Res> {
  factory $GiftCopyWith(Gift value, $Res Function(Gift) _then) =
      _$GiftCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'id') String id,
    @JsonKey(name: 'sticker') Sticker sticker,
    @JsonKey(name: 'star_count') int starCount,
    @JsonKey(name: 'total_count') int? totalCount,
    @JsonKey(name: 'remaining_count') int? remainingCount,
    @JsonKey(name: 'upgrade_star_count') int? upgradeStarCount,
    @JsonKey(name: 'publisher_chat') Chat? publisherChat,
    @JsonKey(name: 'personal_remaining_count') int? personalRemainingCount,
    @JsonKey(name: 'personal_total_count') int? personalTotalCount,
    @JsonKey(name: 'is_premium') bool? isPremium,
    @JsonKey(name: 'has_colors') bool? hasColors,
  });

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
    Object? personalRemainingCount = freezed,
    Object? personalTotalCount = freezed,
    Object? isPremium = freezed,
    Object? hasColors = freezed,
  }) {
    return _then(
      _self.copyWith(
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
        personalRemainingCount: freezed == personalRemainingCount
            ? _self.personalRemainingCount
            : personalRemainingCount // ignore: cast_nullable_to_non_nullable
                  as int?,
        personalTotalCount: freezed == personalTotalCount
            ? _self.personalTotalCount
            : personalTotalCount // ignore: cast_nullable_to_non_nullable
                  as int?,
        isPremium: freezed == isPremium
            ? _self.isPremium
            : isPremium // ignore: cast_nullable_to_non_nullable
                  as bool?,
        hasColors: freezed == hasColors
            ? _self.hasColors
            : hasColors // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
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

/// Adds pattern-matching-related methods to [Gift].
extension GiftPatterns on Gift {
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
    TResult Function(_Gift value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Gift() when $default != null:
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
  TResult map<TResult extends Object?>(TResult Function(_Gift value) $default) {
    final _that = this;
    switch (_that) {
      case _Gift():
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
    TResult? Function(_Gift value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Gift() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Gift implements Gift {
  const _Gift({
    @JsonKey(name: 'id') required this.id,
    @JsonKey(name: 'sticker') required this.sticker,
    @JsonKey(name: 'star_count') required this.starCount,
    @JsonKey(name: 'total_count') this.totalCount,
    @JsonKey(name: 'remaining_count') this.remainingCount,
    @JsonKey(name: 'upgrade_star_count') this.upgradeStarCount,
    @JsonKey(name: 'publisher_chat') this.publisherChat,
    @JsonKey(name: 'personal_remaining_count') this.personalRemainingCount,
    @JsonKey(name: 'personal_total_count') this.personalTotalCount,
    @JsonKey(name: 'is_premium') this.isPremium,
    @JsonKey(name: 'has_colors') this.hasColors,
  });
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

  /// Optional. The number of remaining gifts of this type that can be sent by the bot; for limited gifts only
  @override
  @JsonKey(name: 'personal_remaining_count')
  final int? personalRemainingCount;

  /// Optional. The total number of gifts of this type that can be sent by the bot; for limited gifts only
  @override
  @JsonKey(name: 'personal_total_count')
  final int? personalTotalCount;

  /// Optional. True, if the gift can only be purchased by Telegram Premium subscribers
  @override
  @JsonKey(name: 'is_premium')
  final bool? isPremium;

  /// Optional. True, if the gift can be used (after being upgraded) to customize a user's appearance
  @override
  @JsonKey(name: 'has_colors')
  final bool? hasColors;

  /// Create a copy of Gift
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GiftCopyWith<_Gift> get copyWith =>
      __$GiftCopyWithImpl<_Gift>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GiftToJson(this);
  }

  @override
  String toString() {
    return 'Gift(id: $id, sticker: $sticker, starCount: $starCount, totalCount: $totalCount, remainingCount: $remainingCount, upgradeStarCount: $upgradeStarCount, publisherChat: $publisherChat, personalRemainingCount: $personalRemainingCount, personalTotalCount: $personalTotalCount, isPremium: $isPremium, hasColors: $hasColors)';
  }
}

/// @nodoc
abstract mixin class _$GiftCopyWith<$Res> implements $GiftCopyWith<$Res> {
  factory _$GiftCopyWith(_Gift value, $Res Function(_Gift) _then) =
      __$GiftCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') String id,
    @JsonKey(name: 'sticker') Sticker sticker,
    @JsonKey(name: 'star_count') int starCount,
    @JsonKey(name: 'total_count') int? totalCount,
    @JsonKey(name: 'remaining_count') int? remainingCount,
    @JsonKey(name: 'upgrade_star_count') int? upgradeStarCount,
    @JsonKey(name: 'publisher_chat') Chat? publisherChat,
    @JsonKey(name: 'personal_remaining_count') int? personalRemainingCount,
    @JsonKey(name: 'personal_total_count') int? personalTotalCount,
    @JsonKey(name: 'is_premium') bool? isPremium,
    @JsonKey(name: 'has_colors') bool? hasColors,
  });

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
    Object? personalRemainingCount = freezed,
    Object? personalTotalCount = freezed,
    Object? isPremium = freezed,
    Object? hasColors = freezed,
  }) {
    return _then(
      _Gift(
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
        personalRemainingCount: freezed == personalRemainingCount
            ? _self.personalRemainingCount
            : personalRemainingCount // ignore: cast_nullable_to_non_nullable
                  as int?,
        personalTotalCount: freezed == personalTotalCount
            ? _self.personalTotalCount
            : personalTotalCount // ignore: cast_nullable_to_non_nullable
                  as int?,
        isPremium: freezed == isPremium
            ? _self.isPremium
            : isPremium // ignore: cast_nullable_to_non_nullable
                  as bool?,
        hasColors: freezed == hasColors
            ? _self.hasColors
            : hasColors // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
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
