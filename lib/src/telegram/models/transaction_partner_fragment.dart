part of 'models.dart';

/// Describes a withdrawal transaction with Fragment.
class TransactionPartnerFragment extends TransactionPartner {
  @override
  TransactionPartnerType get type => TransactionPartnerType.fragment;

  /// State of the transaction if the transaction is outgoing.
  final RevenueWithdrawalState? withdrawalState;

  /// Constructs a [TransactionPartnerFragment] object.
  const TransactionPartnerFragment({
    this.withdrawalState,
  });

  /// Creates a [TransactionPartnerFragment] object from JSON.
  factory TransactionPartnerFragment.fromJson(Map<String, dynamic> json) {
    return TransactionPartnerFragment(
      withdrawalState: json['withdrawal_state'] != null
          ? RevenueWithdrawalState.fromJson(json['withdrawal_state'])
          : null,
    );
  }

  /// Converts a [TransactionPartnerFragment] object to JSON.
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'withdrawal_state': withdrawalState?.toJson(),
    };
  }
}
