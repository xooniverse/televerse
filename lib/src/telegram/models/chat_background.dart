part of 'models.dart';

/// This object represents a chat background.
class ChatBackground {
  /// Type of the background.
  final BackgroundType type;

  /// Constructs a [ChatBackground] object.
  const ChatBackground({
    required this.type,
  });

  /// Creates a [ChatBackground] object from JSON.
  factory ChatBackground.fromJson(Map<String, dynamic> json) {
    return ChatBackground(
      type: BackgroundType.create(json['type']),
    );
  }

  /// Converts a [ChatBackground] object to JSON.
  Map<String, dynamic> toJson() {
    return {
      'type': type.toJson(),
    };
  }
}
