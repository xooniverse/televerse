part of 'models.dart';

/// Describes a transaction with an unknown source or recipient.
class TransactionPartnerOther extends TransactionPartner {
  @override
  TransactionPartnerType get type => TransactionPartnerType.other;

  /// Constructs a [TransactionPartnerOther] object.
  const TransactionPartnerOther();

  /// Creates a [TransactionPartnerOther] object from JSON.
  factory TransactionPartnerOther.fromJson(Map<String, dynamic> json) {
    return TransactionPartnerOther();
  }

  /// Converts a [TransactionPartnerOther] object to JSON.
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type,
    };
  }
}
