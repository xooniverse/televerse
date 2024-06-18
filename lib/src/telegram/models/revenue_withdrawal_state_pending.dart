part of 'models.dart';

/// The withdrawal is in progress.
class RevenueWithdrawalStatePending extends RevenueWithdrawalState {
  @override
  RevenueWithdrawalStateType get type => RevenueWithdrawalStateType.pending;

  /// Constructs a [RevenueWithdrawalStatePending] object.
  const RevenueWithdrawalStatePending();

  /// Creates a [RevenueWithdrawalStatePending] object from JSON.
  factory RevenueWithdrawalStatePending.fromJson(Map<String, dynamic> json) {
    return RevenueWithdrawalStatePending();
  }

  /// Converts a [RevenueWithdrawalStatePending] object to JSON.
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.toJson(),
    };
  }
}
