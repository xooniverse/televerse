import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/televerse.dart';

part 'revenue_withdrawal_state.freezed.dart';
part 'revenue_withdrawal_state.g.dart';

/// Interface to expose the `type` property on `RevenueWithdrawalState`
abstract interface class _RevenueWithdrawalStateImpl {
  /// Type of the revenue withdrawal state.
  RevenueWithdrawalStateType get type;
}

/// This object describes the state of a revenue withdrawal operation. It can be
/// one of:
/// - [RevenueWithdrawalStatePending]
/// - [RevenueWithdrawalStateSucceeded]
/// - [RevenueWithdrawalStateFailed]
@Freezed(
  unionKey: 'type',
  unionValueCase: FreezedUnionCase.snake,
)
sealed class RevenueWithdrawalState
    with _$RevenueWithdrawalState
    implements _RevenueWithdrawalStateImpl {
  /// The withdrawal is in progress
  @Assert(
    'type == RevenueWithdrawalStateType.pending',
    'type must be RevenueWithdrawalStateType.pending',
  )
  const factory RevenueWithdrawalState.pending({
    /// Type of the revenue withdrawal state, must be "pending"
    @Default(RevenueWithdrawalStateType.pending)
    RevenueWithdrawalStateType type,
  }) = RevenueWithdrawalStatePending;

  /// The withdrawal succeeded
  @Assert(
    'type == RevenueWithdrawalStateType.succeeded',
    'type must be RevenueWithdrawalStateType.succeeded',
  )
  const factory RevenueWithdrawalState.succeeded({
    /// Type of the revenue withdrawal state, must be "succeeded"
    @Default(RevenueWithdrawalStateType.succeeded)
    RevenueWithdrawalStateType type,

    /// Date the withdrawal was completed in Unix time.
    required final int date,

    /// An HTTPS URL that can be used to see transaction details.
    required final String url,
  }) = RevenueWithdrawalStateSucceeded;

  /// The withdrawal failed and the transaction was refunded
  @Assert(
    'type == RevenueWithdrawalStateType.failed',
    'type must be RevenueWithdrawalStateType.failed',
  )
  const factory RevenueWithdrawalState.failed({
    /// Type of the revenue withdrawal state, must be "failed"
    @Default(RevenueWithdrawalStateType.failed) RevenueWithdrawalStateType type,
  }) = RevenueWithdrawalStateFailed;

  /// Creates the RevenueWithdrawalState instance from JSON
  factory RevenueWithdrawalState.fromJson(Map<String, Object?> json) =>
      _$RevenueWithdrawalStateFromJson(json);
}
