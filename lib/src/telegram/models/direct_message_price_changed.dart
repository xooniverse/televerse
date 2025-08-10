// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'direct_message_price_changed.freezed.dart';
part 'direct_message_price_changed.g.dart';

/// Describes a service message about a change in the price of direct messages
/// sent to a channel chat.
@freezed
abstract class DirectMessagePriceChanged with _$DirectMessagePriceChanged {
  /// Creates a new [DirectMessagePriceChanged] object.
  const factory DirectMessagePriceChanged({
    /// True, if direct messages are enabled for the channel chat; false otherwise
    @JsonKey(name: 'are_direct_messages_enabled')
    required bool areDirectMessagesEnabled,

    /// Optional. The new number of Telegram Stars that must be paid by users for
    /// each direct message sent to the channel. Does not apply to users who have
    /// been exempted by administrators. Defaults to 0.
    @JsonKey(name: 'direct_message_star_count') int? directMessageStarCount,
  }) = _DirectMessagePriceChanged;

  /// Creates a new [DirectMessagePriceChanged] object from a JSON [Map].
  factory DirectMessagePriceChanged.fromJson(Map<String, dynamic> json) =>
      _$DirectMessagePriceChangedFromJson(json);
}
