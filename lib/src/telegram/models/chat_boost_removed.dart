// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/telegram.dart';
part 'chat_boost_removed.freezed.dart';
part 'chat_boost_removed.g.dart';

/// This object represents a boost removed from a chat.
@freezed
class ChatBoostRemoved with _$ChatBoostRemoved implements WithChat {
  /// Creates a `ChatBoostRemoved` object.
  const factory ChatBoostRemoved({
    /// Chat which was boosted
    @JsonKey(name: 'chat') required final Chat chat,

    /// Unique identifier of the boost
    @JsonKey(name: 'boost_id') required final String boostId,

    /// Point in time (Unix timestamp) when the boost was removed
    @JsonKey(name: 'remove_date') required final int removeDate,

    /// Source of the removed boost
    required final ChatBoostSource source,
  }) = _ChatBoostRemoved;

  /// Creates a `ChatBoostRemoved` object from a JSON object.
  factory ChatBoostRemoved.fromJson(Map<String, dynamic> json) =>
      _$ChatBoostRemovedFromJson(json);
}
