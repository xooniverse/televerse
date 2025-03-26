// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/abstractions.dart';
import 'chat.dart';
import 'reaction_count.dart';

part 'message_reaction_count_updated.freezed.dart';
part 'message_reaction_count_updated.g.dart';

/// Represents reaction changes on a message with anonymous reactions.
@freezed
abstract class MessageReactionCountUpdated
    with _$MessageReactionCountUpdated
    implements WithChat {
  /// Creates a new instance of [MessageReactionCountUpdated].
  const factory MessageReactionCountUpdated({
    /// The chat containing the message.
    @JsonKey(name: 'chat') required Chat chat,

    /// Unique message identifier inside the chat.
    @JsonKey(name: 'message_id') required int messageId,

    /// Date of the change in Unix time.
    @JsonKey(name: 'date') required int date,

    /// List of reactions that are present on the message.
    @JsonKey(name: 'reactions') required List<ReactionCount> reactions,
  }) = _MessageReactionCountUpdated;

  /// Creates a [MessageReactionCountUpdated] object from JSON object.
  factory MessageReactionCountUpdated.fromJson(Map<String, dynamic> json) =>
      _$MessageReactionCountUpdatedFromJson(json);
}
