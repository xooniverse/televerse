// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'affiliate_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AffiliateInfo _$AffiliateInfoFromJson(Map<String, dynamic> json) {
  return _AffiliateInfo.fromJson(json);
}

/// @nodoc
mixin _$AffiliateInfo {
  /// The bot or the user that received an affiliate commission if it was
  /// received by a bot or a user.
  @JsonKey(name: 'affiliate_user')
  User? get affiliateUser => throw _privateConstructorUsedError;

  /// The chat that received an affiliate commission if it was received by a
  /// chat.
  @JsonKey(name: 'affiliate_chat')
  Chat? get affiliateChat => throw _privateConstructorUsedError;

  /// The number of Telegram Stars received by the affiliate for each 1000
  /// Telegram Stars received by the bot from referred users.
  @JsonKey(name: 'commission_per_mille')
  int get commissionPerMille => throw _privateConstructorUsedError;

  /// Integer amount of Telegram Stars received by the affiliate from the
  /// transaction, rounded to 0; can be negative for refunds.
  @JsonKey(name: 'amount')
  int get amount => throw _privateConstructorUsedError;

  /// The number of 1/1000000000 shares of Telegram Stars received by the
  /// affiliate; from -999999999 to 999999999; can be negative for refunds.
  @JsonKey(name: 'nanostar_amount')
  int? get nanostarAmount => throw _privateConstructorUsedError;

  /// Serializes this AffiliateInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AffiliateInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AffiliateInfoCopyWith<AffiliateInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AffiliateInfoCopyWith<$Res> {
  factory $AffiliateInfoCopyWith(
          AffiliateInfo value, $Res Function(AffiliateInfo) then) =
      _$AffiliateInfoCopyWithImpl<$Res, AffiliateInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: 'affiliate_user') User? affiliateUser,
      @JsonKey(name: 'affiliate_chat') Chat? affiliateChat,
      @JsonKey(name: 'commission_per_mille') int commissionPerMille,
      @JsonKey(name: 'amount') int amount,
      @JsonKey(name: 'nanostar_amount') int? nanostarAmount});

  $UserCopyWith<$Res>? get affiliateUser;
  $ChatCopyWith<$Res>? get affiliateChat;
}

