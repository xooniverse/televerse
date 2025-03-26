// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'giveaway.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Giveaway {
  /// The list of chats which the user must join to participate in the
  /// giveaway
  @JsonKey(name: 'chats')
  List<Chat> get chats;

  /// Point in time (Unix timestamp) when winners of the giveaway will be
  /// selected
  @JsonKey(name: 'winners_selection_date')
  int get winnersSelectionDate;

  /// The number of users which are supposed to be selected as winners of the
  /// giveaway
  @JsonKey(name: 'winner_count')
  int get winnerCount;

  /// True, if only users who join the chats after the giveaway started should
  /// be eligible to win
  @JsonKey(name: 'only_new_members')
  bool? get onlyNewMembers;

  /// True, if the list of giveaway winners will be visible to everyone
  @JsonKey(name: 'has_public_winners')
  bool? get hasPublicWinners;

  /// Description of additional giveaway prize
  @JsonKey(name: 'prize_description')
  String? get prizeDescription;

  /// A list of two-letter ISO 3166-1 alpha-2 country codes indicating the
  /// countries from which eligible users for the giveaway must come
  @JsonKey(name: 'country_codes')
  List<String>? get countryCodes;

  /// The number of months the Telegram Premium subscription won from the
  /// giveaway will be active for
  @JsonKey(name: 'premium_subscription_month_count')
  int? get premiumSubscriptionMonthCount;

  /// Optional. The number of Telegram Stars to be split between giveaway
  /// winners; for Telegram Star giveaways only
  @JsonKey(name: 'prize_star_count')
  int? get prizeStarCount;

  /// Create a copy of Giveaway
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GiveawayCopyWith<Giveaway> get copyWith =>
      _$GiveawayCopyWithImpl<Giveaway>(this as Giveaway, _$identity);

  /// Serializes this Giveaway to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'Giveaway(chats: $chats, winnersSelectionDate: $winnersSelectionDate, winnerCount: $winnerCount, onlyNewMembers: $onlyNewMembers, hasPublicWinners: $hasPublicWinners, prizeDescription: $prizeDescription, countryCodes: $countryCodes, premiumSubscriptionMonthCount: $premiumSubscriptionMonthCount, prizeStarCount: $prizeStarCount)';
  }
}

/// @nodoc
abstract mixin class $GiveawayCopyWith<$Res> {
  factory $GiveawayCopyWith(Giveaway value, $Res Function(Giveaway) _then) =
      _$GiveawayCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'chats') List<Chat> chats,
      @JsonKey(name: 'winners_selection_date') int winnersSelectionDate,
      @JsonKey(name: 'winner_count') int winnerCount,
      @JsonKey(name: 'only_new_members') bool? onlyNewMembers,
      @JsonKey(name: 'has_public_winners') bool? hasPublicWinners,
      @JsonKey(name: 'prize_description') String? prizeDescription,
      @JsonKey(name: 'country_codes') List<String>? countryCodes,
      @JsonKey(name: 'premium_subscription_month_count')
      int? premiumSubscriptionMonthCount,
      @JsonKey(name: 'prize_star_count') int? prizeStarCount});
}

/// @nodoc
class _$GiveawayCopyWithImpl<$Res> implements $GiveawayCopyWith<$Res> {
  _$GiveawayCopyWithImpl(this._self, this._then);

  final Giveaway _self;
  final $Res Function(Giveaway) _then;

