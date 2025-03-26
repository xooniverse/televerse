// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_partner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
TransactionPartner _$TransactionPartnerFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'fragment':
      return TransactionPartnerFragment.fromJson(json);
    case 'user':
      return TransactionPartnerUser.fromJson(json);
    case 'telegram_ads':
      return TransactionPartnerTelegramAds.fromJson(json);
    case 'telegram_api':
      return TransactionPartnerTelegramApi.fromJson(json);
    case 'other':
      return TransactionPartnerOther.fromJson(json);
    case 'affiliate_program':
      return TransactionPartnerAffiliateProgram.fromJson(json);
    case 'chat':
      return TransactionPartnerChat.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'TransactionPartner',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$TransactionPartner {
  /// Type of the transaction partner, must be "fragment"
  @JsonKey(name: 'type')
  TransactionPartnerType get type;

  /// Create a copy of TransactionPartner
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TransactionPartnerCopyWith<TransactionPartner> get copyWith =>
      _$TransactionPartnerCopyWithImpl<TransactionPartner>(
          this as TransactionPartner, _$identity);

  /// Serializes this TransactionPartner to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'TransactionPartner(type: $type)';
  }
}

/// @nodoc
abstract mixin class $TransactionPartnerCopyWith<$Res> {
  factory $TransactionPartnerCopyWith(
          TransactionPartner value, $Res Function(TransactionPartner) _then) =
      _$TransactionPartnerCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'type') TransactionPartnerType type});
}

/// @nodoc
class _$TransactionPartnerCopyWithImpl<$Res>
    implements $TransactionPartnerCopyWith<$Res> {
  _$TransactionPartnerCopyWithImpl(this._self, this._then);

  final TransactionPartner _self;
  final $Res Function(TransactionPartner) _then;

  /// Create a copy of TransactionPartner
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_self.copyWith(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as TransactionPartnerType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class TransactionPartnerFragment implements TransactionPartner {
  const TransactionPartnerFragment(
      {@JsonKey(name: 'type') this.type = TransactionPartnerType.fragment,
      @JsonKey(name: 'withdrawal_state') this.withdrawalState})
      : assert(type == TransactionPartnerType.fragment,
            'type must be TransactionPartnerType.fragment');
  factory TransactionPartnerFragment.fromJson(Map<String, dynamic> json) =>
      _$TransactionPartnerFragmentFromJson(json);

  /// Type of the transaction partner, must be "fragment"
  @override
  @JsonKey(name: 'type')
  final TransactionPartnerType type;

  /// State of the transaction if the transaction is outgoing.
  @JsonKey(name: 'withdrawal_state')
  final RevenueWithdrawalState? withdrawalState;

  /// Create a copy of TransactionPartner
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TransactionPartnerFragmentCopyWith<TransactionPartnerFragment>
      get copyWith =>
          _$TransactionPartnerFragmentCopyWithImpl<TransactionPartnerFragment>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TransactionPartnerFragmentToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'TransactionPartner.fragment(type: $type, withdrawalState: $withdrawalState)';
  }
}

/// @nodoc
abstract mixin class $TransactionPartnerFragmentCopyWith<$Res>
    implements $TransactionPartnerCopyWith<$Res> {
  factory $TransactionPartnerFragmentCopyWith(TransactionPartnerFragment value,
          $Res Function(TransactionPartnerFragment) _then) =
      _$TransactionPartnerFragmentCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') TransactionPartnerType type,
      @JsonKey(name: 'withdrawal_state')
      RevenueWithdrawalState? withdrawalState});

  $RevenueWithdrawalStateCopyWith<$Res>? get withdrawalState;
}

