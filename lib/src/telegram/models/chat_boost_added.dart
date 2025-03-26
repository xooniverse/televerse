// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_boost_added.freezed.dart';
part 'chat_boost_added.g.dart';

/// This object represents a service message about a user boosting a chat.
@freezed
abstract class ChatBoostAdded with _$ChatBoostAdded {
  /// Chat Boost Added constructor
  @JsonSerializable(explicitToJson: true)
  const factory ChatBoostAdded({
    /// Number of boosts added by the user
    @JsonKey(name: 'boost_count') required final int boostCount,
  }) = _ChatBoostAdded;

  /// Create a ChatBoostAdded from a Map
  factory ChatBoostAdded.fromJson(Map<String, dynamic> json) =>
      _$ChatBoostAddedFromJson(json);
}
