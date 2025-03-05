// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'chat_boost_source.dart';

part 'chat_boost.freezed.dart';
part 'chat_boost.g.dart';

/// This object contains information about a chat boost.
@freezed
class ChatBoost with _$ChatBoost {
  /// Creates a chat boost.
  const factory ChatBoost({
    /// Unique identifier of the boost
    @JsonKey(name: 'boost_id') required final String boostId,

    /// Point in time (Unix timestamp) when the chat was boosted
    @JsonKey(name: 'add_date') required final int addDate,

    /// Point in time (Unix timestamp) when the boost will automatically expire, unless the booster's Telegram Premium subscription is prolonged
    @JsonKey(name: 'expiration_date') required final int expirationDate,

    /// Source of the added boost
    @JsonKey(name: 'source') required final ChatBoostSource source,
  }) = _ChatBoost;

  /// Creates a `ChatBoost` object from a JSON object.
  factory ChatBoost.fromJson(Map<String, dynamic> json) =>
      _$ChatBoostFromJson(json);
}
