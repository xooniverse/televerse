// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'giveaway_completed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GiveawayCompleted {
  /// Number of winners in the giveaway
  @JsonKey(name: 'winner_count')
  int get winnerCount;

  /// Number of undistributed prizes
  @JsonKey(name: 'unclaimed_prize_count')
  int? get unclaimedPrizeCount;

  /// Message with the giveaway that was completed, if it wasn't deleted
  @JsonKey(name: 'giveaway_message')
  Message? get giveawayMessage;

  /// Optional. True, if the giveaway is a Telegram Star giveaway. Otherwise,
  /// currently, the giveaway is a Telegram Premium giveaway.
  @JsonKey(name: 'is_star_giveaway')
  bool? get isStarGiveaway;

  /// Create a copy of GiveawayCompleted
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GiveawayCompletedCopyWith<GiveawayCompleted> get copyWith =>
      _$GiveawayCompletedCopyWithImpl<GiveawayCompleted>(
        this as GiveawayCompleted,
        _$identity,
      );

  /// Serializes this GiveawayCompleted to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'GiveawayCompleted(winnerCount: $winnerCount, unclaimedPrizeCount: $unclaimedPrizeCount, giveawayMessage: $giveawayMessage, isStarGiveaway: $isStarGiveaway)';
  }
}

/// @nodoc
abstract mixin class $GiveawayCompletedCopyWith<$Res> {
  factory $GiveawayCompletedCopyWith(
    GiveawayCompleted value,
    $Res Function(GiveawayCompleted) _then,
  ) = _$GiveawayCompletedCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'winner_count') int winnerCount,
    @JsonKey(name: 'unclaimed_prize_count') int? unclaimedPrizeCount,
    @JsonKey(name: 'giveaway_message') Message? giveawayMessage,
    @JsonKey(name: 'is_star_giveaway') bool? isStarGiveaway,
  });
}

/// @nodoc
class _$GiveawayCompletedCopyWithImpl<$Res>
    implements $GiveawayCompletedCopyWith<$Res> {
  _$GiveawayCompletedCopyWithImpl(this._self, this._then);

  final GiveawayCompleted _self;
  final $Res Function(GiveawayCompleted) _then;

  /// Create a copy of GiveawayCompleted
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? winnerCount = null,
    Object? unclaimedPrizeCount = freezed,
    Object? giveawayMessage = freezed,
    Object? isStarGiveaway = freezed,
  }) {
    return _then(
      _self.copyWith(
        winnerCount: null == winnerCount
            ? _self.winnerCount
            : winnerCount // ignore: cast_nullable_to_non_nullable
                  as int,
        unclaimedPrizeCount: freezed == unclaimedPrizeCount
            ? _self.unclaimedPrizeCount
            : unclaimedPrizeCount // ignore: cast_nullable_to_non_nullable
                  as int?,
        giveawayMessage: freezed == giveawayMessage
            ? _self.giveawayMessage
            : giveawayMessage // ignore: cast_nullable_to_non_nullable
                  as Message?,
        isStarGiveaway: freezed == isStarGiveaway
            ? _self.isStarGiveaway
            : isStarGiveaway // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [GiveawayCompleted].
extension GiveawayCompletedPatterns on GiveawayCompleted {
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
    TResult Function(_GiveawayCompleted value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GiveawayCompleted() when $default != null:
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
    TResult Function(_GiveawayCompleted value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GiveawayCompleted():
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
    TResult? Function(_GiveawayCompleted value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GiveawayCompleted() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _GiveawayCompleted implements GiveawayCompleted {
  const _GiveawayCompleted({
    @JsonKey(name: 'winner_count') required this.winnerCount,
    @JsonKey(name: 'unclaimed_prize_count') this.unclaimedPrizeCount,
    @JsonKey(name: 'giveaway_message') this.giveawayMessage,
    @JsonKey(name: 'is_star_giveaway') this.isStarGiveaway,
  });
  factory _GiveawayCompleted.fromJson(Map<String, dynamic> json) =>
      _$GiveawayCompletedFromJson(json);

  /// Number of winners in the giveaway
  @override
  @JsonKey(name: 'winner_count')
  final int winnerCount;

  /// Number of undistributed prizes
  @override
  @JsonKey(name: 'unclaimed_prize_count')
  final int? unclaimedPrizeCount;

  /// Message with the giveaway that was completed, if it wasn't deleted
  @override
  @JsonKey(name: 'giveaway_message')
  final Message? giveawayMessage;

  /// Optional. True, if the giveaway is a Telegram Star giveaway. Otherwise,
  /// currently, the giveaway is a Telegram Premium giveaway.
  @override
  @JsonKey(name: 'is_star_giveaway')
  final bool? isStarGiveaway;

  /// Create a copy of GiveawayCompleted
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GiveawayCompletedCopyWith<_GiveawayCompleted> get copyWith =>
      __$GiveawayCompletedCopyWithImpl<_GiveawayCompleted>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GiveawayCompletedToJson(this);
  }

  @override
  String toString() {
    return 'GiveawayCompleted(winnerCount: $winnerCount, unclaimedPrizeCount: $unclaimedPrizeCount, giveawayMessage: $giveawayMessage, isStarGiveaway: $isStarGiveaway)';
  }
}

/// @nodoc
abstract mixin class _$GiveawayCompletedCopyWith<$Res>
    implements $GiveawayCompletedCopyWith<$Res> {
  factory _$GiveawayCompletedCopyWith(
    _GiveawayCompleted value,
    $Res Function(_GiveawayCompleted) _then,
  ) = __$GiveawayCompletedCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'winner_count') int winnerCount,
    @JsonKey(name: 'unclaimed_prize_count') int? unclaimedPrizeCount,
    @JsonKey(name: 'giveaway_message') Message? giveawayMessage,
    @JsonKey(name: 'is_star_giveaway') bool? isStarGiveaway,
  });
}

/// @nodoc
class __$GiveawayCompletedCopyWithImpl<$Res>
    implements _$GiveawayCompletedCopyWith<$Res> {
  __$GiveawayCompletedCopyWithImpl(this._self, this._then);

  final _GiveawayCompleted _self;
  final $Res Function(_GiveawayCompleted) _then;

  /// Create a copy of GiveawayCompleted
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? winnerCount = null,
    Object? unclaimedPrizeCount = freezed,
    Object? giveawayMessage = freezed,
    Object? isStarGiveaway = freezed,
  }) {
    return _then(
      _GiveawayCompleted(
        winnerCount: null == winnerCount
            ? _self.winnerCount
            : winnerCount // ignore: cast_nullable_to_non_nullable
                  as int,
        unclaimedPrizeCount: freezed == unclaimedPrizeCount
            ? _self.unclaimedPrizeCount
            : unclaimedPrizeCount // ignore: cast_nullable_to_non_nullable
                  as int?,
        giveawayMessage: freezed == giveawayMessage
            ? _self.giveawayMessage
            : giveawayMessage // ignore: cast_nullable_to_non_nullable
                  as Message?,
        isStarGiveaway: freezed == isStarGiveaway
            ? _self.isStarGiveaway
            : isStarGiveaway // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}
