part of 'models.dart';

/// The withdrawal failed and the transaction was refunded.
class RevenueWithdrawalStateFailed extends RevenueWithdrawalState {
  @override
  RevenueWithdrawalStateType get type => RevenueWithdrawalStateType.failed;

  /// Constructs a [RevenueWithdrawalStateFailed] object.
  const RevenueWithdrawalStateFailed();

  /// Creates a [RevenueWithdrawalStateFailed] object from JSON.
  factory RevenueWithdrawalStateFailed.fromJson(Map<String, dynamic> json) {
    return RevenueWithdrawalStateFailed();
  }

  /// Converts a [RevenueWithdrawalStateFailed] object to JSON.
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.toJson(),
    };
  }
}
