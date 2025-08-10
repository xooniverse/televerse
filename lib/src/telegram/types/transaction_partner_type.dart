import 'package:freezed_annotation/freezed_annotation.dart';

/// The type of a `TransactionPartner`
@JsonEnum(fieldRename: FieldRename.snake)
enum TransactionPartnerType {
  /// Represents a withdrawal transaction with Fragment.
  @JsonValue('fragment')
  fragment,

  /// Represents a transaction with a user.
  @JsonValue('user')
  user,

  /// Represents a withdrawal transaction to the Telegram Ads platform.
  @JsonValue('telegram_ads')
  telegramAds,

  /// Represents transaction with payment for paid broadcasting.
  @JsonValue('telegram_api')
  telegramApi,

  /// Represents a transaction with an unknown source or recipient.
  @JsonValue('other')
  other,

  /// Describes the affiliate program that issued the affiliate commission
  /// received via this transaction.
  @JsonValue('affiliate_program')
  affiliateProgram,

  /// Describes a transaction with a chat.
  @JsonValue('chat')
  chat;
}
