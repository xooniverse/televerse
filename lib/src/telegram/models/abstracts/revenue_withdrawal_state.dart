part of '../models.dart';

/// This object describes the state of a revenue withdrawal operation.
/// Currently, it can be one of [RevenueWithdrawalStatePending], [RevenueWithdrawalStateSucceeded], [RevenueWithdrawalStateFailed].
abstract class RevenueWithdrawalState {
  /// Type of the revenue withdrawal state.
  RevenueWithdrawalStateType get type;

  /// Creates a new [RevenueWithdrawalState] object.
  /// This method decides which [RevenueWithdrawalState] subclass to use based on the [type] field.
  static RevenueWithdrawalState fromJson(Map<String, dynamic> json) {
    return switch (RevenueWithdrawalStateType.fromJson(json['type'])) {
      RevenueWithdrawalStateType.pending =>
        RevenueWithdrawalStatePending.fromJson(json),
      RevenueWithdrawalStateType.succeeded =>
        RevenueWithdrawalStateSucceeded.fromJson(json),
      RevenueWithdrawalStateType.failed =>
        RevenueWithdrawalStateFailed.fromJson(json),
    };
  }

  /// Creates a new [RevenueWithdrawalState] object from JSON.
  const RevenueWithdrawalState();

  /// Converts a [RevenueWithdrawalState] to a [Map] for JSON encoding.
  Map<String, dynamic> toJson();
}
