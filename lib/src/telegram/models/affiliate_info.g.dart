// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'affiliate_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AffiliateInfoImpl _$$AffiliateInfoImplFromJson(Map<String, dynamic> json) =>
    _$AffiliateInfoImpl(
      affiliateUser: json['affiliate_user'] == null
          ? null
          : User.fromJson(json['affiliate_user'] as Map<String, dynamic>),
      affiliateChat: json['affiliate_chat'] == null
          ? null
          : Chat.fromJson(json['affiliate_chat'] as Map<String, dynamic>),
      commissionPerMille: (json['commission_per_mille'] as num).toInt(),
      amount: (json['amount'] as num).toInt(),
      nanostarAmount: (json['nanostar_amount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$AffiliateInfoImplToJson(_$AffiliateInfoImpl instance) =>
    <String, dynamic>{
      if (instance.affiliateUser case final value?) 'affiliate_user': value,
      if (instance.affiliateChat case final value?) 'affiliate_chat': value,
      'commission_per_mille': instance.commissionPerMille,
      'amount': instance.amount,
      if (instance.nanostarAmount case final value?) 'nanostar_amount': value,
    };
