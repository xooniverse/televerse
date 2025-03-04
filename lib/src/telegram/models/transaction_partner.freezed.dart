// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_partner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
  TransactionPartnerType get type => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionPartnerFragment value) fragment,
    required TResult Function(TransactionPartnerUser value) user,
    required TResult Function(TransactionPartnerTelegramAds value) telegramAds,
    required TResult Function(TransactionPartnerTelegramApi value) telegramApi,
    required TResult Function(TransactionPartnerOther value) other,
    required TResult Function(TransactionPartnerAffiliateProgram value)
        affiliateProgram,
    required TResult Function(TransactionPartnerChat value) chat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionPartnerFragment value)? fragment,
    TResult? Function(TransactionPartnerUser value)? user,
    TResult? Function(TransactionPartnerTelegramAds value)? telegramAds,
    TResult? Function(TransactionPartnerTelegramApi value)? telegramApi,
    TResult? Function(TransactionPartnerOther value)? other,
    TResult? Function(TransactionPartnerAffiliateProgram value)?
        affiliateProgram,
    TResult? Function(TransactionPartnerChat value)? chat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionPartnerFragment value)? fragment,
    TResult Function(TransactionPartnerUser value)? user,
    TResult Function(TransactionPartnerTelegramAds value)? telegramAds,
    TResult Function(TransactionPartnerTelegramApi value)? telegramApi,
    TResult Function(TransactionPartnerOther value)? other,
    TResult Function(TransactionPartnerAffiliateProgram value)?
        affiliateProgram,
    TResult Function(TransactionPartnerChat value)? chat,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this TransactionPartner to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TransactionPartner
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransactionPartnerCopyWith<TransactionPartner> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionPartnerCopyWith<$Res> {
  factory $TransactionPartnerCopyWith(
          TransactionPartner value, $Res Function(TransactionPartner) then) =
      _$TransactionPartnerCopyWithImpl<$Res, TransactionPartner>;
  @useResult
  $Res call({@JsonKey(name: 'type') TransactionPartnerType type});
}

/// @nodoc
class _$TransactionPartnerCopyWithImpl<$Res, $Val extends TransactionPartner>
    implements $TransactionPartnerCopyWith<$Res> {
  _$TransactionPartnerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionPartner
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TransactionPartnerType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionPartnerFragmentImplCopyWith<$Res>
    implements $TransactionPartnerCopyWith<$Res> {
  factory _$$TransactionPartnerFragmentImplCopyWith(
          _$TransactionPartnerFragmentImpl value,
          $Res Function(_$TransactionPartnerFragmentImpl) then) =
      __$$TransactionPartnerFragmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') TransactionPartnerType type,
      @JsonKey(name: 'withdrawal_state')
      RevenueWithdrawalState? withdrawalState});

  $RevenueWithdrawalStateCopyWith<$Res>? get withdrawalState;
}

