part of 'models.dart';

/// This object represents a service message about a user boosting a chat.
class ChatBoostAdded {
  /// Number of boosts added by the user
  final int boostCount;

  /// Chat Boost Added constructor
  const ChatBoostAdded({
    required this.boostCount,
  });

  /// Converts a ChatBoostAdded into a Map
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'boostCount': boostCount,
    };
  }

  /// Create a ChatBoostAdded from a Map
  factory ChatBoostAdded.fromJson(Map<String, dynamic> map) {
    return ChatBoostAdded(
      boostCount: map['boostCount'] as int,
    );
  }

  @override
  String toString() => 'ChatBoostAdded(boostCount: $boostCount)';

  @override
  bool operator ==(covariant ChatBoostAdded other) {
    if (identical(this, other)) return true;

    return other.boostCount == boostCount;
  }

  @override
  int get hashCode => boostCount.hashCode;
}