/// @nodoc
class _$TransactionPartnerFragmentCopyWithImpl<$Res>
    implements $TransactionPartnerFragmentCopyWith<$Res> {
  _$TransactionPartnerFragmentCopyWithImpl(this._self, this._then);

  final TransactionPartnerFragment _self;
  final $Res Function(TransactionPartnerFragment) _then;

  /// Create a copy of TransactionPartner
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? withdrawalState = freezed,
  }) {
    return _then(TransactionPartnerFragment(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as TransactionPartnerType,
      withdrawalState: freezed == withdrawalState
          ? _self.withdrawalState
          : withdrawalState // ignore: cast_nullable_to_non_nullable
              as RevenueWithdrawalState?,
    ));
  }

  /// Create a copy of TransactionPartner
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RevenueWithdrawalStateCopyWith<$Res>? get withdrawalState {
    if (_self.withdrawalState == null) {
      return null;
    }

    return $RevenueWithdrawalStateCopyWith<$Res>(_self.withdrawalState!,
        (value) {
      return _then(_self.copyWith(withdrawalState: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class TransactionPartnerUser implements TransactionPartner {
  const TransactionPartnerUser(
      {@JsonKey(name: 'type') this.type = TransactionPartnerType.user,
      @JsonKey(name: 'user') required this.user,
      @JsonKey(name: 'invoice_payload') this.invoicePayload,
      @JsonKey(name: 'paid_media') final List<PaidMedia>? paidMedia,
      @JsonKey(name: 'paid_media_payload') this.paidMediaPayload,
      @JsonKey(name: 'subscription_period') this.subscriptionPeriod,
      @JsonKey(name: 'gift') this.gift,
      @JsonKey(name: 'affiliate') this.affiliate})
      : assert(type == TransactionPartnerType.user,
            'type must be TransactionPartnerType.user'),
        _paidMedia = paidMedia;
  factory TransactionPartnerUser.fromJson(Map<String, dynamic> json) =>
      _$TransactionPartnerUserFromJson(json);

  /// Type of the transaction partner, must be "user"
  @override
  @JsonKey(name: 'type')
  final TransactionPartnerType type;

  /// Information about the user.
  @JsonKey(name: 'user')
  final User user;

  /// Bot-specified invoice payload.
  @JsonKey(name: 'invoice_payload')
  final String? invoicePayload;

  /// Optional. Information about the paid media bought by the user
  final List<PaidMedia>? _paidMedia;

  /// Optional. Information about the paid media bought by the user
  @JsonKey(name: 'paid_media')
  List<PaidMedia>? get paidMedia {
    final value = _paidMedia;
    if (value == null) return null;
    if (_paidMedia is EqualUnmodifiableListView) return _paidMedia;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Optional. Bot-specified paid media payload
  @JsonKey(name: 'paid_media_payload')
  final String? paidMediaPayload;

  /// Optional. The duration of the paid subscription.
  @JsonKey(name: 'subscription_period')
  final int? subscriptionPeriod;

  /// Optional. The gift sent to the user by the bot.
  @JsonKey(name: 'gift')
  final Gift? gift;

  /// Optional. Information about the affiliate that received a commission via
  /// this transaction
  @JsonKey(name: 'affiliate')
  final AffiliateInfo? affiliate;

  /// Create a copy of TransactionPartner
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TransactionPartnerUserCopyWith<TransactionPartnerUser> get copyWith =>
      _$TransactionPartnerUserCopyWithImpl<TransactionPartnerUser>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TransactionPartnerUserToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'TransactionPartner.user(type: $type, user: $user, invoicePayload: $invoicePayload, paidMedia: $paidMedia, paidMediaPayload: $paidMediaPayload, subscriptionPeriod: $subscriptionPeriod, gift: $gift, affiliate: $affiliate)';
  }
}

/// @nodoc
abstract mixin class $TransactionPartnerUserCopyWith<$Res>
    implements $TransactionPartnerCopyWith<$Res> {
  factory $TransactionPartnerUserCopyWith(TransactionPartnerUser value,
          $Res Function(TransactionPartnerUser) _then) =
      _$TransactionPartnerUserCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') TransactionPartnerType type,
      @JsonKey(name: 'user') User user,
      @JsonKey(name: 'invoice_payload') String? invoicePayload,
      @JsonKey(name: 'paid_media') List<PaidMedia>? paidMedia,
      @JsonKey(name: 'paid_media_payload') String? paidMediaPayload,
      @JsonKey(name: 'subscription_period') int? subscriptionPeriod,
      @JsonKey(name: 'gift') Gift? gift,
      @JsonKey(name: 'affiliate') AffiliateInfo? affiliate});

  $UserCopyWith<$Res> get user;
  $GiftCopyWith<$Res>? get gift;
  $AffiliateInfoCopyWith<$Res>? get affiliate;
}

/// @nodoc
class _$TransactionPartnerUserCopyWithImpl<$Res>
    implements $TransactionPartnerUserCopyWith<$Res> {
  _$TransactionPartnerUserCopyWithImpl(this._self, this._then);

  final TransactionPartnerUser _self;
  final $Res Function(TransactionPartnerUser) _then;

  /// Create a copy of TransactionPartner
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? user = null,
    Object? invoicePayload = freezed,
    Object? paidMedia = freezed,
    Object? paidMediaPayload = freezed,
    Object? subscriptionPeriod = freezed,
    Object? gift = freezed,
    Object? affiliate = freezed,
  }) {
    return _then(TransactionPartnerUser(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as TransactionPartnerType,
      user: null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      invoicePayload: freezed == invoicePayload
          ? _self.invoicePayload
          : invoicePayload // ignore: cast_nullable_to_non_nullable
              as String?,
      paidMedia: freezed == paidMedia
          ? _self._paidMedia
          : paidMedia // ignore: cast_nullable_to_non_nullable
              as List<PaidMedia>?,
      paidMediaPayload: freezed == paidMediaPayload
          ? _self.paidMediaPayload
          : paidMediaPayload // ignore: cast_nullable_to_non_nullable
              as String?,
      subscriptionPeriod: freezed == subscriptionPeriod
          ? _self.subscriptionPeriod
          : subscriptionPeriod // ignore: cast_nullable_to_non_nullable
              as int?,
      gift: freezed == gift
          ? _self.gift
          : gift // ignore: cast_nullable_to_non_nullable
              as Gift?,
      affiliate: freezed == affiliate
          ? _self.affiliate
          : affiliate // ignore: cast_nullable_to_non_nullable
              as AffiliateInfo?,
    ));
  }

  /// Create a copy of TransactionPartner
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }

  /// Create a copy of TransactionPartner
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GiftCopyWith<$Res>? get gift {
    if (_self.gift == null) {
      return null;
    }

    return $GiftCopyWith<$Res>(_self.gift!, (value) {
      return _then(_self.copyWith(gift: value));
    });
  }

  /// Create a copy of TransactionPartner
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AffiliateInfoCopyWith<$Res>? get affiliate {
    if (_self.affiliate == null) {
      return null;
    }

    return $AffiliateInfoCopyWith<$Res>(_self.affiliate!, (value) {
      return _then(_self.copyWith(affiliate: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class TransactionPartnerTelegramAds implements TransactionPartner {
  const TransactionPartnerTelegramAds(
      {@JsonKey(name: 'type') this.type = TransactionPartnerType.telegramAds})
      : assert(type == TransactionPartnerType.telegramAds,
            'type must be TransactionPartnerType.telegramAds');
  factory TransactionPartnerTelegramAds.fromJson(Map<String, dynamic> json) =>
      _$TransactionPartnerTelegramAdsFromJson(json);

  /// Type of the transaction partner, must be "telegram_ads"
  @override
  @JsonKey(name: 'type')
  final TransactionPartnerType type;

  /// Create a copy of TransactionPartner
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TransactionPartnerTelegramAdsCopyWith<TransactionPartnerTelegramAds>
      get copyWith => _$TransactionPartnerTelegramAdsCopyWithImpl<
          TransactionPartnerTelegramAds>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TransactionPartnerTelegramAdsToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'TransactionPartner.telegramAds(type: $type)';
  }
}

/// @nodoc
abstract mixin class $TransactionPartnerTelegramAdsCopyWith<$Res>
    implements $TransactionPartnerCopyWith<$Res> {
  factory $TransactionPartnerTelegramAdsCopyWith(
          TransactionPartnerTelegramAds value,
          $Res Function(TransactionPartnerTelegramAds) _then) =
      _$TransactionPartnerTelegramAdsCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'type') TransactionPartnerType type});
}

/// @nodoc
class _$TransactionPartnerTelegramAdsCopyWithImpl<$Res>
    implements $TransactionPartnerTelegramAdsCopyWith<$Res> {
  _$TransactionPartnerTelegramAdsCopyWithImpl(this._self, this._then);

  final TransactionPartnerTelegramAds _self;
  final $Res Function(TransactionPartnerTelegramAds) _then;

  /// Create a copy of TransactionPartner
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
  }) {
    return _then(TransactionPartnerTelegramAds(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as TransactionPartnerType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class TransactionPartnerTelegramApi implements TransactionPartner {
  const TransactionPartnerTelegramApi(
      {@JsonKey(name: 'type') this.type = TransactionPartnerType.telegramApi,
      @JsonKey(name: 'request_count') this.requestCount})
      : assert(type == TransactionPartnerType.telegramApi,
            'type must be TransactionPartnerType.telegramApi');
  factory TransactionPartnerTelegramApi.fromJson(Map<String, dynamic> json) =>
      _$TransactionPartnerTelegramApiFromJson(json);

  /// Type of the transaction partner, must be "telegram_api"
  @override
  @JsonKey(name: 'type')
  final TransactionPartnerType type;

  /// The number of successful requests that exceeded regular limits and were
  /// therefore billed.
  @JsonKey(name: 'request_count')
  final int? requestCount;

  /// Create a copy of TransactionPartner
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TransactionPartnerTelegramApiCopyWith<TransactionPartnerTelegramApi>
      get copyWith => _$TransactionPartnerTelegramApiCopyWithImpl<
          TransactionPartnerTelegramApi>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TransactionPartnerTelegramApiToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'TransactionPartner.telegramApi(type: $type, requestCount: $requestCount)';
  }
}

/// @nodoc
abstract mixin class $TransactionPartnerTelegramApiCopyWith<$Res>
    implements $TransactionPartnerCopyWith<$Res> {
  factory $TransactionPartnerTelegramApiCopyWith(
          TransactionPartnerTelegramApi value,
          $Res Function(TransactionPartnerTelegramApi) _then) =
      _$TransactionPartnerTelegramApiCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') TransactionPartnerType type,
      @JsonKey(name: 'request_count') int? requestCount});
}

/// @nodoc
class _$TransactionPartnerTelegramApiCopyWithImpl<$Res>
    implements $TransactionPartnerTelegramApiCopyWith<$Res> {
  _$TransactionPartnerTelegramApiCopyWithImpl(this._self, this._then);

  final TransactionPartnerTelegramApi _self;
  final $Res Function(TransactionPartnerTelegramApi) _then;

  /// Create a copy of TransactionPartner
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? requestCount = freezed,
  }) {
    return _then(TransactionPartnerTelegramApi(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as TransactionPartnerType,
      requestCount: freezed == requestCount
          ? _self.requestCount
          : requestCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class TransactionPartnerOther implements TransactionPartner {
  const TransactionPartnerOther(
      {@JsonKey(name: 'type') this.type = TransactionPartnerType.other})
      : assert(type == TransactionPartnerType.other,
            'type must be TransactionPartnerType.other');
  factory TransactionPartnerOther.fromJson(Map<String, dynamic> json) =>
      _$TransactionPartnerOtherFromJson(json);

  /// Type of the transaction partner, must be "other"
  @override
  @JsonKey(name: 'type')
  final TransactionPartnerType type;

  /// Create a copy of TransactionPartner
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TransactionPartnerOtherCopyWith<TransactionPartnerOther> get copyWith =>
      _$TransactionPartnerOtherCopyWithImpl<TransactionPartnerOther>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TransactionPartnerOtherToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'TransactionPartner.other(type: $type)';
  }
}

/// @nodoc
abstract mixin class $TransactionPartnerOtherCopyWith<$Res>
    implements $TransactionPartnerCopyWith<$Res> {
  factory $TransactionPartnerOtherCopyWith(TransactionPartnerOther value,
          $Res Function(TransactionPartnerOther) _then) =
      _$TransactionPartnerOtherCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'type') TransactionPartnerType type});
}

