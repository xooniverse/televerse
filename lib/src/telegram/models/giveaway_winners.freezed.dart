// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'giveaway_winners.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GiveawayWinners _$GiveawayWinnersFromJson(Map<String, dynamic> json) {
  return _GiveawayWinners.fromJson(json);
}

/// @nodoc
mixin _$GiveawayWinners {
  /// The chat that created the giveaway
  @JsonKey(name: 'chat')
  Chat get chat => throw _privateConstructorUsedError;

  /// Identifier of the messsage with the giveaway in the chat
  @JsonKey(name: 'giveaway_message_id')
  int get giveawayMessageId => throw _privateConstructorUsedError;

  /// Point in time (Unix timestamp) when winners of the giveaway were
  /// selected
  @JsonKey(name: 'winners_selection_date')
  int get winnersSelectionDate => throw _privateConstructorUsedError;

  /// Total number of winners in the giveaway
  @JsonKey(name: 'winner_count')
  int get winnerCount => throw _privateConstructorUsedError;

  /// List of up to 100 winners of the giveaway
  @JsonKey(name: 'winners')
  List<User> get winners => throw _privateConstructorUsedError;

  /// The number of other chats the user had to join in order to be eligible
  /// for the giveaway
  @JsonKey(name: 'additional_chat_count')
  int? get additionalChatCount => throw _privateConstructorUsedError;

  /// The number of months the Telegram Premium subscription won from the
  /// giveaway will be active for
  @JsonKey(name: 'premium_subscription_month_count')
  int? get premiumSubscriptionMonthCount => throw _privateConstructorUsedError;

  /// Number of undistributed prizes
  @JsonKey(name: 'unclaimed_prize_count')
  int? get unclaimedPrizeCount => throw _privateConstructorUsedError;

  /// True, if only users who had joined the chats after the giveaway started
  /// were eligible to win
  @JsonKey(name: 'only_new_members')
  bool? get onlyNewMembers => throw _privateConstructorUsedError;

  /// True, if the giveaway was canceled because the payment for it was
  /// refunded
  @JsonKey(name: 'was_refunded')
  bool? get wasRefunded => throw _privateConstructorUsedError;

  /// Description of additional giveaway prize
  @JsonKey(name: 'prize_description')
  String? get prizeDescription => throw _privateConstructorUsedError;

  /// Optional. The number of Telegram Stars to be split between giveaway
  /// winners; for Telegram Star giveaways only
  @JsonKey(name: 'prize_star_count')
  int? get prizeStarCount => throw _privateConstructorUsedError;

  /// Serializes this GiveawayWinners to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GiveawayWinners
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GiveawayWinnersCopyWith<GiveawayWinners> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GiveawayWinnersCopyWith<$Res> {
  factory $GiveawayWinnersCopyWith(
          GiveawayWinners value, $Res Function(GiveawayWinners) then) =
      _$GiveawayWinnersCopyWithImpl<$Res, GiveawayWinners>;
  @useResult
  $Res call(
      {@JsonKey(name: 'chat') Chat chat,
      @JsonKey(name: 'giveaway_message_id') int giveawayMessageId,
      @JsonKey(name: 'winners_selection_date') int winnersSelectionDate,
      @JsonKey(name: 'winner_count') int winnerCount,
      @JsonKey(name: 'winners') List<User> winners,
      @JsonKey(name: 'additional_chat_count') int? additionalChatCount,
      @JsonKey(name: 'premium_subscription_month_count')
      int? premiumSubscriptionMonthCount,
      @JsonKey(name: 'unclaimed_prize_count') int? unclaimedPrizeCount,
      @JsonKey(name: 'only_new_members') bool? onlyNewMembers,
      @JsonKey(name: 'was_refunded') bool? wasRefunded,
      @JsonKey(name: 'prize_description') String? prizeDescription,
      @JsonKey(name: 'prize_star_count') int? prizeStarCount});

  $ChatCopyWith<$Res> get chat;
}

/// @nodoc
class _$GiveawayWinnersCopyWithImpl<$Res, $Val extends GiveawayWinners>
    implements $GiveawayWinnersCopyWith<$Res> {
  _$GiveawayWinnersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GiveawayWinners
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chat = null,
    Object? giveawayMessageId = null,
    Object? winnersSelectionDate = null,
    Object? winnerCount = null,
    Object? winners = null,
    Object? additionalChatCount = freezed,
    Object? premiumSubscriptionMonthCount = freezed,
    Object? unclaimedPrizeCount = freezed,
    Object? onlyNewMembers = freezed,
    Object? wasRefunded = freezed,
    Object? prizeDescription = freezed,
    Object? prizeStarCount = freezed,
  }) {
    return _then(_value.copyWith(
      chat: null == chat
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as Chat,
      giveawayMessageId: null == giveawayMessageId
          ? _value.giveawayMessageId
          : giveawayMessageId // ignore: cast_nullable_to_non_nullable
              as int,
      winnersSelectionDate: null == winnersSelectionDate
          ? _value.winnersSelectionDate
          : winnersSelectionDate // ignore: cast_nullable_to_non_nullable
              as int,
      winnerCount: null == winnerCount
          ? _value.winnerCount
          : winnerCount // ignore: cast_nullable_to_non_nullable
              as int,
      winners: null == winners
          ? _value.winners
          : winners // ignore: cast_nullable_to_non_nullable
              as List<User>,
      additionalChatCount: freezed == additionalChatCount
          ? _value.additionalChatCount
          : additionalChatCount // ignore: cast_nullable_to_non_nullable
              as int?,
      premiumSubscriptionMonthCount: freezed == premiumSubscriptionMonthCount
          ? _value.premiumSubscriptionMonthCount
          : premiumSubscriptionMonthCount // ignore: cast_nullable_to_non_nullable
              as int?,
      unclaimedPrizeCount: freezed == unclaimedPrizeCount
          ? _value.unclaimedPrizeCount
          : unclaimedPrizeCount // ignore: cast_nullable_to_non_nullable
              as int?,
      onlyNewMembers: freezed == onlyNewMembers
          ? _value.onlyNewMembers
          : onlyNewMembers // ignore: cast_nullable_to_non_nullable
              as bool?,
      wasRefunded: freezed == wasRefunded
          ? _value.wasRefunded
          : wasRefunded // ignore: cast_nullable_to_non_nullable
              as bool?,
      prizeDescription: freezed == prizeDescription
          ? _value.prizeDescription
          : prizeDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      prizeStarCount: freezed == prizeStarCount
          ? _value.prizeStarCount
          : prizeStarCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of GiveawayWinners
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatCopyWith<$Res> get chat {
    return $ChatCopyWith<$Res>(_value.chat, (value) {
      return _then(_value.copyWith(chat: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GiveawayWinnersImplCopyWith<$Res>
    implements $GiveawayWinnersCopyWith<$Res> {
  factory _$$GiveawayWinnersImplCopyWith(_$GiveawayWinnersImpl value,
          $Res Function(_$GiveawayWinnersImpl) then) =
      __$$GiveawayWinnersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'chat') Chat chat,
      @JsonKey(name: 'giveaway_message_id') int giveawayMessageId,
      @JsonKey(name: 'winners_selection_date') int winnersSelectionDate,
      @JsonKey(name: 'winner_count') int winnerCount,
      @JsonKey(name: 'winners') List<User> winners,
      @JsonKey(name: 'additional_chat_count') int? additionalChatCount,
      @JsonKey(name: 'premium_subscription_month_count')
      int? premiumSubscriptionMonthCount,
      @JsonKey(name: 'unclaimed_prize_count') int? unclaimedPrizeCount,
      @JsonKey(name: 'only_new_members') bool? onlyNewMembers,
      @JsonKey(name: 'was_refunded') bool? wasRefunded,
      @JsonKey(name: 'prize_description') String? prizeDescription,
      @JsonKey(name: 'prize_star_count') int? prizeStarCount});

  @override
  $ChatCopyWith<$Res> get chat;
}

/// @nodoc
class __$$GiveawayWinnersImplCopyWithImpl<$Res>
    extends _$GiveawayWinnersCopyWithImpl<$Res, _$GiveawayWinnersImpl>
    implements _$$GiveawayWinnersImplCopyWith<$Res> {
  __$$GiveawayWinnersImplCopyWithImpl(
      _$GiveawayWinnersImpl _value, $Res Function(_$GiveawayWinnersImpl) _then)
      : super(_value, _then);

  /// Create a copy of GiveawayWinners
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chat = null,
    Object? giveawayMessageId = null,
    Object? winnersSelectionDate = null,
    Object? winnerCount = null,
    Object? winners = null,
    Object? additionalChatCount = freezed,
    Object? premiumSubscriptionMonthCount = freezed,
    Object? unclaimedPrizeCount = freezed,
    Object? onlyNewMembers = freezed,
    Object? wasRefunded = freezed,
    Object? prizeDescription = freezed,
    Object? prizeStarCount = freezed,
  }) {
    return _then(_$GiveawayWinnersImpl(
      chat: null == chat
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as Chat,
      giveawayMessageId: null == giveawayMessageId
          ? _value.giveawayMessageId
          : giveawayMessageId // ignore: cast_nullable_to_non_nullable
              as int,
      winnersSelectionDate: null == winnersSelectionDate
          ? _value.winnersSelectionDate
          : winnersSelectionDate // ignore: cast_nullable_to_non_nullable
              as int,
      winnerCount: null == winnerCount
          ? _value.winnerCount
          : winnerCount // ignore: cast_nullable_to_non_nullable
              as int,
      winners: null == winners
          ? _value._winners
          : winners // ignore: cast_nullable_to_non_nullable
              as List<User>,
      additionalChatCount: freezed == additionalChatCount
          ? _value.additionalChatCount
          : additionalChatCount // ignore: cast_nullable_to_non_nullable
              as int?,
      premiumSubscriptionMonthCount: freezed == premiumSubscriptionMonthCount
          ? _value.premiumSubscriptionMonthCount
          : premiumSubscriptionMonthCount // ignore: cast_nullable_to_non_nullable
              as int?,
      unclaimedPrizeCount: freezed == unclaimedPrizeCount
          ? _value.unclaimedPrizeCount
          : unclaimedPrizeCount // ignore: cast_nullable_to_non_nullable
              as int?,
      onlyNewMembers: freezed == onlyNewMembers
          ? _value.onlyNewMembers
          : onlyNewMembers // ignore: cast_nullable_to_non_nullable
              as bool?,
      wasRefunded: freezed == wasRefunded
          ? _value.wasRefunded
          : wasRefunded // ignore: cast_nullable_to_non_nullable
              as bool?,
      prizeDescription: freezed == prizeDescription
          ? _value.prizeDescription
          : prizeDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      prizeStarCount: freezed == prizeStarCount
          ? _value.prizeStarCount
          : prizeStarCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GiveawayWinnersImpl implements _GiveawayWinners {
  const _$GiveawayWinnersImpl(
      {@JsonKey(name: 'chat') required this.chat,
      @JsonKey(name: 'giveaway_message_id') required this.giveawayMessageId,
      @JsonKey(name: 'winners_selection_date')
      required this.winnersSelectionDate,
      @JsonKey(name: 'winner_count') required this.winnerCount,
      @JsonKey(name: 'winners') required final List<User> winners,
      @JsonKey(name: 'additional_chat_count') this.additionalChatCount,
      @JsonKey(name: 'premium_subscription_month_count')
      this.premiumSubscriptionMonthCount,
      @JsonKey(name: 'unclaimed_prize_count') this.unclaimedPrizeCount,
      @JsonKey(name: 'only_new_members') this.onlyNewMembers,
      @JsonKey(name: 'was_refunded') this.wasRefunded,
      @JsonKey(name: 'prize_description') this.prizeDescription,
      @JsonKey(name: 'prize_star_count') this.prizeStarCount})
      : _winners = winners;

  factory _$GiveawayWinnersImpl.fromJson(Map<String, dynamic> json) =>
      _$$GiveawayWinnersImplFromJson(json);

  /// The chat that created the giveaway
  @override
  @JsonKey(name: 'chat')
  final Chat chat;

  /// Identifier of the messsage with the giveaway in the chat
  @override
  @JsonKey(name: 'giveaway_message_id')
  final int giveawayMessageId;

  /// Point in time (Unix timestamp) when winners of the giveaway were
  /// selected
  @override
  @JsonKey(name: 'winners_selection_date')
  final int winnersSelectionDate;

  /// Total number of winners in the giveaway
  @override
  @JsonKey(name: 'winner_count')
  final int winnerCount;

  /// List of up to 100 winners of the giveaway
  final List<User> _winners;

  /// List of up to 100 winners of the giveaway
  @override
  @JsonKey(name: 'winners')
  List<User> get winners {
    if (_winners is EqualUnmodifiableListView) return _winners;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_winners);
  }

  /// The number of other chats the user had to join in order to be eligible
  /// for the giveaway
  @override
  @JsonKey(name: 'additional_chat_count')
  final int? additionalChatCount;

  /// The number of months the Telegram Premium subscription won from the
  /// giveaway will be active for
  @override
  @JsonKey(name: 'premium_subscription_month_count')
  final int? premiumSubscriptionMonthCount;

  /// Number of undistributed prizes
  @override
  @JsonKey(name: 'unclaimed_prize_count')
  final int? unclaimedPrizeCount;

  /// True, if only users who had joined the chats after the giveaway started
  /// were eligible to win
  @override
  @JsonKey(name: 'only_new_members')
  final bool? onlyNewMembers;

  /// True, if the giveaway was canceled because the payment for it was
  /// refunded
  @override
  @JsonKey(name: 'was_refunded')
  final bool? wasRefunded;

  /// Description of additional giveaway prize
  @override
  @JsonKey(name: 'prize_description')
  final String? prizeDescription;

  /// Optional. The number of Telegram Stars to be split between giveaway
  /// winners; for Telegram Star giveaways only
  @override
  @JsonKey(name: 'prize_star_count')
  final int? prizeStarCount;

  @override
  String toString() {
    return 'GiveawayWinners(chat: $chat, giveawayMessageId: $giveawayMessageId, winnersSelectionDate: $winnersSelectionDate, winnerCount: $winnerCount, winners: $winners, additionalChatCount: $additionalChatCount, premiumSubscriptionMonthCount: $premiumSubscriptionMonthCount, unclaimedPrizeCount: $unclaimedPrizeCount, onlyNewMembers: $onlyNewMembers, wasRefunded: $wasRefunded, prizeDescription: $prizeDescription, prizeStarCount: $prizeStarCount)';
  }

  /// Create a copy of GiveawayWinners
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GiveawayWinnersImplCopyWith<_$GiveawayWinnersImpl> get copyWith =>
      __$$GiveawayWinnersImplCopyWithImpl<_$GiveawayWinnersImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GiveawayWinnersImplToJson(
      this,
    );
  }
}

abstract class _GiveawayWinners implements GiveawayWinners {
  const factory _GiveawayWinners(
      {@JsonKey(name: 'chat') required final Chat chat,
      @JsonKey(name: 'giveaway_message_id')
      required final int giveawayMessageId,
      @JsonKey(name: 'winners_selection_date')
      required final int winnersSelectionDate,
      @JsonKey(name: 'winner_count') required final int winnerCount,
      @JsonKey(name: 'winners') required final List<User> winners,
      @JsonKey(name: 'additional_chat_count') final int? additionalChatCount,
      @JsonKey(name: 'premium_subscription_month_count')
      final int? premiumSubscriptionMonthCount,
      @JsonKey(name: 'unclaimed_prize_count') final int? unclaimedPrizeCount,
      @JsonKey(name: 'only_new_members') final bool? onlyNewMembers,
      @JsonKey(name: 'was_refunded') final bool? wasRefunded,
      @JsonKey(name: 'prize_description') final String? prizeDescription,
      @JsonKey(name: 'prize_star_count')
      final int? prizeStarCount}) = _$GiveawayWinnersImpl;

  factory _GiveawayWinners.fromJson(Map<String, dynamic> json) =
      _$GiveawayWinnersImpl.fromJson;

  /// The chat that created the giveaway
  @override
  @JsonKey(name: 'chat')
  Chat get chat;

  /// Identifier of the messsage with the giveaway in the chat
  @override
  @JsonKey(name: 'giveaway_message_id')
  int get giveawayMessageId;

  /// Point in time (Unix timestamp) when winners of the giveaway were
  /// selected
  @override
  @JsonKey(name: 'winners_selection_date')
  int get winnersSelectionDate;

  /// Total number of winners in the giveaway
  @override
  @JsonKey(name: 'winner_count')
  int get winnerCount;

  /// List of up to 100 winners of the giveaway
  @override
  @JsonKey(name: 'winners')
  List<User> get winners;

  /// The number of other chats the user had to join in order to be eligible
  /// for the giveaway
  @override
  @JsonKey(name: 'additional_chat_count')
  int? get additionalChatCount;

  /// The number of months the Telegram Premium subscription won from the
  /// giveaway will be active for
  @override
  @JsonKey(name: 'premium_subscription_month_count')
  int? get premiumSubscriptionMonthCount;

  /// Number of undistributed prizes
  @override
  @JsonKey(name: 'unclaimed_prize_count')
  int? get unclaimedPrizeCount;

  /// True, if only users who had joined the chats after the giveaway started
  /// were eligible to win
  @override
  @JsonKey(name: 'only_new_members')
  bool? get onlyNewMembers;

  /// True, if the giveaway was canceled because the payment for it was
  /// refunded
  @override
  @JsonKey(name: 'was_refunded')
  bool? get wasRefunded;

  /// Description of additional giveaway prize
  @override
  @JsonKey(name: 'prize_description')
  String? get prizeDescription;

  /// Optional. The number of Telegram Stars to be split between giveaway
  /// winners; for Telegram Star giveaways only
  @override
  @JsonKey(name: 'prize_star_count')
  int? get prizeStarCount;

  /// Create a copy of GiveawayWinners
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GiveawayWinnersImplCopyWith<_$GiveawayWinnersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