/// @nodoc
class _$AffiliateInfoCopyWithImpl<$Res, $Val extends AffiliateInfo>
    implements $AffiliateInfoCopyWith<$Res> {
  _$AffiliateInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AffiliateInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? affiliateUser = freezed,
    Object? affiliateChat = freezed,
    Object? commissionPerMille = null,
    Object? amount = null,
    Object? nanostarAmount = freezed,
  }) {
    return _then(_value.copyWith(
      affiliateUser: freezed == affiliateUser
          ? _value.affiliateUser
          : affiliateUser // ignore: cast_nullable_to_non_nullable
              as User?,
      affiliateChat: freezed == affiliateChat
          ? _value.affiliateChat
          : affiliateChat // ignore: cast_nullable_to_non_nullable
              as Chat?,
      commissionPerMille: null == commissionPerMille
          ? _value.commissionPerMille
          : commissionPerMille // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      nanostarAmount: freezed == nanostarAmount
          ? _value.nanostarAmount
          : nanostarAmount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of AffiliateInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get affiliateUser {
    if (_value.affiliateUser == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.affiliateUser!, (value) {
      return _then(_value.copyWith(affiliateUser: value) as $Val);
    });
  }

  /// Create a copy of AffiliateInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatCopyWith<$Res>? get affiliateChat {
    if (_value.affiliateChat == null) {
      return null;
    }

    return $ChatCopyWith<$Res>(_value.affiliateChat!, (value) {
      return _then(_value.copyWith(affiliateChat: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AffiliateInfoImplCopyWith<$Res>
    implements $AffiliateInfoCopyWith<$Res> {
  factory _$$AffiliateInfoImplCopyWith(
          _$AffiliateInfoImpl value, $Res Function(_$AffiliateInfoImpl) then) =
      __$$AffiliateInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'affiliate_user') User? affiliateUser,
      @JsonKey(name: 'affiliate_chat') Chat? affiliateChat,
      @JsonKey(name: 'commission_per_mille') int commissionPerMille,
      @JsonKey(name: 'amount') int amount,
      @JsonKey(name: 'nanostar_amount') int? nanostarAmount});

  @override
  $UserCopyWith<$Res>? get affiliateUser;
  @override
  $ChatCopyWith<$Res>? get affiliateChat;
}

/// @nodoc
class __$$AffiliateInfoImplCopyWithImpl<$Res>
    extends _$AffiliateInfoCopyWithImpl<$Res, _$AffiliateInfoImpl>
    implements _$$AffiliateInfoImplCopyWith<$Res> {
  __$$AffiliateInfoImplCopyWithImpl(
      _$AffiliateInfoImpl _value, $Res Function(_$AffiliateInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of AffiliateInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? affiliateUser = freezed,
    Object? affiliateChat = freezed,
    Object? commissionPerMille = null,
    Object? amount = null,
    Object? nanostarAmount = freezed,
  }) {
    return _then(_$AffiliateInfoImpl(
      affiliateUser: freezed == affiliateUser
          ? _value.affiliateUser
          : affiliateUser // ignore: cast_nullable_to_non_nullable
              as User?,
      affiliateChat: freezed == affiliateChat
          ? _value.affiliateChat
          : affiliateChat // ignore: cast_nullable_to_non_nullable
              as Chat?,
      commissionPerMille: null == commissionPerMille
          ? _value.commissionPerMille
          : commissionPerMille // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      nanostarAmount: freezed == nanostarAmount
          ? _value.nanostarAmount
          : nanostarAmount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AffiliateInfoImpl implements _AffiliateInfo {
  const _$AffiliateInfoImpl(
      {@JsonKey(name: 'affiliate_user') this.affiliateUser,
      @JsonKey(name: 'affiliate_chat') this.affiliateChat,
      @JsonKey(name: 'commission_per_mille') required this.commissionPerMille,
      @JsonKey(name: 'amount') required this.amount,
      @JsonKey(name: 'nanostar_amount') this.nanostarAmount});

  factory _$AffiliateInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AffiliateInfoImplFromJson(json);

  /// The bot or the user that received an affiliate commission if it was
  /// received by a bot or a user.
  @override
  @JsonKey(name: 'affiliate_user')
  final User? affiliateUser;

  /// The chat that received an affiliate commission if it was received by a
  /// chat.
  @override
  @JsonKey(name: 'affiliate_chat')
  final Chat? affiliateChat;

  /// The number of Telegram Stars received by the affiliate for each 1000
  /// Telegram Stars received by the bot from referred users.
  @override
  @JsonKey(name: 'commission_per_mille')
  final int commissionPerMille;

  /// Integer amount of Telegram Stars received by the affiliate from the
  /// transaction, rounded to 0; can be negative for refunds.
  @override
  @JsonKey(name: 'amount')
  final int amount;

  /// The number of 1/1000000000 shares of Telegram Stars received by the
  /// affiliate; from -999999999 to 999999999; can be negative for refunds.
  @override
  @JsonKey(name: 'nanostar_amount')
  final int? nanostarAmount;

  @override
  String toString() {
    return 'AffiliateInfo(affiliateUser: $affiliateUser, affiliateChat: $affiliateChat, commissionPerMille: $commissionPerMille, amount: $amount, nanostarAmount: $nanostarAmount)';
  }

  /// Create a copy of AffiliateInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AffiliateInfoImplCopyWith<_$AffiliateInfoImpl> get copyWith =>
      __$$AffiliateInfoImplCopyWithImpl<_$AffiliateInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AffiliateInfoImplToJson(
      this,
    );
  }
}

abstract class _AffiliateInfo implements AffiliateInfo {
  const factory _AffiliateInfo(
          {@JsonKey(name: 'affiliate_user') final User? affiliateUser,
          @JsonKey(name: 'affiliate_chat') final Chat? affiliateChat,
          @JsonKey(name: 'commission_per_mille')
          required final int commissionPerMille,
          @JsonKey(name: 'amount') required final int amount,
          @JsonKey(name: 'nanostar_amount') final int? nanostarAmount}) =
      _$AffiliateInfoImpl;

  factory _AffiliateInfo.fromJson(Map<String, dynamic> json) =
      _$AffiliateInfoImpl.fromJson;

  /// The bot or the user that received an affiliate commission if it was
  /// received by a bot or a user.
  @override
  @JsonKey(name: 'affiliate_user')
  User? get affiliateUser;

  /// The chat that received an affiliate commission if it was received by a
  /// chat.
  @override
  @JsonKey(name: 'affiliate_chat')
  Chat? get affiliateChat;

  /// The number of Telegram Stars received by the affiliate for each 1000
  /// Telegram Stars received by the bot from referred users.
  @override
  @JsonKey(name: 'commission_per_mille')
  int get commissionPerMille;

  /// Integer amount of Telegram Stars received by the affiliate from the
  /// transaction, rounded to 0; can be negative for refunds.
  @override
  @JsonKey(name: 'amount')
  int get amount;

  /// The number of 1/1000000000 shares of Telegram Stars received by the
  /// affiliate; from -999999999 to 999999999; can be negative for refunds.
  @override
  @JsonKey(name: 'nanostar_amount')
  int? get nanostarAmount;

  /// Create a copy of AffiliateInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AffiliateInfoImplCopyWith<_$AffiliateInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
