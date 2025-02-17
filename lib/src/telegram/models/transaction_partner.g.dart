// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_partner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionPartnerFragmentImpl _$$TransactionPartnerFragmentImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionPartnerFragmentImpl(
      type:
          $enumDecodeNullable(_$TransactionPartnerTypeEnumMap, json['type']) ??
              TransactionPartnerType.fragment,
      withdrawalState: json['withdrawal_state'] == null
          ? null
          : RevenueWithdrawalState.fromJson(
              json['withdrawal_state'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TransactionPartnerFragmentImplToJson(
        _$TransactionPartnerFragmentImpl instance) =>
    <String, dynamic>{
      'type': _$TransactionPartnerTypeEnumMap[instance.type]!,
      if (instance.withdrawalState case final value?) 'withdrawal_state': value,
    };

const _$TransactionPartnerTypeEnumMap = {
  TransactionPartnerType.fragment: 'fragment',
  TransactionPartnerType.user: 'user',
  TransactionPartnerType.telegramAds: 'telegram_ads',
  TransactionPartnerType.telegramApi: 'telegram_api',
  TransactionPartnerType.other: 'other',
  TransactionPartnerType.affiliateProgram: 'affiliate_program',
  TransactionPartnerType.chat: 'chat',
};

_$TransactionPartnerUserImpl _$$TransactionPartnerUserImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionPartnerUserImpl(
      type:
          $enumDecodeNullable(_$TransactionPartnerTypeEnumMap, json['type']) ??
              TransactionPartnerType.user,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      invoicePayload: json['invoice_payload'] as String?,
      paidMedia: (json['paid_media'] as List<dynamic>?)
          ?.map((e) => PaidMedia.fromJson(e as Map<String, dynamic>))
          .toList(),
      paidMediaPayload: json['paid_media_payload'] as String?,
      subscriptionPeriod: (json['subscription_period'] as num?)?.toInt(),
      gift: json['gift'] == null
          ? null
          : Gift.fromJson(json['gift'] as Map<String, dynamic>),
      affiliate: json['affiliate'] == null
          ? null
          : AffiliateInfo.fromJson(json['affiliate'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TransactionPartnerUserImplToJson(
        _$TransactionPartnerUserImpl instance) =>
    <String, dynamic>{
      'type': _$TransactionPartnerTypeEnumMap[instance.type]!,
      'user': instance.user,
      if (instance.invoicePayload case final value?) 'invoice_payload': value,
      if (instance.paidMedia case final value?) 'paid_media': value,
      if (instance.paidMediaPayload case final value?)
        'paid_media_payload': value,
      if (instance.subscriptionPeriod case final value?)
        'subscription_period': value,
      if (instance.gift case final value?) 'gift': value,
      if (instance.affiliate case final value?) 'affiliate': value,
    };

_$TransactionPartnerTelegramAdsImpl
    _$$TransactionPartnerTelegramAdsImplFromJson(Map<String, dynamic> json) =>
        _$TransactionPartnerTelegramAdsImpl(
          type: $enumDecodeNullable(
                  _$TransactionPartnerTypeEnumMap, json['type']) ??
              TransactionPartnerType.telegramAds,
        );

Map<String, dynamic> _$$TransactionPartnerTelegramAdsImplToJson(
        _$TransactionPartnerTelegramAdsImpl instance) =>
    <String, dynamic>{
      'type': _$TransactionPartnerTypeEnumMap[instance.type]!,
    };

_$TransactionPartnerTelegramApiImpl
    _$$TransactionPartnerTelegramApiImplFromJson(Map<String, dynamic> json) =>
        _$TransactionPartnerTelegramApiImpl(
          type: $enumDecodeNullable(
                  _$TransactionPartnerTypeEnumMap, json['type']) ??
              TransactionPartnerType.telegramApi,
          requestCount: (json['request_count'] as num?)?.toInt(),
        );

Map<String, dynamic> _$$TransactionPartnerTelegramApiImplToJson(
        _$TransactionPartnerTelegramApiImpl instance) =>
    <String, dynamic>{
      'type': _$TransactionPartnerTypeEnumMap[instance.type]!,
      if (instance.requestCount case final value?) 'request_count': value,
    };

_$TransactionPartnerOtherImpl _$$TransactionPartnerOtherImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionPartnerOtherImpl(
      type:
          $enumDecodeNullable(_$TransactionPartnerTypeEnumMap, json['type']) ??
              TransactionPartnerType.other,
    );

Map<String, dynamic> _$$TransactionPartnerOtherImplToJson(
        _$TransactionPartnerOtherImpl instance) =>
    <String, dynamic>{
      'type': _$TransactionPartnerTypeEnumMap[instance.type]!,
    };

_$TransactionPartnerAffiliateProgramImpl
    _$$TransactionPartnerAffiliateProgramImplFromJson(
            Map<String, dynamic> json) =>
        _$TransactionPartnerAffiliateProgramImpl(
          type: $enumDecodeNullable(
                  _$TransactionPartnerTypeEnumMap, json['type']) ??
              TransactionPartnerType.affiliateProgram,
          sponsorUser: json['sponsor_user'] == null
              ? null
              : User.fromJson(json['sponsor_user'] as Map<String, dynamic>),
          commissionPerMille: (json['commission_per_mille'] as num).toInt(),
        );

Map<String, dynamic> _$$TransactionPartnerAffiliateProgramImplToJson(
        _$TransactionPartnerAffiliateProgramImpl instance) =>
    <String, dynamic>{
      'type': _$TransactionPartnerTypeEnumMap[instance.type]!,
      if (instance.sponsorUser case final value?) 'sponsor_user': value,
      'commission_per_mille': instance.commissionPerMille,
    };

_$TransactionPartnerChatImpl _$$TransactionPartnerChatImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionPartnerChatImpl(
      type:
          $enumDecodeNullable(_$TransactionPartnerTypeEnumMap, json['type']) ??
              TransactionPartnerType.chat,
      chat: Chat.fromJson(json['chat'] as Map<String, dynamic>),
      gift: json['gift'] == null
          ? null
          : Gift.fromJson(json['gift'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TransactionPartnerChatImplToJson(
        _$TransactionPartnerChatImpl instance) =>
    <String, dynamic>{
      'type': _$TransactionPartnerTypeEnumMap[instance.type]!,
      'chat': instance.chat,
      if (instance.gift case final value?) 'gift': value,
    };