/// @nodoc
class _$TransactionPartnerOtherCopyWithImpl<$Res>
    implements $TransactionPartnerOtherCopyWith<$Res> {
  _$TransactionPartnerOtherCopyWithImpl(this._self, this._then);

  final TransactionPartnerOther _self;
  final $Res Function(TransactionPartnerOther) _then;

  /// Create a copy of TransactionPartner
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
  }) {
    return _then(TransactionPartnerOther(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as TransactionPartnerType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class TransactionPartnerAffiliateProgram implements TransactionPartner {
  const TransactionPartnerAffiliateProgram(
      {@JsonKey(name: 'type')
      this.type = TransactionPartnerType.affiliateProgram,
      @JsonKey(name: 'sponsor_user') this.sponsorUser,
      @JsonKey(name: 'commission_per_mille') required this.commissionPerMille})
      : assert(type == TransactionPartnerType.affiliateProgram,
            'type must be TransactionPartnerType.affiliateProgram');
  factory TransactionPartnerAffiliateProgram.fromJson(
          Map<String, dynamic> json) =>
      _$TransactionPartnerAffiliateProgramFromJson(json);

  /// Type of the transaction partner, must be "affiliate_program"
  @override
  @JsonKey(name: 'type')
  final TransactionPartnerType type;

  /// Information about the bot that sponsored the affiliate program.
  @JsonKey(name: 'sponsor_user')
  final User? sponsorUser;

  /// The number of Telegram Stars received by the bot for each 1000 Telegram
  /// Stars received by the affiliate program sponsor from referred users.
  @JsonKey(name: 'commission_per_mille')
  final int commissionPerMille;

  /// Create a copy of TransactionPartner
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TransactionPartnerAffiliateProgramCopyWith<
          TransactionPartnerAffiliateProgram>
      get copyWith => _$TransactionPartnerAffiliateProgramCopyWithImpl<
          TransactionPartnerAffiliateProgram>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TransactionPartnerAffiliateProgramToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'TransactionPartner.affiliateProgram(type: $type, sponsorUser: $sponsorUser, commissionPerMille: $commissionPerMille)';
  }
}

/// @nodoc
abstract mixin class $TransactionPartnerAffiliateProgramCopyWith<$Res>
    implements $TransactionPartnerCopyWith<$Res> {
  factory $TransactionPartnerAffiliateProgramCopyWith(
          TransactionPartnerAffiliateProgram value,
          $Res Function(TransactionPartnerAffiliateProgram) _then) =
      _$TransactionPartnerAffiliateProgramCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') TransactionPartnerType type,
      @JsonKey(name: 'sponsor_user') User? sponsorUser,
      @JsonKey(name: 'commission_per_mille') int commissionPerMille});

  $UserCopyWith<$Res>? get sponsorUser;
}