/// @nodoc
class __$$TransactionPartnerFragmentImplCopyWithImpl<$Res>
    extends _$TransactionPartnerCopyWithImpl<$Res,
        _$TransactionPartnerFragmentImpl>
    implements _$$TransactionPartnerFragmentImplCopyWith<$Res> {
  __$$TransactionPartnerFragmentImplCopyWithImpl(
      _$TransactionPartnerFragmentImpl _value,
      $Res Function(_$TransactionPartnerFragmentImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionPartner
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? withdrawalState = freezed,
  }) {
    return _then(_$TransactionPartnerFragmentImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TransactionPartnerType,
      withdrawalState: freezed == withdrawalState
          ? _value.withdrawalState
          : withdrawalState // ignore: cast_nullable_to_non_nullable
              as RevenueWithdrawalState?,
    ));
  }

  /// Create a copy of TransactionPartner
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RevenueWithdrawalStateCopyWith<$Res>? get withdrawalState {
    if (_value.withdrawalState == null) {
      return null;
    }

    return $RevenueWithdrawalStateCopyWith<$Res>(_value.withdrawalState!,
        (value) {
      return _then(_value.copyWith(withdrawalState: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionPartnerFragmentImpl implements TransactionPartnerFragment {
  const _$TransactionPartnerFragmentImpl(
      {@JsonKey(name: 'type') this.type = TransactionPartnerType.fragment,
      @JsonKey(name: 'withdrawal_state') this.withdrawalState})
      : assert(type == TransactionPartnerType.fragment,
            'type must be TransactionPartnerType.fragment');

  factory _$TransactionPartnerFragmentImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TransactionPartnerFragmentImplFromJson(json);

  /// Type of the transaction partner, must be "fragment"
  @override
  @JsonKey(name: 'type')
  final TransactionPartnerType type;

  /// State of the transaction if the transaction is outgoing.
  @override
  @JsonKey(name: 'withdrawal_state')
  final RevenueWithdrawalState? withdrawalState;

  @override
  String toString() {
    return 'TransactionPartner.fragment(type: $type, withdrawalState: $withdrawalState)';
  }

  /// Create a copy of TransactionPartner
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionPartnerFragmentImplCopyWith<_$TransactionPartnerFragmentImpl>
      get copyWith => __$$TransactionPartnerFragmentImplCopyWithImpl<
          _$TransactionPartnerFragmentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionPartnerFragment value) fragment,
    required TResult Function(TransactionPartnerUser value) user,
    required TResult Function(TransactionPartnerTelegramAds value) telegramAds,
    required TResult Function(TransactionPartnerTelegramApi value) telegramApi,
    required TResult Function(TransactionPartnerOther value) other,
    required TResult Function(TransactionPartnerAffiliateProgram value)
        affiliateProgram,
    required TResult Function(TransactionPartnerChat value) chat,
  }) {
    return fragment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionPartnerFragment value)? fragment,
    TResult? Function(TransactionPartnerUser value)? user,
    TResult? Function(TransactionPartnerTelegramAds value)? telegramAds,
    TResult? Function(TransactionPartnerTelegramApi value)? telegramApi,
    TResult? Function(TransactionPartnerOther value)? other,
    TResult? Function(TransactionPartnerAffiliateProgram value)?
        affiliateProgram,
    TResult? Function(TransactionPartnerChat value)? chat,
  }) {
    return fragment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionPartnerFragment value)? fragment,
    TResult Function(TransactionPartnerUser value)? user,
    TResult Function(TransactionPartnerTelegramAds value)? telegramAds,
    TResult Function(TransactionPartnerTelegramApi value)? telegramApi,
    TResult Function(TransactionPartnerOther value)? other,
    TResult Function(TransactionPartnerAffiliateProgram value)?
        affiliateProgram,
    TResult Function(TransactionPartnerChat value)? chat,
    required TResult orElse(),
  }) {
    if (fragment != null) {
      return fragment(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionPartnerFragmentImplToJson(
      this,
    );
  }
}

abstract class TransactionPartnerFragment implements TransactionPartner {
  const factory TransactionPartnerFragment(
          {@JsonKey(name: 'type') final TransactionPartnerType type,
          @JsonKey(name: 'withdrawal_state')
          final RevenueWithdrawalState? withdrawalState}) =
      _$TransactionPartnerFragmentImpl;

  factory TransactionPartnerFragment.fromJson(Map<String, dynamic> json) =
      _$TransactionPartnerFragmentImpl.fromJson;

  /// Type of the transaction partner, must be "fragment"
  @override
  @JsonKey(name: 'type')
  TransactionPartnerType get type;

  /// State of the transaction if the transaction is outgoing.
  @JsonKey(name: 'withdrawal_state')
  RevenueWithdrawalState? get withdrawalState;

  /// Create a copy of TransactionPartner
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionPartnerFragmentImplCopyWith<_$TransactionPartnerFragmentImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TransactionPartnerUserImplCopyWith<$Res>
    implements $TransactionPartnerCopyWith<$Res> {
  factory _$$TransactionPartnerUserImplCopyWith(
          _$TransactionPartnerUserImpl value,
          $Res Function(_$TransactionPartnerUserImpl) then) =
      __$$TransactionPartnerUserImplCopyWithImpl<$Res>;
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
class __$$TransactionPartnerUserImplCopyWithImpl<$Res>
    extends _$TransactionPartnerCopyWithImpl<$Res, _$TransactionPartnerUserImpl>
    implements _$$TransactionPartnerUserImplCopyWith<$Res> {
  __$$TransactionPartnerUserImplCopyWithImpl(
      _$TransactionPartnerUserImpl _value,
      $Res Function(_$TransactionPartnerUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionPartner
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
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
    return _then(_$TransactionPartnerUserImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TransactionPartnerType,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      invoicePayload: freezed == invoicePayload
          ? _value.invoicePayload
          : invoicePayload // ignore: cast_nullable_to_non_nullable
              as String?,
      paidMedia: freezed == paidMedia
          ? _value._paidMedia
          : paidMedia // ignore: cast_nullable_to_non_nullable
              as List<PaidMedia>?,
      paidMediaPayload: freezed == paidMediaPayload
          ? _value.paidMediaPayload
          : paidMediaPayload // ignore: cast_nullable_to_non_nullable
              as String?,
      subscriptionPeriod: freezed == subscriptionPeriod
          ? _value.subscriptionPeriod
          : subscriptionPeriod // ignore: cast_nullable_to_non_nullable
              as int?,
      gift: freezed == gift
          ? _value.gift
          : gift // ignore: cast_nullable_to_non_nullable
              as Gift?,
      affiliate: freezed == affiliate
          ? _value.affiliate
          : affiliate // ignore: cast_nullable_to_non_nullable
              as AffiliateInfo?,
    ));
  }

  /// Create a copy of TransactionPartner
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }

  /// Create a copy of TransactionPartner
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GiftCopyWith<$Res>? get gift {
    if (_value.gift == null) {
      return null;
    }

    return $GiftCopyWith<$Res>(_value.gift!, (value) {
      return _then(_value.copyWith(gift: value));
    });
  }

  /// Create a copy of TransactionPartner
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AffiliateInfoCopyWith<$Res>? get affiliate {
    if (_value.affiliate == null) {
      return null;
    }

    return $AffiliateInfoCopyWith<$Res>(_value.affiliate!, (value) {
      return _then(_value.copyWith(affiliate: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionPartnerUserImpl implements TransactionPartnerUser {
  const _$TransactionPartnerUserImpl(
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

  factory _$TransactionPartnerUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionPartnerUserImplFromJson(json);

  /// Type of the transaction partner, must be "user"
  @override
  @JsonKey(name: 'type')
  final TransactionPartnerType type;

  /// Information about the user.
  @override
  @JsonKey(name: 'user')
  final User user;

  /// Bot-specified invoice payload.
  @override
  @JsonKey(name: 'invoice_payload')
  final String? invoicePayload;

  /// Optional. Information about the paid media bought by the user
  final List<PaidMedia>? _paidMedia;

  /// Optional. Information about the paid media bought by the user
  @override
  @JsonKey(name: 'paid_media')
  List<PaidMedia>? get paidMedia {
    final value = _paidMedia;
    if (value == null) return null;
    if (_paidMedia is EqualUnmodifiableListView) return _paidMedia;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Optional. Bot-specified paid media payload
  @override
  @JsonKey(name: 'paid_media_payload')
  final String? paidMediaPayload;

  /// Optional. The duration of the paid subscription.
  @override
  @JsonKey(name: 'subscription_period')
  final int? subscriptionPeriod;

  /// Optional. The gift sent to the user by the bot.
  @override
  @JsonKey(name: 'gift')
  final Gift? gift;

  /// Optional. Information about the affiliate that received a commission via
  /// this transaction
  @override
  @JsonKey(name: 'affiliate')
  final AffiliateInfo? affiliate;

  @override
  String toString() {
    return 'TransactionPartner.user(type: $type, user: $user, invoicePayload: $invoicePayload, paidMedia: $paidMedia, paidMediaPayload: $paidMediaPayload, subscriptionPeriod: $subscriptionPeriod, gift: $gift, affiliate: $affiliate)';
  }

  /// Create a copy of TransactionPartner
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionPartnerUserImplCopyWith<_$TransactionPartnerUserImpl>
      get copyWith => __$$TransactionPartnerUserImplCopyWithImpl<
          _$TransactionPartnerUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionPartnerFragment value) fragment,
    required TResult Function(TransactionPartnerUser value) user,
    required TResult Function(TransactionPartnerTelegramAds value) telegramAds,
    required TResult Function(TransactionPartnerTelegramApi value) telegramApi,
    required TResult Function(TransactionPartnerOther value) other,
    required TResult Function(TransactionPartnerAffiliateProgram value)
        affiliateProgram,
    required TResult Function(TransactionPartnerChat value) chat,
  }) {
    return user(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionPartnerFragment value)? fragment,
    TResult? Function(TransactionPartnerUser value)? user,
    TResult? Function(TransactionPartnerTelegramAds value)? telegramAds,
    TResult? Function(TransactionPartnerTelegramApi value)? telegramApi,
    TResult? Function(TransactionPartnerOther value)? other,
    TResult? Function(TransactionPartnerAffiliateProgram value)?
        affiliateProgram,
    TResult? Function(TransactionPartnerChat value)? chat,
  }) {
    return user?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionPartnerFragment value)? fragment,
    TResult Function(TransactionPartnerUser value)? user,
    TResult Function(TransactionPartnerTelegramAds value)? telegramAds,
    TResult Function(TransactionPartnerTelegramApi value)? telegramApi,
    TResult Function(TransactionPartnerOther value)? other,
    TResult Function(TransactionPartnerAffiliateProgram value)?
        affiliateProgram,
    TResult Function(TransactionPartnerChat value)? chat,
    required TResult orElse(),
  }) {
    if (user != null) {
      return user(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionPartnerUserImplToJson(
      this,
    );
  }
}

abstract class TransactionPartnerUser implements TransactionPartner {
  const factory TransactionPartnerUser(
          {@JsonKey(name: 'type') final TransactionPartnerType type,
          @JsonKey(name: 'user') required final User user,
          @JsonKey(name: 'invoice_payload') final String? invoicePayload,
          @JsonKey(name: 'paid_media') final List<PaidMedia>? paidMedia,
          @JsonKey(name: 'paid_media_payload') final String? paidMediaPayload,
          @JsonKey(name: 'subscription_period') final int? subscriptionPeriod,
          @JsonKey(name: 'gift') final Gift? gift,
          @JsonKey(name: 'affiliate') final AffiliateInfo? affiliate}) =
      _$TransactionPartnerUserImpl;

  factory TransactionPartnerUser.fromJson(Map<String, dynamic> json) =
      _$TransactionPartnerUserImpl.fromJson;

  /// Type of the transaction partner, must be "user"
  @override
  @JsonKey(name: 'type')
  TransactionPartnerType get type;

  /// Information about the user.
  @JsonKey(name: 'user')
  User get user;

  /// Bot-specified invoice payload.
  @JsonKey(name: 'invoice_payload')
  String? get invoicePayload;

  /// Optional. Information about the paid media bought by the user
  @JsonKey(name: 'paid_media')
  List<PaidMedia>? get paidMedia;

  /// Optional. Bot-specified paid media payload
  @JsonKey(name: 'paid_media_payload')
  String? get paidMediaPayload;

  /// Optional. The duration of the paid subscription.
  @JsonKey(name: 'subscription_period')
  int? get subscriptionPeriod;

  /// Optional. The gift sent to the user by the bot.
  @JsonKey(name: 'gift')
  Gift? get gift;

  /// Optional. Information about the affiliate that received a commission via
  /// this transaction
  @JsonKey(name: 'affiliate')
  AffiliateInfo? get affiliate;

  /// Create a copy of TransactionPartner
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionPartnerUserImplCopyWith<_$TransactionPartnerUserImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TransactionPartnerTelegramAdsImplCopyWith<$Res>
    implements $TransactionPartnerCopyWith<$Res> {
  factory _$$TransactionPartnerTelegramAdsImplCopyWith(
          _$TransactionPartnerTelegramAdsImpl value,
          $Res Function(_$TransactionPartnerTelegramAdsImpl) then) =
      __$$TransactionPartnerTelegramAdsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'type') TransactionPartnerType type});
}

/// @nodoc
class __$$TransactionPartnerTelegramAdsImplCopyWithImpl<$Res>
    extends _$TransactionPartnerCopyWithImpl<$Res,
        _$TransactionPartnerTelegramAdsImpl>
    implements _$$TransactionPartnerTelegramAdsImplCopyWith<$Res> {
  __$$TransactionPartnerTelegramAdsImplCopyWithImpl(
      _$TransactionPartnerTelegramAdsImpl _value,
      $Res Function(_$TransactionPartnerTelegramAdsImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionPartner
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$TransactionPartnerTelegramAdsImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TransactionPartnerType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionPartnerTelegramAdsImpl
    implements TransactionPartnerTelegramAds {
  const _$TransactionPartnerTelegramAdsImpl(
      {@JsonKey(name: 'type') this.type = TransactionPartnerType.telegramAds})
      : assert(type == TransactionPartnerType.telegramAds,
            'type must be TransactionPartnerType.telegramAds');

  factory _$TransactionPartnerTelegramAdsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TransactionPartnerTelegramAdsImplFromJson(json);

  /// Type of the transaction partner, must be "telegram_ads"
  @override
  @JsonKey(name: 'type')
  final TransactionPartnerType type;

  @override
  String toString() {
    return 'TransactionPartner.telegramAds(type: $type)';
  }

  /// Create a copy of TransactionPartner
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionPartnerTelegramAdsImplCopyWith<
          _$TransactionPartnerTelegramAdsImpl>
      get copyWith => __$$TransactionPartnerTelegramAdsImplCopyWithImpl<
          _$TransactionPartnerTelegramAdsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionPartnerFragment value) fragment,
    required TResult Function(TransactionPartnerUser value) user,
    required TResult Function(TransactionPartnerTelegramAds value) telegramAds,
    required TResult Function(TransactionPartnerTelegramApi value) telegramApi,
    required TResult Function(TransactionPartnerOther value) other,
    required TResult Function(TransactionPartnerAffiliateProgram value)
        affiliateProgram,
    required TResult Function(TransactionPartnerChat value) chat,
  }) {
    return telegramAds(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionPartnerFragment value)? fragment,
    TResult? Function(TransactionPartnerUser value)? user,
    TResult? Function(TransactionPartnerTelegramAds value)? telegramAds,
    TResult? Function(TransactionPartnerTelegramApi value)? telegramApi,
    TResult? Function(TransactionPartnerOther value)? other,
    TResult? Function(TransactionPartnerAffiliateProgram value)?
        affiliateProgram,
    TResult? Function(TransactionPartnerChat value)? chat,
  }) {
    return telegramAds?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionPartnerFragment value)? fragment,
    TResult Function(TransactionPartnerUser value)? user,
    TResult Function(TransactionPartnerTelegramAds value)? telegramAds,
    TResult Function(TransactionPartnerTelegramApi value)? telegramApi,
    TResult Function(TransactionPartnerOther value)? other,
    TResult Function(TransactionPartnerAffiliateProgram value)?
        affiliateProgram,
    TResult Function(TransactionPartnerChat value)? chat,
    required TResult orElse(),
  }) {
    if (telegramAds != null) {
      return telegramAds(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionPartnerTelegramAdsImplToJson(
      this,
    );
  }
}

abstract class TransactionPartnerTelegramAds implements TransactionPartner {
  const factory TransactionPartnerTelegramAds(
          {@JsonKey(name: 'type') final TransactionPartnerType type}) =
      _$TransactionPartnerTelegramAdsImpl;

  factory TransactionPartnerTelegramAds.fromJson(Map<String, dynamic> json) =
      _$TransactionPartnerTelegramAdsImpl.fromJson;

  /// Type of the transaction partner, must be "telegram_ads"
  @override
  @JsonKey(name: 'type')
  TransactionPartnerType get type;

  /// Create a copy of TransactionPartner
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionPartnerTelegramAdsImplCopyWith<
          _$TransactionPartnerTelegramAdsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TransactionPartnerTelegramApiImplCopyWith<$Res>
    implements $TransactionPartnerCopyWith<$Res> {
  factory _$$TransactionPartnerTelegramApiImplCopyWith(
          _$TransactionPartnerTelegramApiImpl value,
          $Res Function(_$TransactionPartnerTelegramApiImpl) then) =
      __$$TransactionPartnerTelegramApiImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') TransactionPartnerType type,
      @JsonKey(name: 'request_count') int? requestCount});
}

/// @nodoc
class __$$TransactionPartnerTelegramApiImplCopyWithImpl<$Res>
    extends _$TransactionPartnerCopyWithImpl<$Res,
        _$TransactionPartnerTelegramApiImpl>
    implements _$$TransactionPartnerTelegramApiImplCopyWith<$Res> {
  __$$TransactionPartnerTelegramApiImplCopyWithImpl(
      _$TransactionPartnerTelegramApiImpl _value,
      $Res Function(_$TransactionPartnerTelegramApiImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionPartner
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? requestCount = freezed,
  }) {
    return _then(_$TransactionPartnerTelegramApiImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TransactionPartnerType,
      requestCount: freezed == requestCount
          ? _value.requestCount
          : requestCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionPartnerTelegramApiImpl
    implements TransactionPartnerTelegramApi {
  const _$TransactionPartnerTelegramApiImpl(
      {@JsonKey(name: 'type') this.type = TransactionPartnerType.telegramApi,
      @JsonKey(name: 'request_count') this.requestCount})
      : assert(type == TransactionPartnerType.telegramApi,
            'type must be TransactionPartnerType.telegramApi');

  factory _$TransactionPartnerTelegramApiImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TransactionPartnerTelegramApiImplFromJson(json);

  /// Type of the transaction partner, must be "telegram_api"
  @override
  @JsonKey(name: 'type')
  final TransactionPartnerType type;

  /// The number of successful requests that exceeded regular limits and were
  /// therefore billed.
  @override
  @JsonKey(name: 'request_count')
  final int? requestCount;

  @override
  String toString() {
    return 'TransactionPartner.telegramApi(type: $type, requestCount: $requestCount)';
  }

  /// Create a copy of TransactionPartner
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionPartnerTelegramApiImplCopyWith<
          _$TransactionPartnerTelegramApiImpl>
      get copyWith => __$$TransactionPartnerTelegramApiImplCopyWithImpl<
          _$TransactionPartnerTelegramApiImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionPartnerFragment value) fragment,
    required TResult Function(TransactionPartnerUser value) user,
    required TResult Function(TransactionPartnerTelegramAds value) telegramAds,
    required TResult Function(TransactionPartnerTelegramApi value) telegramApi,
    required TResult Function(TransactionPartnerOther value) other,
    required TResult Function(TransactionPartnerAffiliateProgram value)
        affiliateProgram,
    required TResult Function(TransactionPartnerChat value) chat,
  }) {
    return telegramApi(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionPartnerFragment value)? fragment,
    TResult? Function(TransactionPartnerUser value)? user,
    TResult? Function(TransactionPartnerTelegramAds value)? telegramAds,
    TResult? Function(TransactionPartnerTelegramApi value)? telegramApi,
    TResult? Function(TransactionPartnerOther value)? other,
    TResult? Function(TransactionPartnerAffiliateProgram value)?
        affiliateProgram,
    TResult? Function(TransactionPartnerChat value)? chat,
  }) {
    return telegramApi?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionPartnerFragment value)? fragment,
    TResult Function(TransactionPartnerUser value)? user,
    TResult Function(TransactionPartnerTelegramAds value)? telegramAds,
    TResult Function(TransactionPartnerTelegramApi value)? telegramApi,
    TResult Function(TransactionPartnerOther value)? other,
    TResult Function(TransactionPartnerAffiliateProgram value)?
        affiliateProgram,
    TResult Function(TransactionPartnerChat value)? chat,
    required TResult orElse(),
  }) {
    if (telegramApi != null) {
      return telegramApi(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionPartnerTelegramApiImplToJson(
      this,
    );
  }
}

abstract class TransactionPartnerTelegramApi implements TransactionPartner {
  const factory TransactionPartnerTelegramApi(
          {@JsonKey(name: 'type') final TransactionPartnerType type,
          @JsonKey(name: 'request_count') final int? requestCount}) =
      _$TransactionPartnerTelegramApiImpl;

  factory TransactionPartnerTelegramApi.fromJson(Map<String, dynamic> json) =
      _$TransactionPartnerTelegramApiImpl.fromJson;

  /// Type of the transaction partner, must be "telegram_api"
  @override
  @JsonKey(name: 'type')
  TransactionPartnerType get type;

  /// The number of successful requests that exceeded regular limits and were
  /// therefore billed.
  @JsonKey(name: 'request_count')
  int? get requestCount;

  /// Create a copy of TransactionPartner
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionPartnerTelegramApiImplCopyWith<
          _$TransactionPartnerTelegramApiImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TransactionPartnerOtherImplCopyWith<$Res>
    implements $TransactionPartnerCopyWith<$Res> {
  factory _$$TransactionPartnerOtherImplCopyWith(
          _$TransactionPartnerOtherImpl value,
          $Res Function(_$TransactionPartnerOtherImpl) then) =
      __$$TransactionPartnerOtherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'type') TransactionPartnerType type});
}

