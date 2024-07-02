part of 'models.dart';

/// Describes a withdrawal transaction to the Telegram Ads platform.
class TransactionPartnerTelegramAds extends TransactionPartner {
  @override
  TransactionPartnerType get type => TransactionPartnerType.telegramAds;

  /// Constructs a [TransactionPartnerTelegramAds] object.
  const TransactionPartnerTelegramAds();

  /// Creates a [TransactionPartnerTelegramAds] object from JSON.
  factory TransactionPartnerTelegramAds.fromJson(Map<String, dynamic> json) {
    return TransactionPartnerTelegramAds();
  }

  /// Converts a [TransactionPartnerTelegramAds] object to JSON.
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.toJson(),
    };
  }
}