  /// Create a copy of Giveaway
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chats = null,
    Object? winnersSelectionDate = null,
    Object? winnerCount = null,
    Object? onlyNewMembers = freezed,
    Object? hasPublicWinners = freezed,
    Object? prizeDescription = freezed,
    Object? countryCodes = freezed,
    Object? premiumSubscriptionMonthCount = freezed,
    Object? prizeStarCount = freezed,
  }) {
    return _then(_self.copyWith(
      chats: null == chats
          ? _self.chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<Chat>,
      winnersSelectionDate: null == winnersSelectionDate
          ? _self.winnersSelectionDate
          : winnersSelectionDate // ignore: cast_nullable_to_non_nullable
              as int,
      winnerCount: null == winnerCount
          ? _self.winnerCount
          : winnerCount // ignore: cast_nullable_to_non_nullable
              as int,
      onlyNewMembers: freezed == onlyNewMembers
          ? _self.onlyNewMembers
          : onlyNewMembers // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasPublicWinners: freezed == hasPublicWinners
          ? _self.hasPublicWinners
          : hasPublicWinners // ignore: cast_nullable_to_non_nullable
              as bool?,
      prizeDescription: freezed == prizeDescription
          ? _self.prizeDescription
          : prizeDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCodes: freezed == countryCodes
          ? _self.countryCodes
          : countryCodes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      premiumSubscriptionMonthCount: freezed == premiumSubscriptionMonthCount
          ? _self.premiumSubscriptionMonthCount
          : premiumSubscriptionMonthCount // ignore: cast_nullable_to_non_nullable
              as int?,
      prizeStarCount: freezed == prizeStarCount
          ? _self.prizeStarCount
          : prizeStarCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Giveaway implements Giveaway {
  const _Giveaway(
      {@JsonKey(name: 'chats') required final List<Chat> chats,
      @JsonKey(name: 'winners_selection_date')
      required this.winnersSelectionDate,
      @JsonKey(name: 'winner_count') required this.winnerCount,
      @JsonKey(name: 'only_new_members') this.onlyNewMembers,
      @JsonKey(name: 'has_public_winners') this.hasPublicWinners,
      @JsonKey(name: 'prize_description') this.prizeDescription,
      @JsonKey(name: 'country_codes') final List<String>? countryCodes,
      @JsonKey(name: 'premium_subscription_month_count')
      this.premiumSubscriptionMonthCount,
      @JsonKey(name: 'prize_star_count') this.prizeStarCount})
      : _chats = chats,
        _countryCodes = countryCodes;
  factory _Giveaway.fromJson(Map<String, dynamic> json) =>
      _$GiveawayFromJson(json);

  /// The list of chats which the user must join to participate in the
  /// giveaway
  final List<Chat> _chats;

  /// The list of chats which the user must join to participate in the
  /// giveaway
  @override
  @JsonKey(name: 'chats')
  List<Chat> get chats {
    if (_chats is EqualUnmodifiableListView) return _chats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chats);
  }

  /// Point in time (Unix timestamp) when winners of the giveaway will be
  /// selected
  @override
  @JsonKey(name: 'winners_selection_date')
  final int winnersSelectionDate;

  /// The number of users which are supposed to be selected as winners of the
  /// giveaway
  @override
  @JsonKey(name: 'winner_count')
  final int winnerCount;

  /// True, if only users who join the chats after the giveaway started should
  /// be eligible to win
  @override
  @JsonKey(name: 'only_new_members')
  final bool? onlyNewMembers;

  /// True, if the list of giveaway winners will be visible to everyone
  @override
  @JsonKey(name: 'has_public_winners')
  final bool? hasPublicWinners;

  /// Description of additional giveaway prize
  @override
  @JsonKey(name: 'prize_description')
  final String? prizeDescription;

  /// A list of two-letter ISO 3166-1 alpha-2 country codes indicating the
  /// countries from which eligible users for the giveaway must come
  final List<String>? _countryCodes;

  /// A list of two-letter ISO 3166-1 alpha-2 country codes indicating the
  /// countries from which eligible users for the giveaway must come
  @override
  @JsonKey(name: 'country_codes')
  List<String>? get countryCodes {
    final value = _countryCodes;
    if (value == null) return null;
    if (_countryCodes is EqualUnmodifiableListView) return _countryCodes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// The number of months the Telegram Premium subscription won from the
  /// giveaway will be active for
  @override
  @JsonKey(name: 'premium_subscription_month_count')
  final int? premiumSubscriptionMonthCount;

  /// Optional. The number of Telegram Stars to be split between giveaway
  /// winners; for Telegram Star giveaways only
  @override
  @JsonKey(name: 'prize_star_count')
  final int? prizeStarCount;

  /// Create a copy of Giveaway
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GiveawayCopyWith<_Giveaway> get copyWith =>
      __$GiveawayCopyWithImpl<_Giveaway>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GiveawayToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'Giveaway(chats: $chats, winnersSelectionDate: $winnersSelectionDate, winnerCount: $winnerCount, onlyNewMembers: $onlyNewMembers, hasPublicWinners: $hasPublicWinners, prizeDescription: $prizeDescription, countryCodes: $countryCodes, premiumSubscriptionMonthCount: $premiumSubscriptionMonthCount, prizeStarCount: $prizeStarCount)';
  }
}

/// @nodoc
abstract mixin class _$GiveawayCopyWith<$Res>
    implements $GiveawayCopyWith<$Res> {
  factory _$GiveawayCopyWith(_Giveaway value, $Res Function(_Giveaway) _then) =
      __$GiveawayCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'chats') List<Chat> chats,
      @JsonKey(name: 'winners_selection_date') int winnersSelectionDate,
      @JsonKey(name: 'winner_count') int winnerCount,
      @JsonKey(name: 'only_new_members') bool? onlyNewMembers,
      @JsonKey(name: 'has_public_winners') bool? hasPublicWinners,
      @JsonKey(name: 'prize_description') String? prizeDescription,
      @JsonKey(name: 'country_codes') List<String>? countryCodes,
      @JsonKey(name: 'premium_subscription_month_count')
      int? premiumSubscriptionMonthCount,
      @JsonKey(name: 'prize_star_count') int? prizeStarCount});
}

