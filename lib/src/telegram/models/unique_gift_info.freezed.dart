// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
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

  /// Origin of the gift. Currently, either "upgrade" for gifts upgraded
  /// from regular gifts, "transfer" for gifts transferred from other users
  /// or channels, or "resale" for gifts bought from other users
  @JsonKey(name: 'origin')
  UniqueGiftOriginType get origin;

  /// Optional. For gifts bought from other users, the currency in which the payment for the gift was done.
  /// Currently, one of “XTR” for Telegram Stars or “TON” for toncoins.
  @JsonKey(name: 'last_resale_currency')
  String? get lastResaleCurrency;

  /// Optional. For gifts bought from other users, the price paid for the gift in either Telegram Stars or nanotoncoins
  @JsonKey(name: 'last_resale_amount')
  int? get lastResaleAmount;

  /// Optional. Unique identifier of the received gift for the bot;
  /// only present for gifts received on behalf of business accounts
  @JsonKey(name: 'owned_gift_id')
  String? get ownedGiftId;

  /// Optional. Number of Telegram Stars that must be paid to transfer the gift;
  /// omitted if the bot cannot transfer the gift
  @JsonKey(name: 'transfer_star_count')
  int? get transferStarCount;

  /// Optional. Point in time (Unix timestamp) when the gift can be transferred.
  /// If it is in the past, then the gift can be transferred now
  @JsonKey(name: 'next_transfer_date')
  int? get nextTransferDate;

  /// Create a copy of UniqueGiftInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UniqueGiftInfoCopyWith<UniqueGiftInfo> get copyWith =>
      _$UniqueGiftInfoCopyWithImpl<UniqueGiftInfo>(
        this as UniqueGiftInfo,
        _$identity,
      );

  /// Serializes this UniqueGiftInfo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'UniqueGiftInfo(gift: $gift, origin: $origin, lastResaleCurrency: $lastResaleCurrency, lastResaleAmount: $lastResaleAmount, ownedGiftId: $ownedGiftId, transferStarCount: $transferStarCount, nextTransferDate: $nextTransferDate)';
  }
}