/// @nodoc
class __$$TransactionPartnerOtherImplCopyWithImpl<$Res>
    extends _$TransactionPartnerCopyWithImpl<$Res,
        _$TransactionPartnerOtherImpl>
    implements _$$TransactionPartnerOtherImplCopyWith<$Res> {
  __$$TransactionPartnerOtherImplCopyWithImpl(
      _$TransactionPartnerOtherImpl _value,
      $Res Function(_$TransactionPartnerOtherImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionPartner
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$TransactionPartnerOtherImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TransactionPartnerType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionPartnerOtherImpl implements TransactionPartnerOther {
  const _$TransactionPartnerOtherImpl(
      {@JsonKey(name: 'type') this.type = TransactionPartnerType.other})
      : assert(type == TransactionPartnerType.other,
            'type must be TransactionPartnerType.other');

  factory _$TransactionPartnerOtherImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionPartnerOtherImplFromJson(json);

  /// Type of the transaction partner, must be "other"
  @override
  @JsonKey(name: 'type')
  final TransactionPartnerType type;

  @override
  String toString() {
    return 'TransactionPartner.other(type: $type)';
  }

  /// Create a copy of TransactionPartner
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionPartnerOtherImplCopyWith<_$TransactionPartnerOtherImpl>
      get copyWith => __$$TransactionPartnerOtherImplCopyWithImpl<
          _$TransactionPartnerOtherImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionPartnerFragment value) fragment,
    required TResult Function(TransactionPartnerUser value) user,
    required TResult Function(TransactionPartnerTelegramAds value) telegramAds,
    required TResult Function(TransactionPartnerTelegramApi value) telegramApi,
    required TResult Function(TransactionPartnerOther value) other,
    required TResult Function(TransactionPartnerAffiliateProgram value)
        affiliateProgram,
    required TResult Function(TransactionPartnerChat value) chat,
  }) {
    return other(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionPartnerFragment value)? fragment,
    TResult? Function(TransactionPartnerUser value)? user,
    TResult? Function(TransactionPartnerTelegramAds value)? telegramAds,
    TResult? Function(TransactionPartnerTelegramApi value)? telegramApi,
    TResult? Function(TransactionPartnerOther value)? other,
    TResult? Function(TransactionPartnerAffiliateProgram value)?
        affiliateProgram,
    TResult? Function(TransactionPartnerChat value)? chat,
  }) {
    return other?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionPartnerFragment value)? fragment,
    TResult Function(TransactionPartnerUser value)? user,
    TResult Function(TransactionPartnerTelegramAds value)? telegramAds,
    TResult Function(TransactionPartnerTelegramApi value)? telegramApi,
    TResult Function(TransactionPartnerOther value)? other,
    TResult Function(TransactionPartnerAffiliateProgram value)?
        affiliateProgram,
    TResult Function(TransactionPartnerChat value)? chat,
    required TResult orElse(),
  }) {
    if (other != null) {
      return other(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionPartnerOtherImplToJson(
      this,
    );
  }
}

abstract class TransactionPartnerOther implements TransactionPartner {
  const factory TransactionPartnerOther(
          {@JsonKey(name: 'type') final TransactionPartnerType type}) =
      _$TransactionPartnerOtherImpl;

  factory TransactionPartnerOther.fromJson(Map<String, dynamic> json) =
      _$TransactionPartnerOtherImpl.fromJson;

  /// Type of the transaction partner, must be "other"
  @override
  @JsonKey(name: 'type')
  TransactionPartnerType get type;

  /// Create a copy of TransactionPartner
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionPartnerOtherImplCopyWith<_$TransactionPartnerOtherImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TransactionPartnerAffiliateProgramImplCopyWith<$Res>
    implements $TransactionPartnerCopyWith<$Res> {
  factory _$$TransactionPartnerAffiliateProgramImplCopyWith(
          _$TransactionPartnerAffiliateProgramImpl value,
          $Res Function(_$TransactionPartnerAffiliateProgramImpl) then) =
      __$$TransactionPartnerAffiliateProgramImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') TransactionPartnerType type,
      @JsonKey(name: 'sponsor_user') User? sponsorUser,
      @JsonKey(name: 'commission_per_mille') int commissionPerMille});

  $UserCopyWith<$Res>? get sponsorUser;
}

