part of models;

/// This object represents a unique message identifier.
class MessageId {
  int messageId;

  MessageId({
    required this.messageId,
  });

  factory MessageId.fromJson(Map<String, dynamic> json) {
    return MessageId(
      messageId: json['message_id'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'message_id': messageId,
    };
  }
}
