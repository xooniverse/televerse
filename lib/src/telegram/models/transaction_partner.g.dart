// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_partner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionPartnerFragment _$TransactionPartnerFragmentFromJson(
  Map<String, dynamic> json,
) => TransactionPartnerFragment(
  type:
      $enumDecodeNullable(_$TransactionPartnerTypeEnumMap, json['type']) ??
      TransactionPartnerType.fragment,
  withdrawalState: json['withdrawal_state'] == null
      ? null
      : RevenueWithdrawalState.fromJson(
          json['withdrawal_state'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$TransactionPartnerFragmentToJson(
  TransactionPartnerFragment instance,
) => <String, dynamic>{
  'type': _$TransactionPartnerTypeEnumMap[instance.type]!,
  'withdrawal_state': ?instance.withdrawalState,
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

TransactionPartnerUser _$TransactionPartnerUserFromJson(
  Map<String, dynamic> json,
) => TransactionPartnerUser(
  type:
      $enumDecodeNullable(_$TransactionPartnerTypeEnumMap, json['type']) ??
      TransactionPartnerType.user,
  transactionType: $enumDecode(
    _$TransactionTypeEnumMap,
    json['transaction_type'],
  ),
  user: User.fromJson(json['user'] as Map<String, dynamic>),
  affiliate: json['affiliate'] == null
      ? null
      : AffiliateInfo.fromJson(json['affiliate'] as Map<String, dynamic>),
  invoicePayload: json['invoice_payload'] as String?,
  subscriptionPeriod: (json['subscription_period'] as num?)?.toInt(),
  paidMedia: (json['paid_media'] as List<dynamic>?)
      ?.map((e) => PaidMedia.fromJson(e as Map<String, dynamic>))
      .toList(),
  paidMediaPayload: json['paid_media_payload'] as String?,
  gift: json['gift'] == null
      ? null
      : Gift.fromJson(json['gift'] as Map<String, dynamic>),
  premiumSubscriptionDuration: (json['premium_subscription_duration'] as num?)
      ?.toInt(),
);

Map<String, dynamic> _$TransactionPartnerUserToJson(
  TransactionPartnerUser instance,
) => <String, dynamic>{
  'type': _$TransactionPartnerTypeEnumMap[instance.type]!,
  'transaction_type': _$TransactionTypeEnumMap[instance.transactionType]!,
  'user': instance.user,
  'affiliate': ?instance.affiliate,
  'invoice_payload': ?instance.invoicePayload,
  'subscription_period': ?instance.subscriptionPeriod,
  'paid_media': ?instance.paidMedia,
  'paid_media_payload': ?instance.paidMediaPayload,
  'gift': ?instance.gift,
  'premium_subscription_duration': ?instance.premiumSubscriptionDuration,
};

const _$TransactionTypeEnumMap = {
  TransactionType.invoicePayment: 'invoice_payment',
  TransactionType.paidMediaPayment: 'paid_media_payment',
  TransactionType.giftPurchase: 'gift_purchase',
  TransactionType.premiumPurchase: 'premium_purchase',
  TransactionType.businessAccountTransfer: 'business_account_transfer',
};

TransactionPartnerTelegramAds _$TransactionPartnerTelegramAdsFromJson(
  Map<String, dynamic> json,
) => TransactionPartnerTelegramAds(
  type:
      $enumDecodeNullable(_$TransactionPartnerTypeEnumMap, json['type']) ??
      TransactionPartnerType.telegramAds,
);

Map<String, dynamic> _$TransactionPartnerTelegramAdsToJson(
  TransactionPartnerTelegramAds instance,
) => <String, dynamic>{'type': _$TransactionPartnerTypeEnumMap[instance.type]!};

TransactionPartnerTelegramApi _$TransactionPartnerTelegramApiFromJson(
  Map<String, dynamic> json,
) => TransactionPartnerTelegramApi(
  type:
      $enumDecodeNullable(_$TransactionPartnerTypeEnumMap, json['type']) ??
      TransactionPartnerType.telegramApi,
  requestCount: (json['request_count'] as num?)?.toInt(),
);

Map<String, dynamic> _$TransactionPartnerTelegramApiToJson(
  TransactionPartnerTelegramApi instance,
) => <String, dynamic>{
  'type': _$TransactionPartnerTypeEnumMap[instance.type]!,
  'request_count': ?instance.requestCount,
};

TransactionPartnerOther _$TransactionPartnerOtherFromJson(
  Map<String, dynamic> json,
) => TransactionPartnerOther(
  type:
      $enumDecodeNullable(_$TransactionPartnerTypeEnumMap, json['type']) ??
      TransactionPartnerType.other,
);

Map<String, dynamic> _$TransactionPartnerOtherToJson(
  TransactionPartnerOther instance,
) => <String, dynamic>{'type': _$TransactionPartnerTypeEnumMap[instance.type]!};

TransactionPartnerAffiliateProgram _$TransactionPartnerAffiliateProgramFromJson(
  Map<String, dynamic> json,
) => TransactionPartnerAffiliateProgram(
  type:
      $enumDecodeNullable(_$TransactionPartnerTypeEnumMap, json['type']) ??
      TransactionPartnerType.affiliateProgram,
  sponsorUser: json['sponsor_user'] == null
      ? null
      : User.fromJson(json['sponsor_user'] as Map<String, dynamic>),
  commissionPerMille: (json['commission_per_mille'] as num).toInt(),
);

Map<String, dynamic> _$TransactionPartnerAffiliateProgramToJson(
  TransactionPartnerAffiliateProgram instance,
) => <String, dynamic>{
  'type': _$TransactionPartnerTypeEnumMap[instance.type]!,
  'sponsor_user': ?instance.sponsorUser,
  'commission_per_mille': instance.commissionPerMille,
};

TransactionPartnerChat _$TransactionPartnerChatFromJson(
  Map<String, dynamic> json,
) => TransactionPartnerChat(
  type:
      $enumDecodeNullable(_$TransactionPartnerTypeEnumMap, json['type']) ??
      TransactionPartnerType.chat,
  chat: Chat.fromJson(json['chat'] as Map<String, dynamic>),
  gift: json['gift'] == null
      ? null
      : Gift.fromJson(json['gift'] as Map<String, dynamic>),
);

Map<String, dynamic> _$TransactionPartnerChatToJson(
  TransactionPartnerChat instance,
) => <String, dynamic>{
  'type': _$TransactionPartnerTypeEnumMap[instance.type]!,
  'chat': instance.chat,
  'gift': ?instance.gift,
};
