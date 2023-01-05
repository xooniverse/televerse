part of models;

/// Describes an inline message sent by a Web App on behalf of a user.
class SentWebAppMessage {
  /// Optional. Identifier of the sent inline message. Available only if there is an inline keyboard attached to the message.
  final String? inlineMessageId;

  const SentWebAppMessage({
    this.inlineMessageId,
  });

  Map<String, dynamic> toJson() {
    return {
      'inline_message_id': inlineMessageId,
    };
  }

  factory SentWebAppMessage.fromJson(Map<String, dynamic> json) {
    return SentWebAppMessage(
      inlineMessageId: json['inline_message_id'] as String?,
    );
  }
}
