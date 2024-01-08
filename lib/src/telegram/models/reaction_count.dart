part of 'models.dart';

/// Represents a reaction added to a message along with the number of times it was added.
class ReactionCount {
  /// Type of the reaction.
  final ReactionType type;

  /// Number of times the reaction was added.
  final int totalCount;

  /// Creates a new instance of [ReactionCount].
  const ReactionCount({
    required this.type,
    required this.totalCount,
  });

  /// Converts a [ReactionCount] object to JSON object.
  Map<String, dynamic> toJson() {
    return {
      'type': type.toJson(),
      'total_count': totalCount,
    };
  }

  /// Creates a [ReactionCount] object from JSON object.
  factory ReactionCount.fromJson(Map<String, dynamic> json) {
    return ReactionCount(
      type: ReactionType.fromJson(json['type']),
      totalCount: json['total_count'],
    );
  }
}
