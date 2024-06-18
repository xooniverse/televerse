part of 'types.dart';

/// This object represents the type of the revenue withdrawal state.
enum RevenueWithdrawalStateType {
  /// The withdrawal is in progress.
  pending("pending"),

  /// The withdrawal succeeded.
  succeeded("succeeded"),

  /// The withdrawal failed and the transaction was refunded.
  failed("failed"),
  ;

  /// The value of this enum.
  final String value;

  /// Constructs a new [RevenueWithdrawalStateType].
  const RevenueWithdrawalStateType(this.value);

  /// Constructs a new [RevenueWithdrawalStateType] from a [String].
  static RevenueWithdrawalStateType fromJson(String value) {
    return RevenueWithdrawalStateType.values
        .firstWhere((e) => e.value == value);
  }

  /// Converts this [RevenueWithdrawalStateType] to a [String].
  String toJson() {
    return value;
  }
}
