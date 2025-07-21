// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/telegram.dart';

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
    @JsonKey(name: 'type')
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
    @JsonKey(name: 'type')
    @Default(RevenueWithdrawalStateType.succeeded)
    RevenueWithdrawalStateType type,

    /// Date the withdrawal was completed in Unix time.
    @JsonKey(name: 'date') required final int date,

    /// An HTTPS URL that can be used to see transaction details.
    @JsonKey(name: 'url') required final String url,
  }) = RevenueWithdrawalStateSucceeded;

  /// The withdrawal failed and the transaction was refunded
  @Assert(
    'type == RevenueWithdrawalStateType.failed',
    'type must be RevenueWithdrawalStateType.failed',
  )
  const factory RevenueWithdrawalState.failed({
    /// Type of the revenue withdrawal state, must be "failed"
    @JsonKey(name: 'type')
    @Default(RevenueWithdrawalStateType.failed)
    RevenueWithdrawalStateType type,
  }) = RevenueWithdrawalStateFailed;

  /// Creates the RevenueWithdrawalState instance from JSON
  factory RevenueWithdrawalState.fromJson(Map<String, Object?> json) =>
      _$RevenueWithdrawalStateFromJson(json);
}
