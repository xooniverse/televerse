// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_boost_source.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
  ChatBoostSourceType get source => throw _privateConstructorUsedError;

  /// User that boosted the chat
  User? get user => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatBoostSourcePremium value) premium,
    required TResult Function(ChatBoostSourceGiftCode value) giftCode,
    required TResult Function(ChatBoostSourceGiveaway value) giveaway,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatBoostSourcePremium value)? premium,
    TResult? Function(ChatBoostSourceGiftCode value)? giftCode,
    TResult? Function(ChatBoostSourceGiveaway value)? giveaway,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatBoostSourcePremium value)? premium,
    TResult Function(ChatBoostSourceGiftCode value)? giftCode,
    TResult Function(ChatBoostSourceGiveaway value)? giveaway,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this ChatBoostSource to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatBoostSource
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatBoostSourceCopyWith<ChatBoostSource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatBoostSourceCopyWith<$Res> {
  factory $ChatBoostSourceCopyWith(
          ChatBoostSource value, $Res Function(ChatBoostSource) then) =
      _$ChatBoostSourceCopyWithImpl<$Res, ChatBoostSource>;
  @useResult
  $Res call({ChatBoostSourceType source, User user});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$ChatBoostSourceCopyWithImpl<$Res, $Val extends ChatBoostSource>
    implements $ChatBoostSourceCopyWith<$Res> {
  _$ChatBoostSourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatBoostSource
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as ChatBoostSourceType,
      user: null == user
          ? _value.user!
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ) as $Val);
  }

  /// Create a copy of ChatBoostSource
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatBoostSourcePremiumImplCopyWith<$Res>
    implements $ChatBoostSourceCopyWith<$Res> {
  factory _$$ChatBoostSourcePremiumImplCopyWith(
          _$ChatBoostSourcePremiumImpl value,
          $Res Function(_$ChatBoostSourcePremiumImpl) then) =
      __$$ChatBoostSourcePremiumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ChatBoostSourceType source, User user});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$ChatBoostSourcePremiumImplCopyWithImpl<$Res>
    extends _$ChatBoostSourceCopyWithImpl<$Res, _$ChatBoostSourcePremiumImpl>
    implements _$$ChatBoostSourcePremiumImplCopyWith<$Res> {
  __$$ChatBoostSourcePremiumImplCopyWithImpl(
      _$ChatBoostSourcePremiumImpl _value,
      $Res Function(_$ChatBoostSourcePremiumImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatBoostSource
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? user = null,
  }) {
    return _then(_$ChatBoostSourcePremiumImpl(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as ChatBoostSourceType,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  /// Create a copy of ChatBoostSource
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatBoostSourcePremiumImpl implements ChatBoostSourcePremium {
  const _$ChatBoostSourcePremiumImpl(
      {this.source = ChatBoostSourceType.premium, required this.user});

  factory _$ChatBoostSourcePremiumImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatBoostSourcePremiumImplFromJson(json);

  /// Source of the boost, always "premium"
  @override
  @JsonKey()
  final ChatBoostSourceType source;

  /// User that boosted the chat
  @override
  final User user;

  @override
  String toString() {
    return 'ChatBoostSource.premium(source: $source, user: $user)';
  }

  /// Create a copy of ChatBoostSource
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatBoostSourcePremiumImplCopyWith<_$ChatBoostSourcePremiumImpl>
      get copyWith => __$$ChatBoostSourcePremiumImplCopyWithImpl<
          _$ChatBoostSourcePremiumImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatBoostSourcePremium value) premium,
    required TResult Function(ChatBoostSourceGiftCode value) giftCode,
    required TResult Function(ChatBoostSourceGiveaway value) giveaway,
  }) {
    return premium(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatBoostSourcePremium value)? premium,
    TResult? Function(ChatBoostSourceGiftCode value)? giftCode,
    TResult? Function(ChatBoostSourceGiveaway value)? giveaway,
  }) {
    return premium?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatBoostSourcePremium value)? premium,
    TResult Function(ChatBoostSourceGiftCode value)? giftCode,
    TResult Function(ChatBoostSourceGiveaway value)? giveaway,
    required TResult orElse(),
  }) {
    if (premium != null) {
      return premium(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatBoostSourcePremiumImplToJson(
      this,
    );
  }
}

abstract class ChatBoostSourcePremium implements ChatBoostSource {
  const factory ChatBoostSourcePremium(
      {final ChatBoostSourceType source,
      required final User user}) = _$ChatBoostSourcePremiumImpl;

  factory ChatBoostSourcePremium.fromJson(Map<String, dynamic> json) =
      _$ChatBoostSourcePremiumImpl.fromJson;

  /// Source of the boost, always "premium"
  @override
  ChatBoostSourceType get source;

  /// User that boosted the chat
  @override
  User get user;

  /// Create a copy of ChatBoostSource
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatBoostSourcePremiumImplCopyWith<_$ChatBoostSourcePremiumImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatBoostSourceGiftCodeImplCopyWith<$Res>
    implements $ChatBoostSourceCopyWith<$Res> {
  factory _$$ChatBoostSourceGiftCodeImplCopyWith(
          _$ChatBoostSourceGiftCodeImpl value,
          $Res Function(_$ChatBoostSourceGiftCodeImpl) then) =
      __$$ChatBoostSourceGiftCodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ChatBoostSourceType source, User user});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$ChatBoostSourceGiftCodeImplCopyWithImpl<$Res>
    extends _$ChatBoostSourceCopyWithImpl<$Res, _$ChatBoostSourceGiftCodeImpl>
    implements _$$ChatBoostSourceGiftCodeImplCopyWith<$Res> {
  __$$ChatBoostSourceGiftCodeImplCopyWithImpl(
      _$ChatBoostSourceGiftCodeImpl _value,
      $Res Function(_$ChatBoostSourceGiftCodeImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatBoostSource
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? user = null,
  }) {
    return _then(_$ChatBoostSourceGiftCodeImpl(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as ChatBoostSourceType,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  /// Create a copy of ChatBoostSource
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatBoostSourceGiftCodeImpl implements ChatBoostSourceGiftCode {
  const _$ChatBoostSourceGiftCodeImpl(
      {this.source = ChatBoostSourceType.giftCode, required this.user});

  factory _$ChatBoostSourceGiftCodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatBoostSourceGiftCodeImplFromJson(json);

  /// Source of the boost, always "gift_code"
  @override
  @JsonKey()
  final ChatBoostSourceType source;

  /// User for which the gift code was created
  @override
  final User user;

  @override
  String toString() {
    return 'ChatBoostSource.giftCode(source: $source, user: $user)';
  }

  /// Create a copy of ChatBoostSource
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatBoostSourceGiftCodeImplCopyWith<_$ChatBoostSourceGiftCodeImpl>
      get copyWith => __$$ChatBoostSourceGiftCodeImplCopyWithImpl<
          _$ChatBoostSourceGiftCodeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatBoostSourcePremium value) premium,
    required TResult Function(ChatBoostSourceGiftCode value) giftCode,
    required TResult Function(ChatBoostSourceGiveaway value) giveaway,
  }) {
    return giftCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatBoostSourcePremium value)? premium,
    TResult? Function(ChatBoostSourceGiftCode value)? giftCode,
    TResult? Function(ChatBoostSourceGiveaway value)? giveaway,
  }) {
    return giftCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatBoostSourcePremium value)? premium,
    TResult Function(ChatBoostSourceGiftCode value)? giftCode,
    TResult Function(ChatBoostSourceGiveaway value)? giveaway,
    required TResult orElse(),
  }) {
    if (giftCode != null) {
      return giftCode(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatBoostSourceGiftCodeImplToJson(
      this,
    );
  }
}

abstract class ChatBoostSourceGiftCode implements ChatBoostSource {
  const factory ChatBoostSourceGiftCode(
      {final ChatBoostSourceType source,
      required final User user}) = _$ChatBoostSourceGiftCodeImpl;

  factory ChatBoostSourceGiftCode.fromJson(Map<String, dynamic> json) =
      _$ChatBoostSourceGiftCodeImpl.fromJson;

  /// Source of the boost, always "gift_code"
  @override
  ChatBoostSourceType get source;

  /// User for which the gift code was created
  @override
  User get user;

  /// Create a copy of ChatBoostSource
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatBoostSourceGiftCodeImplCopyWith<_$ChatBoostSourceGiftCodeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatBoostSourceGiveawayImplCopyWith<$Res>
    implements $ChatBoostSourceCopyWith<$Res> {
  factory _$$ChatBoostSourceGiveawayImplCopyWith(
          _$ChatBoostSourceGiveawayImpl value,
          $Res Function(_$ChatBoostSourceGiveawayImpl) then) =
      __$$ChatBoostSourceGiveawayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ChatBoostSourceType source,
      @JsonKey(name: 'giveaway_message_id') int giveawayMessageId,
      User? user,
      @JsonKey(name: 'prize_star_count') int? prizeStarCount,
      @JsonKey(name: 'is_unclaimed') bool? isUnclaimed});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$ChatBoostSourceGiveawayImplCopyWithImpl<$Res>
    extends _$ChatBoostSourceCopyWithImpl<$Res, _$ChatBoostSourceGiveawayImpl>
    implements _$$ChatBoostSourceGiveawayImplCopyWith<$Res> {
  __$$ChatBoostSourceGiveawayImplCopyWithImpl(
      _$ChatBoostSourceGiveawayImpl _value,
      $Res Function(_$ChatBoostSourceGiveawayImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatBoostSource
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? giveawayMessageId = null,
    Object? user = freezed,
    Object? prizeStarCount = freezed,
    Object? isUnclaimed = freezed,
  }) {
    return _then(_$ChatBoostSourceGiveawayImpl(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as ChatBoostSourceType,
      giveawayMessageId: null == giveawayMessageId
          ? _value.giveawayMessageId
          : giveawayMessageId // ignore: cast_nullable_to_non_nullable
              as int,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      prizeStarCount: freezed == prizeStarCount
          ? _value.prizeStarCount
          : prizeStarCount // ignore: cast_nullable_to_non_nullable
              as int?,
      isUnclaimed: freezed == isUnclaimed
          ? _value.isUnclaimed
          : isUnclaimed // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatBoostSourceGiveawayImpl implements ChatBoostSourceGiveaway {
  const _$ChatBoostSourceGiveawayImpl(
      {this.source = ChatBoostSourceType.giveaway,
      @JsonKey(name: 'giveaway_message_id') required this.giveawayMessageId,
      this.user,
      @JsonKey(name: 'prize_star_count') this.prizeStarCount,
      @JsonKey(name: 'is_unclaimed') this.isUnclaimed});

  factory _$ChatBoostSourceGiveawayImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatBoostSourceGiveawayImplFromJson(json);

  /// Source of the boost, always "giveaway"
  @override
  @JsonKey()
  final ChatBoostSourceType source;

  /// Identifier of a message in the chat with the giveaway; the message could
  /// have been deleted already. May be 0 if the message isn't sent yet.
  @override
  @JsonKey(name: 'giveaway_message_id')
  final int giveawayMessageId;

  /// User that won the prize in the giveaway if any; for Telegram Premium
  /// giveaways only
  @override
  final User? user;

  /// The number of Telegram Stars to be split between giveaway winners; for
  /// Telegram Star giveaways only
  @override
  @JsonKey(name: 'prize_star_count')
  final int? prizeStarCount;

  /// True, if the giveaway was completed, but there was no user to win the
  /// prize
  @override
  @JsonKey(name: 'is_unclaimed')
  final bool? isUnclaimed;

  @override
  String toString() {
    return 'ChatBoostSource.giveaway(source: $source, giveawayMessageId: $giveawayMessageId, user: $user, prizeStarCount: $prizeStarCount, isUnclaimed: $isUnclaimed)';
  }

  /// Create a copy of ChatBoostSource
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatBoostSourceGiveawayImplCopyWith<_$ChatBoostSourceGiveawayImpl>
      get copyWith => __$$ChatBoostSourceGiveawayImplCopyWithImpl<
          _$ChatBoostSourceGiveawayImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatBoostSourcePremium value) premium,
    required TResult Function(ChatBoostSourceGiftCode value) giftCode,
    required TResult Function(ChatBoostSourceGiveaway value) giveaway,
  }) {
    return giveaway(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatBoostSourcePremium value)? premium,
    TResult? Function(ChatBoostSourceGiftCode value)? giftCode,
    TResult? Function(ChatBoostSourceGiveaway value)? giveaway,
  }) {
    return giveaway?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatBoostSourcePremium value)? premium,
    TResult Function(ChatBoostSourceGiftCode value)? giftCode,
    TResult Function(ChatBoostSourceGiveaway value)? giveaway,
    required TResult orElse(),
  }) {
    if (giveaway != null) {
      return giveaway(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatBoostSourceGiveawayImplToJson(
      this,
    );
  }
}

abstract class ChatBoostSourceGiveaway implements ChatBoostSource {
  const factory ChatBoostSourceGiveaway(
          {final ChatBoostSourceType source,
          @JsonKey(name: 'giveaway_message_id')
          required final int giveawayMessageId,
          final User? user,
          @JsonKey(name: 'prize_star_count') final int? prizeStarCount,
          @JsonKey(name: 'is_unclaimed') final bool? isUnclaimed}) =
      _$ChatBoostSourceGiveawayImpl;

  factory ChatBoostSourceGiveaway.fromJson(Map<String, dynamic> json) =
      _$ChatBoostSourceGiveawayImpl.fromJson;

  /// Source of the boost, always "giveaway"
  @override
  ChatBoostSourceType get source;

  /// Identifier of a message in the chat with the giveaway; the message could
  /// have been deleted already. May be 0 if the message isn't sent yet.
  @JsonKey(name: 'giveaway_message_id')
  int get giveawayMessageId;

  /// User that won the prize in the giveaway if any; for Telegram Premium
  /// giveaways only
  @override
  User? get user;

  /// The number of Telegram Stars to be split between giveaway winners; for
  /// Telegram Star giveaways only
  @JsonKey(name: 'prize_star_count')
  int? get prizeStarCount;

  /// True, if the giveaway was completed, but there was no user to win the
  /// prize
  @JsonKey(name: 'is_unclaimed')
  bool? get isUnclaimed;

  /// Create a copy of ChatBoostSource
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatBoostSourceGiveawayImplCopyWith<_$ChatBoostSourceGiveawayImpl>
      get copyWith => throw _privateConstructorUsedError;
}
