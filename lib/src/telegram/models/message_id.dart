part of 'models.dart';

/// This object represents a unique message identifier.
class MessageId {
  /// Unique message identifier
  final int messageId;

  /// Constructs a [MessageId] object
  const MessageId({
    required this.messageId,
  });

  /// Creates a [MessageId] object from JSON object
  factory MessageId.fromJson(Map<String, dynamic> json) {
    return MessageId(
      messageId: json['message_id'],
    );
  }

  /// Converts a [MessageId] object to JSON object
  Map<String, dynamic> toJson() {
    return {
      'message_id': messageId,
    };
  }
}
