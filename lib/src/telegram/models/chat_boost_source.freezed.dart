// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_boost_source.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ChatBoostSource _$ChatBoostSourceFromJson(Map<String, dynamic> json) {
  switch (json['source']) {
    case 'premium':
      return ChatBoostSourcePremium.fromJson(json);
    case 'gift_code':
      return ChatBoostSourceGiftCode.fromJson(json);
    case 'giveaway':
      return ChatBoostSourceGiveaway.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'source', 'ChatBoostSource',
          'Invalid union type "${json['source']}"!');
  }
}

/// @nodoc
mixin _$ChatBoostSource {
  /// Source of the boost, always "premium"
  @JsonKey(name: 'source')
  ChatBoostSourceType get source;

  /// User that boosted the chat
  @JsonKey(name: 'user')
  User? get user;

  /// Create a copy of ChatBoostSource
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChatBoostSourceCopyWith<ChatBoostSource> get copyWith =>
      _$ChatBoostSourceCopyWithImpl<ChatBoostSource>(
          this as ChatBoostSource, _$identity);

  /// Serializes this ChatBoostSource to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'ChatBoostSource(source: $source, user: $user)';
  }
}

/// @nodoc
abstract mixin class $ChatBoostSourceCopyWith<$Res> {
  factory $ChatBoostSourceCopyWith(
          ChatBoostSource value, $Res Function(ChatBoostSource) _then) =
      _$ChatBoostSourceCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'source') ChatBoostSourceType source,
      @JsonKey(name: 'user') User user});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$ChatBoostSourceCopyWithImpl<$Res>
    implements $ChatBoostSourceCopyWith<$Res> {
  _$ChatBoostSourceCopyWithImpl(this._self, this._then);

  final ChatBoostSource _self;
  final $Res Function(ChatBoostSource) _then;

  /// Create a copy of ChatBoostSource
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? user = null,
  }) {
    return _then(_self.copyWith(
      source: null == source
          ? _self.source
          : source // ignore: cast_nullable_to_non_nullable
              as ChatBoostSourceType,
      user: null == user
          ? _self.user!
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  /// Create a copy of ChatBoostSource
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_self.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_self.user!, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class ChatBoostSourcePremium implements ChatBoostSource {
  const ChatBoostSourcePremium(
      {@JsonKey(name: 'source') this.source = ChatBoostSourceType.premium,
      @JsonKey(name: 'user') required this.user});
  factory ChatBoostSourcePremium.fromJson(Map<String, dynamic> json) =>
      _$ChatBoostSourcePremiumFromJson(json);

  /// Source of the boost, always "premium"
  @override
  @JsonKey(name: 'source')
  final ChatBoostSourceType source;

  /// User that boosted the chat
  @override
  @JsonKey(name: 'user')
  final User user;

  /// Create a copy of ChatBoostSource
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChatBoostSourcePremiumCopyWith<ChatBoostSourcePremium> get copyWith =>
      _$ChatBoostSourcePremiumCopyWithImpl<ChatBoostSourcePremium>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChatBoostSourcePremiumToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'ChatBoostSource.premium(source: $source, user: $user)';
  }
}

/// @nodoc
abstract mixin class $ChatBoostSourcePremiumCopyWith<$Res>
    implements $ChatBoostSourceCopyWith<$Res> {
  factory $ChatBoostSourcePremiumCopyWith(ChatBoostSourcePremium value,
          $Res Function(ChatBoostSourcePremium) _then) =
      _$ChatBoostSourcePremiumCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'source') ChatBoostSourceType source,
      @JsonKey(name: 'user') User user});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$ChatBoostSourcePremiumCopyWithImpl<$Res>
    implements $ChatBoostSourcePremiumCopyWith<$Res> {
  _$ChatBoostSourcePremiumCopyWithImpl(this._self, this._then);

  final ChatBoostSourcePremium _self;
  final $Res Function(ChatBoostSourcePremium) _then;

  /// Create a copy of ChatBoostSource
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? source = null,
    Object? user = null,
  }) {
    return _then(ChatBoostSourcePremium(
      source: null == source
          ? _self.source
          : source // ignore: cast_nullable_to_non_nullable
              as ChatBoostSourceType,
      user: null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  /// Create a copy of ChatBoostSource
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class ChatBoostSourceGiftCode implements ChatBoostSource {
  const ChatBoostSourceGiftCode(
      {@JsonKey(name: 'source') this.source = ChatBoostSourceType.giftCode,
      @JsonKey(name: 'user') required this.user});
  factory ChatBoostSourceGiftCode.fromJson(Map<String, dynamic> json) =>
      _$ChatBoostSourceGiftCodeFromJson(json);

  /// Source of the boost, always "gift_code"
  @override
  @JsonKey(name: 'source')
  final ChatBoostSourceType source;

  /// User for which the gift code was created
  @override
  @JsonKey(name: 'user')
  final User user;

  /// Create a copy of ChatBoostSource
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChatBoostSourceGiftCodeCopyWith<ChatBoostSourceGiftCode> get copyWith =>
      _$ChatBoostSourceGiftCodeCopyWithImpl<ChatBoostSourceGiftCode>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChatBoostSourceGiftCodeToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'ChatBoostSource.giftCode(source: $source, user: $user)';
  }
}

/// @nodoc
abstract mixin class $ChatBoostSourceGiftCodeCopyWith<$Res>
    implements $ChatBoostSourceCopyWith<$Res> {
  factory $ChatBoostSourceGiftCodeCopyWith(ChatBoostSourceGiftCode value,
          $Res Function(ChatBoostSourceGiftCode) _then) =
      _$ChatBoostSourceGiftCodeCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'source') ChatBoostSourceType source,
      @JsonKey(name: 'user') User user});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$ChatBoostSourceGiftCodeCopyWithImpl<$Res>
    implements $ChatBoostSourceGiftCodeCopyWith<$Res> {
  _$ChatBoostSourceGiftCodeCopyWithImpl(this._self, this._then);

  final ChatBoostSourceGiftCode _self;
  final $Res Function(ChatBoostSourceGiftCode) _then;

  /// Create a copy of ChatBoostSource
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? source = null,
    Object? user = null,
  }) {
    return _then(ChatBoostSourceGiftCode(
      source: null == source
          ? _self.source
          : source // ignore: cast_nullable_to_non_nullable
              as ChatBoostSourceType,
      user: null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  /// Create a copy of ChatBoostSource
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class ChatBoostSourceGiveaway implements ChatBoostSource {
  const ChatBoostSourceGiveaway(
      {@JsonKey(name: 'source') this.source = ChatBoostSourceType.giveaway,
      @JsonKey(name: 'giveaway_message_id') required this.giveawayMessageId,
      @JsonKey(name: 'user') this.user,
      @JsonKey(name: 'prize_star_count') this.prizeStarCount,
      @JsonKey(name: 'is_unclaimed') this.isUnclaimed});
  factory ChatBoostSourceGiveaway.fromJson(Map<String, dynamic> json) =>
      _$ChatBoostSourceGiveawayFromJson(json);

  /// Source of the boost, always "giveaway"
  @override
  @JsonKey(name: 'source')
  final ChatBoostSourceType source;

  /// Identifier of a message in the chat with the giveaway; the message could
  /// have been deleted already. May be 0 if the message isn't sent yet.
  @JsonKey(name: 'giveaway_message_id')
  final int giveawayMessageId;

  /// User that won the prize in the giveaway if any; for Telegram Premium
  /// giveaways only
  @override
  @JsonKey(name: 'user')
  final User? user;

  /// The number of Telegram Stars to be split between giveaway winners; for
  /// Telegram Star giveaways only
  @JsonKey(name: 'prize_star_count')
  final int? prizeStarCount;

  /// True, if the giveaway was completed, but there was no user to win the
  /// prize
  @JsonKey(name: 'is_unclaimed')
  final bool? isUnclaimed;

  /// Create a copy of ChatBoostSource
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChatBoostSourceGiveawayCopyWith<ChatBoostSourceGiveaway> get copyWith =>
      _$ChatBoostSourceGiveawayCopyWithImpl<ChatBoostSourceGiveaway>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChatBoostSourceGiveawayToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'ChatBoostSource.giveaway(source: $source, giveawayMessageId: $giveawayMessageId, user: $user, prizeStarCount: $prizeStarCount, isUnclaimed: $isUnclaimed)';
  }
}

/// @nodoc
abstract mixin class $ChatBoostSourceGiveawayCopyWith<$Res>
    implements $ChatBoostSourceCopyWith<$Res> {
  factory $ChatBoostSourceGiveawayCopyWith(ChatBoostSourceGiveaway value,
          $Res Function(ChatBoostSourceGiveaway) _then) =
      _$ChatBoostSourceGiveawayCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'source') ChatBoostSourceType source,
      @JsonKey(name: 'giveaway_message_id') int giveawayMessageId,
      @JsonKey(name: 'user') User? user,
      @JsonKey(name: 'prize_star_count') int? prizeStarCount,
      @JsonKey(name: 'is_unclaimed') bool? isUnclaimed});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$ChatBoostSourceGiveawayCopyWithImpl<$Res>
    implements $ChatBoostSourceGiveawayCopyWith<$Res> {
  _$ChatBoostSourceGiveawayCopyWithImpl(this._self, this._then);

  final ChatBoostSourceGiveaway _self;
  final $Res Function(ChatBoostSourceGiveaway) _then;

  /// Create a copy of ChatBoostSource
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? source = null,
    Object? giveawayMessageId = null,
    Object? user = freezed,
    Object? prizeStarCount = freezed,
    Object? isUnclaimed = freezed,
  }) {
    return _then(ChatBoostSourceGiveaway(
      source: null == source
          ? _self.source
          : source // ignore: cast_nullable_to_non_nullable
              as ChatBoostSourceType,
      giveawayMessageId: null == giveawayMessageId
          ? _self.giveawayMessageId
          : giveawayMessageId // ignore: cast_nullable_to_non_nullable
              as int,
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      prizeStarCount: freezed == prizeStarCount
          ? _self.prizeStarCount
          : prizeStarCount // ignore: cast_nullable_to_non_nullable
              as int?,
      isUnclaimed: freezed == isUnclaimed
          ? _self.isUnclaimed
          : isUnclaimed // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  /// Create a copy of ChatBoostSource
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_self.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_self.user!, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}
