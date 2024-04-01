part of 'models.dart';

/// Describes an inline message sent by a Web App on behalf of a user.
class SentWebAppMessage {
  /// Optional. Identifier of the sent inline message. Available only if there is an inline keyboard attached to the message.
  final String? inlineMessageId;

  /// Constructs a [SentWebAppMessage] object
  const SentWebAppMessage({
    this.inlineMessageId,
  });

  /// Creates a [SentWebAppMessage] object from JSON object
  Map<String, dynamic> toJson() {
    return {
      'inline_message_id': inlineMessageId,
    }..removeWhere(_nullFilter);
  }

  /// Creates a [SentWebAppMessage] object from JSON object
  factory SentWebAppMessage.fromJson(Map<String, dynamic> json) {
    return SentWebAppMessage(
      inlineMessageId: json['inline_message_id'] as String?,
    );
  }
}
