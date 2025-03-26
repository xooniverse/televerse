// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'affiliate_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AffiliateInfo {
  /// The bot or the user that received an affiliate commission if it was
  /// received by a bot or a user.
  @JsonKey(name: 'affiliate_user')
  User? get affiliateUser;

  /// The chat that received an affiliate commission if it was received by a
  /// chat.
  @JsonKey(name: 'affiliate_chat')
  Chat? get affiliateChat;

  /// The number of Telegram Stars received by the affiliate for each 1000
  /// Telegram Stars received by the bot from referred users.
  @JsonKey(name: 'commission_per_mille')
  int get commissionPerMille;

  /// Integer amount of Telegram Stars received by the affiliate from the
  /// transaction, rounded to 0; can be negative for refunds.
  @JsonKey(name: 'amount')
  int get amount;

  /// The number of 1/1000000000 shares of Telegram Stars received by the
  /// affiliate; from -999999999 to 999999999; can be negative for refunds.
  @JsonKey(name: 'nanostar_amount')
  int? get nanostarAmount;

  /// Create a copy of AffiliateInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AffiliateInfoCopyWith<AffiliateInfo> get copyWith =>
      _$AffiliateInfoCopyWithImpl<AffiliateInfo>(
          this as AffiliateInfo, _$identity);

  /// Serializes this AffiliateInfo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'AffiliateInfo(affiliateUser: $affiliateUser, affiliateChat: $affiliateChat, commissionPerMille: $commissionPerMille, amount: $amount, nanostarAmount: $nanostarAmount)';
  }
}

/// @nodoc
abstract mixin class $AffiliateInfoCopyWith<$Res> {
  factory $AffiliateInfoCopyWith(
          AffiliateInfo value, $Res Function(AffiliateInfo) _then) =
      _$AffiliateInfoCopyWithImpl;
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
class _$AffiliateInfoCopyWithImpl<$Res>
    implements $AffiliateInfoCopyWith<$Res> {
  _$AffiliateInfoCopyWithImpl(this._self, this._then);

  final AffiliateInfo _self;
  final $Res Function(AffiliateInfo) _then;

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
    return _then(_self.copyWith(
      affiliateUser: freezed == affiliateUser
          ? _self.affiliateUser
          : affiliateUser // ignore: cast_nullable_to_non_nullable
              as User?,
      affiliateChat: freezed == affiliateChat
          ? _self.affiliateChat
          : affiliateChat // ignore: cast_nullable_to_non_nullable
              as Chat?,
      commissionPerMille: null == commissionPerMille
          ? _self.commissionPerMille
          : commissionPerMille // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      nanostarAmount: freezed == nanostarAmount
          ? _self.nanostarAmount
          : nanostarAmount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  /// Create a copy of AffiliateInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get affiliateUser {
    if (_self.affiliateUser == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_self.affiliateUser!, (value) {
      return _then(_self.copyWith(affiliateUser: value));
    });
  }

  /// Create a copy of AffiliateInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatCopyWith<$Res>? get affiliateChat {
    if (_self.affiliateChat == null) {
      return null;
    }

    return $ChatCopyWith<$Res>(_self.affiliateChat!, (value) {
      return _then(_self.copyWith(affiliateChat: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _AffiliateInfo implements AffiliateInfo {
  const _AffiliateInfo(
      {@JsonKey(name: 'affiliate_user') this.affiliateUser,
      @JsonKey(name: 'affiliate_chat') this.affiliateChat,
      @JsonKey(name: 'commission_per_mille') required this.commissionPerMille,
      @JsonKey(name: 'amount') required this.amount,
      @JsonKey(name: 'nanostar_amount') this.nanostarAmount});
  factory _AffiliateInfo.fromJson(Map<String, dynamic> json) =>
      _$AffiliateInfoFromJson(json);

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

  /// Create a copy of AffiliateInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AffiliateInfoCopyWith<_AffiliateInfo> get copyWith =>
      __$AffiliateInfoCopyWithImpl<_AffiliateInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AffiliateInfoToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'AffiliateInfo(affiliateUser: $affiliateUser, affiliateChat: $affiliateChat, commissionPerMille: $commissionPerMille, amount: $amount, nanostarAmount: $nanostarAmount)';
  }
}

/// @nodoc
abstract mixin class _$AffiliateInfoCopyWith<$Res>
    implements $AffiliateInfoCopyWith<$Res> {
  factory _$AffiliateInfoCopyWith(
          _AffiliateInfo value, $Res Function(_AffiliateInfo) _then) =
      __$AffiliateInfoCopyWithImpl;
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
class __$AffiliateInfoCopyWithImpl<$Res>
    implements _$AffiliateInfoCopyWith<$Res> {
  __$AffiliateInfoCopyWithImpl(this._self, this._then);

  final _AffiliateInfo _self;
  final $Res Function(_AffiliateInfo) _then;

  /// Create a copy of AffiliateInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? affiliateUser = freezed,
    Object? affiliateChat = freezed,
    Object? commissionPerMille = null,
    Object? amount = null,
    Object? nanostarAmount = freezed,
  }) {
    return _then(_AffiliateInfo(
      affiliateUser: freezed == affiliateUser
          ? _self.affiliateUser
          : affiliateUser // ignore: cast_nullable_to_non_nullable
              as User?,
      affiliateChat: freezed == affiliateChat
          ? _self.affiliateChat
          : affiliateChat // ignore: cast_nullable_to_non_nullable
              as Chat?,
      commissionPerMille: null == commissionPerMille
          ? _self.commissionPerMille
          : commissionPerMille // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      nanostarAmount: freezed == nanostarAmount
          ? _self.nanostarAmount
          : nanostarAmount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  /// Create a copy of AffiliateInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get affiliateUser {
    if (_self.affiliateUser == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_self.affiliateUser!, (value) {
      return _then(_self.copyWith(affiliateUser: value));
    });
  }

  /// Create a copy of AffiliateInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatCopyWith<$Res>? get affiliateChat {
    if (_self.affiliateChat == null) {
      return null;
    }

    return $ChatCopyWith<$Res>(_self.affiliateChat!, (value) {
      return _then(_self.copyWith(affiliateChat: value));
    });
  }
}
