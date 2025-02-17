import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/affiliate_info.dart';
import 'package:televerse/src/telegram/models/chat.dart';
import 'package:televerse/src/telegram/models/gift.dart';
import 'package:televerse/src/telegram/models/paid_media.dart';
import 'package:televerse/src/telegram/models/revenue_withdrawal_state.dart';
import 'package:televerse/src/telegram/models/user.dart';
import 'package:televerse/televerse.dart';

part 'transaction_partner.freezed.dart';
part 'transaction_partner.g.dart';

/// Interface to expose the `type` property on `TransactionPartner`
abstract interface class _TransactionPartnerImpl {
  /// Type of the transaction partner.
  TransactionPartnerType get type;
}

/// This object describes the source of a transaction, or its recipient for
/// outgoing transactions. It can be one of:
/// - [TransactionPartnerFragment]
/// - [TransactionPartnerUser]
/// - [TransactionPartnerOther]
/// - [TransactionPartnerTelegramAds]
/// - [TransactionPartnerAffiliateProgram]
/// - [TransactionPartnerTelegramApi]
/// - [TransactionPartnerChat]
@Freezed(
  unionKey: 'type',
  unionValueCase: FreezedUnionCase.snake,
)
sealed class TransactionPartner
    with _$TransactionPartner
    implements _TransactionPartnerImpl {
  /// Represents a withdrawal transaction with Fragment
  @Assert(
    'type == TransactionPartnerType.fragment',
    'type must be TransactionPartnerType.fragment',
  )
  const factory TransactionPartner.fragment({
    /// Type of the transaction partner, must be "fragment"
    @Default(TransactionPartnerType.fragment) TransactionPartnerType type,

    /// State of the transaction if the transaction is outgoing.
    @JsonKey(name: 'withdrawal_state')
    final RevenueWithdrawalState? withdrawalState,
  }) = TransactionPartnerFragment;

  /// Represents a transaction with a user
  @Assert(
    'type == TransactionPartnerType.user',
    'type must be TransactionPartnerType.user',
  )
  const factory TransactionPartner.user({
    /// Type of the transaction partner, must be "user"
    @Default(TransactionPartnerType.user) TransactionPartnerType type,

    /// Information about the user.
    required final User user,

    /// Bot-specified invoice payload.
    @JsonKey(name: 'invoice_payload') final String? invoicePayload,

    /// Optional. Information about the paid media bought by the user
    @JsonKey(name: 'paid_media') final List<PaidMedia>? paidMedia,

    /// Optional. Bot-specified paid media payload
    @JsonKey(name: 'paid_media_payload') final String? paidMediaPayload,

    /// Optional. The duration of the paid subscription.
    @JsonKey(name: 'subscription_period') final int? subscriptionPeriod,

    /// Optional. The gift sent to the user by the bot.
    final Gift? gift,

    /// Optional. Information about the affiliate that received a commission via
    /// this transaction
    final AffiliateInfo? affiliate,
  }) = TransactionPartnerUser;

  /// Represents a withdrawal transaction to the Telegram Ads platform
  @Assert(
    'type == TransactionPartnerType.telegramAds',
    'type must be TransactionPartnerType.telegramAds',
  )
  const factory TransactionPartner.telegramAds({
    /// Type of the transaction partner, must be "telegram_ads"
    @Default(TransactionPartnerType.telegramAds) TransactionPartnerType type,
  }) = TransactionPartnerTelegramAds;

  /// Represents transaction with payment for paid broadcasting
  @Assert(
    'type == TransactionPartnerType.telegramApi',
    'type must be TransactionPartnerType.telegramApi',
  )
  const factory TransactionPartner.telegramApi({
    /// Type of the transaction partner, must be "telegram_api"
    @Default(TransactionPartnerType.telegramApi) TransactionPartnerType type,

    /// The number of successful requests that exceeded regular limits and were
    /// therefore billed.
    @JsonKey(name: 'request_count') final int? requestCount,
  }) = TransactionPartnerTelegramApi;

  /// Represents a transaction with an unknown source or recipient
  @Assert(
    'type == TransactionPartnerType.other',
    'type must be TransactionPartnerType.other',
  )
  const factory TransactionPartner.other({
    /// Type of the transaction partner, must be "other"
    @Default(TransactionPartnerType.other) TransactionPartnerType type,
  }) = TransactionPartnerOther;

  /// Describes the affiliate program that issued the affiliate commission
  /// received via this transaction
  @Assert(
    'type == TransactionPartnerType.affiliateProgram',
    'type must be TransactionPartnerType.affiliateProgram',
  )
  const factory TransactionPartner.affiliateProgram({
    /// Type of the transaction partner, must be "affiliate_program"
    @Default(TransactionPartnerType.affiliateProgram)
    TransactionPartnerType type,

    /// Information about the bot that sponsored the affiliate program.
    @JsonKey(name: 'sponsor_user') final User? sponsorUser,

    /// The number of Telegram Stars received by the bot for each 1000 Telegram
    /// Stars received by the affiliate program sponsor from referred users.
    @JsonKey(name: 'commission_per_mille')
    required final int commissionPerMille,
  }) = TransactionPartnerAffiliateProgram;

  /// Describes a transaction with a chat
  @Assert(
    'type == TransactionPartnerType.chat',
    'type must be TransactionPartnerType.chat',
  )
  const factory TransactionPartner.chat({
    /// Type of the transaction partner, must be "chat"
    @Default(TransactionPartnerType.chat) TransactionPartnerType type,

    /// Information about the chat.
    required final Chat chat,

    /// The gift sent to the chat by the bot.
    final Gift? gift,
  }) = TransactionPartnerChat;

  /// Creates the TransactionPartner instance from JSON
  factory TransactionPartner.fromJson(Map<String, Object?> json) =>
      _$TransactionPartnerFromJson(json);
}
