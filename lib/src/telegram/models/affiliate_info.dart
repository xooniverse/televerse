part of 'models.dart';

/// Contains information about the affiliate that received a commission
/// via this transaction.
class AffiliateInfo {
  /// The bot or the user that received an affiliate commission if it was
  /// received by a bot or a user.
  final User? affiliateUser;

  /// The chat that received an affiliate commission if it was received by a chat.
  final Chat? affiliateChat;

  /// The number of Telegram Stars received by the affiliate for each 1000
  /// Telegram Stars received by the bot from referred users.
  final int commissionPerMille;

  /// Integer amount of Telegram Stars received by the affiliate from the transaction,
  /// rounded to 0; can be negative for refunds.
  final int amount;

  /// The number of 1/1000000000 shares of Telegram Stars received by the affiliate;
  /// from -999999999 to 999999999; can be negative for refunds.
  final int? nanostarAmount;

  /// Constructs an [AffiliateInfo] object.
  const AffiliateInfo({
    this.affiliateUser,
    this.affiliateChat,
    required this.commissionPerMille,
    required this.amount,
    this.nanostarAmount,
  });

  /// Creates an [AffiliateInfo] object from JSON.
  factory AffiliateInfo.fromJson(Map<String, dynamic> json) {
    return AffiliateInfo(
      affiliateUser: json['affiliate_user'] != null
          ? User.fromJson(json['affiliate_user'])
          : null,
      affiliateChat: json['affiliate_chat'] != null
          ? Chat.fromJson(json['affiliate_chat'])
          : null,
      commissionPerMille: json['commission_per_mille'],
      amount: json['amount'],
      nanostarAmount: json['nanostar_amount'],
    );
  }

  /// Converts an [AffiliateInfo] object to JSON.
  Map<String, dynamic> toJson() {
    return {
      'affiliate_user': affiliateUser?.toJson(),
      'affiliate_chat': affiliateChat?.toJson(),
      'commission_per_mille': commissionPerMille,
      'amount': amount,
      'nanostar_amount': nanostarAmount,
    }..removeWhere(_nullFilter);
  }
}
