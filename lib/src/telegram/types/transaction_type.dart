import 'package:freezed_annotation/freezed_annotation.dart';

/// This object represents a transaction type.
@JsonEnum(fieldRename: FieldRename.snake)
enum TransactionType {
  /// Payment via invoices
  @JsonValue('invoice_payment')
  invoicePayment,

  /// Payments for paid media
  @JsonValue('paid_media_payment')
  paidMediaPayment,

  /// Gifts sent by the bot
  @JsonValue('gift_purchase')
  giftPurchase,

  /// Telegram Premium subscriptions gifted by the bot
  @JsonValue('premium_purchase')
  premiumPurchase,

  /// Direct transfers from managed business accounts
  @JsonValue('business_account_transfer')
  businessAccountTransfer,
}