/// @nodoc
class _$TransactionPartnerAffiliateProgramCopyWithImpl<$Res>
    implements $TransactionPartnerAffiliateProgramCopyWith<$Res> {
  _$TransactionPartnerAffiliateProgramCopyWithImpl(this._self, this._then);

  final TransactionPartnerAffiliateProgram _self;
  final $Res Function(TransactionPartnerAffiliateProgram) _then;

  /// Create a copy of TransactionPartner
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? sponsorUser = freezed,
    Object? commissionPerMille = null,
  }) {
    return _then(TransactionPartnerAffiliateProgram(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as TransactionPartnerType,
      sponsorUser: freezed == sponsorUser
          ? _self.sponsorUser
          : sponsorUser // ignore: cast_nullable_to_non_nullable
              as User?,
      commissionPerMille: null == commissionPerMille
          ? _self.commissionPerMille
          : commissionPerMille // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of TransactionPartner
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get sponsorUser {
    if (_self.sponsorUser == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_self.sponsorUser!, (value) {
      return _then(_self.copyWith(sponsorUser: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class TransactionPartnerChat implements TransactionPartner {
  const TransactionPartnerChat(
      {@JsonKey(name: 'type') this.type = TransactionPartnerType.chat,
      @JsonKey(name: 'chat') required this.chat,
      @JsonKey(name: 'gift') this.gift})
      : assert(type == TransactionPartnerType.chat,
            'type must be TransactionPartnerType.chat');
  factory TransactionPartnerChat.fromJson(Map<String, dynamic> json) =>
      _$TransactionPartnerChatFromJson(json);

  /// Type of the transaction partner, must be "chat"
  @override
  @JsonKey(name: 'type')
  final TransactionPartnerType type;

  /// Information about the chat.
  @JsonKey(name: 'chat')
  final Chat chat;

  /// The gift sent to the chat by the bot.
  @JsonKey(name: 'gift')
  final Gift? gift;

  /// Create a copy of TransactionPartner
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TransactionPartnerChatCopyWith<TransactionPartnerChat> get copyWith =>
      _$TransactionPartnerChatCopyWithImpl<TransactionPartnerChat>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TransactionPartnerChatToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'TransactionPartner.chat(type: $type, chat: $chat, gift: $gift)';
  }
}

/// @nodoc
abstract mixin class $TransactionPartnerChatCopyWith<$Res>
    implements $TransactionPartnerCopyWith<$Res> {
  factory $TransactionPartnerChatCopyWith(TransactionPartnerChat value,
          $Res Function(TransactionPartnerChat) _then) =
      _$TransactionPartnerChatCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') TransactionPartnerType type,
      @JsonKey(name: 'chat') Chat chat,
      @JsonKey(name: 'gift') Gift? gift});

  $ChatCopyWith<$Res> get chat;
  $GiftCopyWith<$Res>? get gift;
}

/// @nodoc
class _$TransactionPartnerChatCopyWithImpl<$Res>
    implements $TransactionPartnerChatCopyWith<$Res> {
  _$TransactionPartnerChatCopyWithImpl(this._self, this._then);

  final TransactionPartnerChat _self;
  final $Res Function(TransactionPartnerChat) _then;

  /// Create a copy of TransactionPartner
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? chat = null,
    Object? gift = freezed,
  }) {
    return _then(TransactionPartnerChat(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as TransactionPartnerType,
      chat: null == chat
          ? _self.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as Chat,
      gift: freezed == gift
          ? _self.gift
          : gift // ignore: cast_nullable_to_non_nullable
              as Gift?,
    ));
  }

  /// Create a copy of TransactionPartner
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatCopyWith<$Res> get chat {
    return $ChatCopyWith<$Res>(_self.chat, (value) {
      return _then(_self.copyWith(chat: value));
    });
  }

  /// Create a copy of TransactionPartner
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GiftCopyWith<$Res>? get gift {
    if (_self.gift == null) {
      return null;
    }

    return $GiftCopyWith<$Res>(_self.gift!, (value) {
      return _then(_self.copyWith(gift: value));
    });
  }
}
