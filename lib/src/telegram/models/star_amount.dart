// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'star_amount.freezed.dart';
part 'star_amount.g.dart';

/// This object describes an amount of Telegram Stars.
@freezed
abstract class StarAmount with _$StarAmount {
  /// Creates a new [StarAmount] object.
  const factory StarAmount({
    /// Integer amount of Telegram Stars, rounded to 0; can be negative
    @JsonKey(name: 'amount') required int amount,

    /// Optional. The number of 1/1000000000 shares of Telegram Stars;
    /// from -999999999 to 999999999; can be negative if and only if
    /// *amount* is non-positive
    @JsonKey(name: 'nanostar_amount') int? nanostarAmount,
  }) = _StarAmount;

  /// Creates a new [StarAmount] object from a JSON [Map].
  factory StarAmount.fromJson(Map<String, dynamic> json) =>
      _$StarAmountFromJson(json);
}