/// @nodoc
abstract mixin class $UniqueGiftInfoCopyWith<$Res> {
  factory $UniqueGiftInfoCopyWith(
    UniqueGiftInfo value,
    $Res Function(UniqueGiftInfo) _then,
  ) = _$UniqueGiftInfoCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'gift') UniqueGift gift,
    @JsonKey(name: 'origin') UniqueGiftOriginType origin,
    @JsonKey(name: 'last_resale_currency') String? lastResaleCurrency,
    @JsonKey(name: 'last_resale_amount') int? lastResaleAmount,
    @JsonKey(name: 'owned_gift_id') String? ownedGiftId,
    @JsonKey(name: 'transfer_star_count') int? transferStarCount,
    @JsonKey(name: 'next_transfer_date') int? nextTransferDate,
  });

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
    Object? lastResaleCurrency = freezed,
    Object? lastResaleAmount = freezed,
    Object? ownedGiftId = freezed,
    Object? transferStarCount = freezed,
    Object? nextTransferDate = freezed,
  }) {
    return _then(
      _self.copyWith(
        gift: null == gift
            ? _self.gift
            : gift // ignore: cast_nullable_to_non_nullable
                  as UniqueGift,
        origin: null == origin
            ? _self.origin
            : origin // ignore: cast_nullable_to_non_nullable
                  as UniqueGiftOriginType,
        lastResaleCurrency: freezed == lastResaleCurrency
            ? _self.lastResaleCurrency
            : lastResaleCurrency // ignore: cast_nullable_to_non_nullable
                  as String?,
        lastResaleAmount: freezed == lastResaleAmount
            ? _self.lastResaleAmount
            : lastResaleAmount // ignore: cast_nullable_to_non_nullable
                  as int?,
        ownedGiftId: freezed == ownedGiftId
            ? _self.ownedGiftId
            : ownedGiftId // ignore: cast_nullable_to_non_nullable
                  as String?,
        transferStarCount: freezed == transferStarCount
            ? _self.transferStarCount
            : transferStarCount // ignore: cast_nullable_to_non_nullable
                  as int?,
        nextTransferDate: freezed == nextTransferDate
            ? _self.nextTransferDate
            : nextTransferDate // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
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

/// Adds pattern-matching-related methods to [UniqueGiftInfo].
extension UniqueGiftInfoPatterns on UniqueGiftInfo {
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
    TResult Function(_UniqueGiftInfo value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UniqueGiftInfo() when $default != null:
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
    TResult Function(_UniqueGiftInfo value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UniqueGiftInfo():
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
    TResult? Function(_UniqueGiftInfo value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UniqueGiftInfo() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UniqueGiftInfo implements UniqueGiftInfo {
  const _UniqueGiftInfo({
    @JsonKey(name: 'gift') required this.gift,
    @JsonKey(name: 'origin') required this.origin,
    @JsonKey(name: 'last_resale_currency') this.lastResaleCurrency,
    @JsonKey(name: 'last_resale_amount') this.lastResaleAmount,
    @JsonKey(name: 'owned_gift_id') this.ownedGiftId,
    @JsonKey(name: 'transfer_star_count') this.transferStarCount,
    @JsonKey(name: 'next_transfer_date') this.nextTransferDate,
  });
  factory _UniqueGiftInfo.fromJson(Map<String, dynamic> json) =>
      _$UniqueGiftInfoFromJson(json);

  /// Information about the gift
  @override
  @JsonKey(name: 'gift')
  final UniqueGift gift;

  /// Origin of the gift. Currently, either "upgrade" for gifts upgraded
  /// from regular gifts, "transfer" for gifts transferred from other users
  /// or channels, or "resale" for gifts bought from other users
  @override
  @JsonKey(name: 'origin')
  final UniqueGiftOriginType origin;

  /// Optional. For gifts bought from other users, the currency in which the payment for the gift was done.
  /// Currently, one of “XTR” for Telegram Stars or “TON” for toncoins.
  @override
  @JsonKey(name: 'last_resale_currency')
  final String? lastResaleCurrency;

  /// Optional. For gifts bought from other users, the price paid for the gift in either Telegram Stars or nanotoncoins
  @override
  @JsonKey(name: 'last_resale_amount')
  final int? lastResaleAmount;

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

  /// Optional. Point in time (Unix timestamp) when the gift can be transferred.
  /// If it is in the past, then the gift can be transferred now
  @override
  @JsonKey(name: 'next_transfer_date')
  final int? nextTransferDate;

  /// Create a copy of UniqueGiftInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UniqueGiftInfoCopyWith<_UniqueGiftInfo> get copyWith =>
      __$UniqueGiftInfoCopyWithImpl<_UniqueGiftInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UniqueGiftInfoToJson(this);
  }

  @override
  String toString() {
    return 'UniqueGiftInfo(gift: $gift, origin: $origin, lastResaleCurrency: $lastResaleCurrency, lastResaleAmount: $lastResaleAmount, ownedGiftId: $ownedGiftId, transferStarCount: $transferStarCount, nextTransferDate: $nextTransferDate)';
  }
}

/// @nodoc
abstract mixin class _$UniqueGiftInfoCopyWith<$Res>
    implements $UniqueGiftInfoCopyWith<$Res> {
  factory _$UniqueGiftInfoCopyWith(
    _UniqueGiftInfo value,
    $Res Function(_UniqueGiftInfo) _then,
  ) = __$UniqueGiftInfoCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'gift') UniqueGift gift,
    @JsonKey(name: 'origin') UniqueGiftOriginType origin,
    @JsonKey(name: 'last_resale_currency') String? lastResaleCurrency,
    @JsonKey(name: 'last_resale_amount') int? lastResaleAmount,
    @JsonKey(name: 'owned_gift_id') String? ownedGiftId,
    @JsonKey(name: 'transfer_star_count') int? transferStarCount,
    @JsonKey(name: 'next_transfer_date') int? nextTransferDate,
  });

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
    Object? lastResaleCurrency = freezed,
    Object? lastResaleAmount = freezed,
    Object? ownedGiftId = freezed,
    Object? transferStarCount = freezed,
    Object? nextTransferDate = freezed,
  }) {
    return _then(
      _UniqueGiftInfo(
        gift: null == gift
            ? _self.gift
            : gift // ignore: cast_nullable_to_non_nullable
                  as UniqueGift,
        origin: null == origin
            ? _self.origin
            : origin // ignore: cast_nullable_to_non_nullable
                  as UniqueGiftOriginType,
        lastResaleCurrency: freezed == lastResaleCurrency
            ? _self.lastResaleCurrency
            : lastResaleCurrency // ignore: cast_nullable_to_non_nullable
                  as String?,
        lastResaleAmount: freezed == lastResaleAmount
            ? _self.lastResaleAmount
            : lastResaleAmount // ignore: cast_nullable_to_non_nullable
                  as int?,
        ownedGiftId: freezed == ownedGiftId
            ? _self.ownedGiftId
            : ownedGiftId // ignore: cast_nullable_to_non_nullable
                  as String?,
        transferStarCount: freezed == transferStarCount
            ? _self.transferStarCount
            : transferStarCount // ignore: cast_nullable_to_non_nullable
                  as int?,
        nextTransferDate: freezed == nextTransferDate
            ? _self.nextTransferDate
            : nextTransferDate // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
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
