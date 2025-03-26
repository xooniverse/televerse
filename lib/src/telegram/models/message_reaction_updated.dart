// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/abstractions.dart';
import 'chat.dart';
import 'user.dart';
import 'reaction_type.dart';

part 'message_reaction_updated.freezed.dart';
part 'message_reaction_updated.g.dart';

/// Represents a change of a reaction on a message performed by a user.
@freezed
abstract class MessageReactionUpdated
    with _$MessageReactionUpdated
    implements WithChat {
  /// Creates a new instance of [MessageReactionUpdated].
  const factory MessageReactionUpdated({
    /// The chat containing the message the user reacted to.
    @JsonKey(name: 'chat') required Chat chat,

    /// Unique identifier of the message inside the chat.
    @JsonKey(name: 'message_id') required int messageId,

    /// The user that changed the reaction, if the user isn't anonymous.
    @JsonKey(name: 'user') User? user,

    /// The chat on behalf of which the reaction was changed, if the user is anonymous.
    @JsonKey(name: 'actor_chat') Chat? actorChat,

    /// Date of the change in Unix time.
    @JsonKey(name: 'date') required int date,

    /// Previous list of reaction types that were set by the user.
    @JsonKey(name: 'old_reaction') required List<ReactionType> oldReaction,

    /// New list of reaction types that have been set by the user.
    @JsonKey(name: 'new_reaction') required List<ReactionType> newReaction,
  }) = _MessageReactionUpdated;

  /// Creates a [MessageReactionUpdated] object from JSON object.
  factory MessageReactionUpdated.fromJson(Map<String, dynamic> json) =>
      _$MessageReactionUpdatedFromJson(json);
}
