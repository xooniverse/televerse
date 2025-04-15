// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'paid_message_price_changed.freezed.dart';
part 'paid_message_price_changed.g.dart';

/// Describes a service message about a change in the price of paid messages
/// within a chat.
@freezed
abstract class PaidMessagePriceChanged with _$PaidMessagePriceChanged {
  /// Creates a new [PaidMessagePriceChanged] object.
  const factory PaidMessagePriceChanged({
    /// The new number of Telegram Stars that must be paid by non-administrator
    /// users of the supergroup chat for each sent message
    @JsonKey(name: 'paid_message_star_count') required int paidMessageStarCount,
  }) = _PaidMessagePriceChanged;

  /// Creates a new [PaidMessagePriceChanged] object from a JSON [Map].
  factory PaidMessagePriceChanged.fromJson(Map<String, dynamic> json) =>
      _$PaidMessagePriceChangedFromJson(json);
}