/// @nodoc
class __$GiveawayCopyWithImpl<$Res> implements _$GiveawayCopyWith<$Res> {
  __$GiveawayCopyWithImpl(this._self, this._then);

  final _Giveaway _self;
  final $Res Function(_Giveaway) _then;

  /// Create a copy of Giveaway
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? chats = null,
    Object? winnersSelectionDate = null,
    Object? winnerCount = null,
    Object? onlyNewMembers = freezed,
    Object? hasPublicWinners = freezed,
    Object? prizeDescription = freezed,
    Object? countryCodes = freezed,
    Object? premiumSubscriptionMonthCount = freezed,
    Object? prizeStarCount = freezed,
  }) {
    return _then(_Giveaway(
      chats: null == chats
          ? _self._chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<Chat>,
      winnersSelectionDate: null == winnersSelectionDate
          ? _self.winnersSelectionDate
          : winnersSelectionDate // ignore: cast_nullable_to_non_nullable
              as int,
      winnerCount: null == winnerCount
          ? _self.winnerCount
          : winnerCount // ignore: cast_nullable_to_non_nullable
              as int,
      onlyNewMembers: freezed == onlyNewMembers
          ? _self.onlyNewMembers
          : onlyNewMembers // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasPublicWinners: freezed == hasPublicWinners
          ? _self.hasPublicWinners
          : hasPublicWinners // ignore: cast_nullable_to_non_nullable
              as bool?,
      prizeDescription: freezed == prizeDescription
          ? _self.prizeDescription
          : prizeDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCodes: freezed == countryCodes
          ? _self._countryCodes
          : countryCodes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      premiumSubscriptionMonthCount: freezed == premiumSubscriptionMonthCount
          ? _self.premiumSubscriptionMonthCount
          : premiumSubscriptionMonthCount // ignore: cast_nullable_to_non_nullable
              as int?,
      prizeStarCount: freezed == prizeStarCount
          ? _self.prizeStarCount
          : prizeStarCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}