/// @nodoc
class __$$TransactionPartnerAffiliateProgramImplCopyWithImpl<$Res>
    extends _$TransactionPartnerCopyWithImpl<$Res,
        _$TransactionPartnerAffiliateProgramImpl>
    implements _$$TransactionPartnerAffiliateProgramImplCopyWith<$Res> {
  __$$TransactionPartnerAffiliateProgramImplCopyWithImpl(
      _$TransactionPartnerAffiliateProgramImpl _value,
      $Res Function(_$TransactionPartnerAffiliateProgramImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionPartner
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? sponsorUser = freezed,
    Object? commissionPerMille = null,
  }) {
    return _then(_$TransactionPartnerAffiliateProgramImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TransactionPartnerType,
      sponsorUser: freezed == sponsorUser
          ? _value.sponsorUser
          : sponsorUser // ignore: cast_nullable_to_non_nullable
              as User?,
      commissionPerMille: null == commissionPerMille
          ? _value.commissionPerMille
          : commissionPerMille // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of TransactionPartner
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get sponsorUser {
    if (_value.sponsorUser == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.sponsorUser!, (value) {
      return _then(_value.copyWith(sponsorUser: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionPartnerAffiliateProgramImpl
    implements TransactionPartnerAffiliateProgram {
  const _$TransactionPartnerAffiliateProgramImpl(
      {@JsonKey(name: 'type')
      this.type = TransactionPartnerType.affiliateProgram,
      @JsonKey(name: 'sponsor_user') this.sponsorUser,
      @JsonKey(name: 'commission_per_mille') required this.commissionPerMille})
      : assert(type == TransactionPartnerType.affiliateProgram,
            'type must be TransactionPartnerType.affiliateProgram');

  factory _$TransactionPartnerAffiliateProgramImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TransactionPartnerAffiliateProgramImplFromJson(json);

  /// Type of the transaction partner, must be "affiliate_program"
  @override
  @JsonKey(name: 'type')
  final TransactionPartnerType type;

  /// Information about the bot that sponsored the affiliate program.
  @override
  @JsonKey(name: 'sponsor_user')
  final User? sponsorUser;

  /// The number of Telegram Stars received by the bot for each 1000 Telegram
  /// Stars received by the affiliate program sponsor from referred users.
  @override
  @JsonKey(name: 'commission_per_mille')
  final int commissionPerMille;

  @override
  String toString() {
    return 'TransactionPartner.affiliateProgram(type: $type, sponsorUser: $sponsorUser, commissionPerMille: $commissionPerMille)';
  }

  /// Create a copy of TransactionPartner
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionPartnerAffiliateProgramImplCopyWith<
          _$TransactionPartnerAffiliateProgramImpl>
      get copyWith => __$$TransactionPartnerAffiliateProgramImplCopyWithImpl<
          _$TransactionPartnerAffiliateProgramImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionPartnerFragment value) fragment,
    required TResult Function(TransactionPartnerUser value) user,
    required TResult Function(TransactionPartnerTelegramAds value) telegramAds,
    required TResult Function(TransactionPartnerTelegramApi value) telegramApi,
    required TResult Function(TransactionPartnerOther value) other,
    required TResult Function(TransactionPartnerAffiliateProgram value)
        affiliateProgram,
    required TResult Function(TransactionPartnerChat value) chat,
  }) {
    return affiliateProgram(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionPartnerFragment value)? fragment,
    TResult? Function(TransactionPartnerUser value)? user,
    TResult? Function(TransactionPartnerTelegramAds value)? telegramAds,
    TResult? Function(TransactionPartnerTelegramApi value)? telegramApi,
    TResult? Function(TransactionPartnerOther value)? other,
    TResult? Function(TransactionPartnerAffiliateProgram value)?
        affiliateProgram,
    TResult? Function(TransactionPartnerChat value)? chat,
  }) {
    return affiliateProgram?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionPartnerFragment value)? fragment,
    TResult Function(TransactionPartnerUser value)? user,
    TResult Function(TransactionPartnerTelegramAds value)? telegramAds,
    TResult Function(TransactionPartnerTelegramApi value)? telegramApi,
    TResult Function(TransactionPartnerOther value)? other,
    TResult Function(TransactionPartnerAffiliateProgram value)?
        affiliateProgram,
    TResult Function(TransactionPartnerChat value)? chat,
    required TResult orElse(),
  }) {
    if (affiliateProgram != null) {
      return affiliateProgram(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionPartnerAffiliateProgramImplToJson(
      this,
    );
  }
}

abstract class TransactionPartnerAffiliateProgram
    implements TransactionPartner {
  const factory TransactionPartnerAffiliateProgram(
          {@JsonKey(name: 'type') final TransactionPartnerType type,
          @JsonKey(name: 'sponsor_user') final User? sponsorUser,
          @JsonKey(name: 'commission_per_mille')
          required final int commissionPerMille}) =
      _$TransactionPartnerAffiliateProgramImpl;

  factory TransactionPartnerAffiliateProgram.fromJson(
          Map<String, dynamic> json) =
      _$TransactionPartnerAffiliateProgramImpl.fromJson;

  /// Type of the transaction partner, must be "affiliate_program"
  @override
  @JsonKey(name: 'type')
  TransactionPartnerType get type;

  /// Information about the bot that sponsored the affiliate program.
  @JsonKey(name: 'sponsor_user')
  User? get sponsorUser;

  /// The number of Telegram Stars received by the bot for each 1000 Telegram
  /// Stars received by the affiliate program sponsor from referred users.
  @JsonKey(name: 'commission_per_mille')
  int get commissionPerMille;

  /// Create a copy of TransactionPartner
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionPartnerAffiliateProgramImplCopyWith<
          _$TransactionPartnerAffiliateProgramImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TransactionPartnerChatImplCopyWith<$Res>
    implements $TransactionPartnerCopyWith<$Res> {
  factory _$$TransactionPartnerChatImplCopyWith(
          _$TransactionPartnerChatImpl value,
          $Res Function(_$TransactionPartnerChatImpl) then) =
      __$$TransactionPartnerChatImplCopyWithImpl<$Res>;
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
class __$$TransactionPartnerChatImplCopyWithImpl<$Res>
    extends _$TransactionPartnerCopyWithImpl<$Res, _$TransactionPartnerChatImpl>
    implements _$$TransactionPartnerChatImplCopyWith<$Res> {
  __$$TransactionPartnerChatImplCopyWithImpl(
      _$TransactionPartnerChatImpl _value,
      $Res Function(_$TransactionPartnerChatImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionPartner
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? chat = null,
    Object? gift = freezed,
  }) {
    return _then(_$TransactionPartnerChatImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TransactionPartnerType,
      chat: null == chat
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as Chat,
      gift: freezed == gift
          ? _value.gift
          : gift // ignore: cast_nullable_to_non_nullable
              as Gift?,
    ));
  }

  /// Create a copy of TransactionPartner
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatCopyWith<$Res> get chat {
    return $ChatCopyWith<$Res>(_value.chat, (value) {
      return _then(_value.copyWith(chat: value));
    });
  }

  /// Create a copy of TransactionPartner
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GiftCopyWith<$Res>? get gift {
    if (_value.gift == null) {
      return null;
    }

    return $GiftCopyWith<$Res>(_value.gift!, (value) {
      return _then(_value.copyWith(gift: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionPartnerChatImpl implements TransactionPartnerChat {
  const _$TransactionPartnerChatImpl(
      {@JsonKey(name: 'type') this.type = TransactionPartnerType.chat,
      @JsonKey(name: 'chat') required this.chat,
      @JsonKey(name: 'gift') this.gift})
      : assert(type == TransactionPartnerType.chat,
            'type must be TransactionPartnerType.chat');

  factory _$TransactionPartnerChatImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionPartnerChatImplFromJson(json);

  /// Type of the transaction partner, must be "chat"
  @override
  @JsonKey(name: 'type')
  final TransactionPartnerType type;

  /// Information about the chat.
  @override
  @JsonKey(name: 'chat')
  final Chat chat;

  /// The gift sent to the chat by the bot.
  @override
  @JsonKey(name: 'gift')
  final Gift? gift;

  @override
  String toString() {
    return 'TransactionPartner.chat(type: $type, chat: $chat, gift: $gift)';
  }

  /// Create a copy of TransactionPartner
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionPartnerChatImplCopyWith<_$TransactionPartnerChatImpl>
      get copyWith => __$$TransactionPartnerChatImplCopyWithImpl<
          _$TransactionPartnerChatImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionPartnerFragment value) fragment,
    required TResult Function(TransactionPartnerUser value) user,
    required TResult Function(TransactionPartnerTelegramAds value) telegramAds,
    required TResult Function(TransactionPartnerTelegramApi value) telegramApi,
    required TResult Function(TransactionPartnerOther value) other,
    required TResult Function(TransactionPartnerAffiliateProgram value)
        affiliateProgram,
    required TResult Function(TransactionPartnerChat value) chat,
  }) {
    return chat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionPartnerFragment value)? fragment,
    TResult? Function(TransactionPartnerUser value)? user,
    TResult? Function(TransactionPartnerTelegramAds value)? telegramAds,
    TResult? Function(TransactionPartnerTelegramApi value)? telegramApi,
    TResult? Function(TransactionPartnerOther value)? other,
    TResult? Function(TransactionPartnerAffiliateProgram value)?
        affiliateProgram,
    TResult? Function(TransactionPartnerChat value)? chat,
  }) {
    return chat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionPartnerFragment value)? fragment,
    TResult Function(TransactionPartnerUser value)? user,
    TResult Function(TransactionPartnerTelegramAds value)? telegramAds,
    TResult Function(TransactionPartnerTelegramApi value)? telegramApi,
    TResult Function(TransactionPartnerOther value)? other,
    TResult Function(TransactionPartnerAffiliateProgram value)?
        affiliateProgram,
    TResult Function(TransactionPartnerChat value)? chat,
    required TResult orElse(),
  }) {
    if (chat != null) {
      return chat(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionPartnerChatImplToJson(
      this,
    );
  }
}

abstract class TransactionPartnerChat implements TransactionPartner {
  const factory TransactionPartnerChat(
      {@JsonKey(name: 'type') final TransactionPartnerType type,
      @JsonKey(name: 'chat') required final Chat chat,
      @JsonKey(name: 'gift') final Gift? gift}) = _$TransactionPartnerChatImpl;

  factory TransactionPartnerChat.fromJson(Map<String, dynamic> json) =
      _$TransactionPartnerChatImpl.fromJson;

  /// Type of the transaction partner, must be "chat"
  @override
  @JsonKey(name: 'type')
  TransactionPartnerType get type;

  /// Information about the chat.
  @JsonKey(name: 'chat')
  Chat get chat;

  /// The gift sent to the chat by the bot.
  @JsonKey(name: 'gift')
  Gift? get gift;

  /// Create a copy of TransactionPartner
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionPartnerChatImplCopyWith<_$TransactionPartnerChatImpl>
      get copyWith => throw _privateConstructorUsedError;
}
