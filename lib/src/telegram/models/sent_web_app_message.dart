import 'package:freezed_annotation/freezed_annotation.dart';

part 'sent_web_app_message.freezed.dart';
part 'sent_web_app_message.g.dart';

/// Describes an inline message sent by a Web App on behalf of a user.
@freezed
class SentWebAppMessage with _$SentWebAppMessage {
  /// Creates an inline message sent by a Web App
  ///
  /// [inlineMessageId] Identifier of the sent inline message. Available only if
  /// there is an inline keyboard attached to the message.
  const factory SentWebAppMessage({
    /// Optional. Identifier of the sent inline message. Available only if there
    /// is an inline keyboard attached to the message.
    String? inlineMessageId,
  }) = _SentWebAppMessage;

  /// Creates a [SentWebAppMessage] from a JSON map
  factory SentWebAppMessage.fromJson(Map<String, dynamic> json) =>
      _$SentWebAppMessageFromJson(json);
}
