part of 'models.dart';

/// The reaction is paid.
class ReactionTypePaid implements ReactionType {
  /// Type of the reaction, always “custom”
  @override
  ReactionTypeType get type => ReactionTypeType.paid;

  /// Constructs the
  const ReactionTypePaid();

  /// Converts the object into a JSON parsable Map
  @override
  Map<String, dynamic> toJson() {
    return {
      "type": type.value,
    };
  }
}
