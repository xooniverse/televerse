part of 'types.dart';

/// This object represents the type of the transaction partner.
enum TransactionPartnerType {
  /// Represents a withdrawal transaction with Fragment.
  fragment("fragment"),

  /// Represents a transaction with a user.
  user("user"),

  /// Represents a withdrawal transaction to the Telegram Ads platform.
  telegramAds("telegram_ads"),

  /// Represents transaction with payment for paid broadcasting.
  telegramApi("telegram_api"),

  /// Represents a transaction with an unknown source or recipient.
  other("other"),

  /// Describes the affiliate program that issued the affiliate commission received via this transaction
  affiliateProgram("affiliate_program"),
  ;

  /// The value of this enum.
  final String value;

  /// Constructs a new [TransactionPartnerType].
  const TransactionPartnerType(this.value);

  /// Constructs a new [TransactionPartnerType] from a [String].
  static TransactionPartnerType fromJson(String value) {
    return TransactionPartnerType.values.firstWhere((e) => e.value == value);
  }

  /// Converts this [TransactionPartnerType] to a [String].
  String toJson() {
    return value;
  }
}
