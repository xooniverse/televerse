part of 'models.dart';

/// Describes the affiliate program that issued the affiliate commission
/// received via this transaction.
class TransactionPartnerAffiliateProgram extends TransactionPartner {
  @override
  TransactionPartnerType get type => TransactionPartnerType.affiliateProgram;

  /// Information about the bot that sponsored the affiliate program.
  final User? sponsorUser;

  /// The number of Telegram Stars received by the bot for each 1000 Telegram
  /// Stars received by the affiliate program sponsor from referred users.
  final int commissionPerMille;

  /// Constructs a [TransactionPartnerAffiliateProgram] object.
  const TransactionPartnerAffiliateProgram({
    this.sponsorUser,
    required this.commissionPerMille,
  });

  /// Creates a [TransactionPartnerAffiliateProgram] object from JSON.
  factory TransactionPartnerAffiliateProgram.fromJson(
    Map<String, dynamic> json,
  ) {
    return TransactionPartnerAffiliateProgram(
      sponsorUser: json['sponsor_user'] != null
          ? User.fromJson(json['sponsor_user'])
          : null,
      commissionPerMille: json['commission_per_mille'],
    );
  }

  /// Converts a [TransactionPartnerAffiliateProgram] object to JSON.
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
      'sponsor_user': sponsorUser?.toJson(),
      'commission_per_mille': commissionPerMille,
    };
  }
}
