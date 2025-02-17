import 'package:freezed_annotation/freezed_annotation.dart';

/// The type of a `RevenueWithdrawalState`
@JsonEnum(fieldRename: FieldRename.snake)
enum RevenueWithdrawalStateType {
  /// The withdrawal is in progress.
  @JsonValue('pending')
  pending,

  /// The withdrawal succeeded.
  @JsonValue('succeeded')
  succeeded,

  /// The withdrawal failed and the transaction was refunded.
  @JsonValue('failed')
  failed;
}
