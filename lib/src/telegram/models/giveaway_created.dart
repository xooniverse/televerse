// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'giveaway_created.freezed.dart';
part 'giveaway_created.g.dart';

/// This object represents a service message about the creation of a scheduled
/// giveaway. Currently holds no information.
@freezed
class GiveawayCreated with _$GiveawayCreated {
  /// Creates a `GiveawayCreated` object.
  const factory GiveawayCreated({
    /// Optional. The number of Telegram Stars to be split between giveaway
    /// winners; for Telegram Star giveaways only
    @JsonKey(name: 'prize_star_count') int? prizeStarCount,
  }) = _GiveawayCreated;

  /// Creates a `GiveawayCreated` object from a JSON object.
  factory GiveawayCreated.fromJson(Map<String, dynamic> json) =>
      _$GiveawayCreatedFromJson(json);
}
