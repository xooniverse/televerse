// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'reaction_type.dart';

part 'reaction_count.freezed.dart';
part 'reaction_count.g.dart';

/// Represents a reaction added to a message along with the number of times it
/// was added.
@freezed
class ReactionCount with _$ReactionCount {
  /// Creates a new instance of [ReactionCount].
  const factory ReactionCount({
    /// Type of the reaction.
    @JsonKey(name: 'type') required ReactionType type,

    /// Number of times the reaction was added.
    @JsonKey(name: 'total_count') required int totalCount,
  }) = _ReactionCount;

  /// Creates a [ReactionCount] object from JSON object.
  factory ReactionCount.fromJson(Map<String, dynamic> json) =>
      _$ReactionCountFromJson(json);
}
