// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/abstractions.dart';
import 'chat.dart';
import 'chat_boost.dart';

part 'chat_boost_updated.freezed.dart';
part 'chat_boost_updated.g.dart';

/// This object represents a boost added to a chat or changed.
@freezed
class ChatBoostUpdated with _$ChatBoostUpdated implements WithChat {
  /// Creates a ChatBoostUpdated object.
  const factory ChatBoostUpdated({
    /// Chat which was boosted
    @JsonKey(name: 'chat') required final Chat chat,

    /// Information about the chat boost
    @JsonKey(name: 'boost') required final ChatBoost boost,
  }) = _ChatBoostUpdated;

  /// Creates a `ChatBoostUpdated` object from a JSON object.
  factory ChatBoostUpdated.fromJson(Map<String, dynamic> json) =>
      _$ChatBoostUpdatedFromJson(json);
}
