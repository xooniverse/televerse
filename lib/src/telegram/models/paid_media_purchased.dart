import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/abstractions.dart';
import 'user.dart';

part 'paid_media_purchased.freezed.dart';
part 'paid_media_purchased.g.dart';

/// Represents a paid media purchase made by a user.
@freezed
class PaidMediaPurchased with _$PaidMediaPurchased implements WithUser {
  /// Creates a [PaidMediaPurchased] object.
  const factory PaidMediaPurchased({
    /// The user who purchased the media.
    @JsonKey(name: 'from') required User from,

    /// A bot-specified payload related to the paid media.
    @JsonKey(name: 'paid_media_payload') required String paidMediaPayload,
  }) = _PaidMediaPurchased;

  /// Creates a [PaidMediaPurchased] object from a JSON map.
  factory PaidMediaPurchased.fromJson(Map<String, dynamic> json) =>
      _$PaidMediaPurchasedFromJson(json);
}
