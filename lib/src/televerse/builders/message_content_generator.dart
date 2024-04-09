part of '../../../televerse.dart';

/// Basically stuffs the input message content to the Inline Query Result
class MessageContentGenerator {
  /// Creates a content stuffer.
  const MessageContentGenerator._();

  /// Instance of the InputMessageContentStuffer
  static MessageContentGenerator get instance => MessageContentGenerator._();

  /// Shorthand for instance of InputMessageContentStuffer
  static MessageContentGenerator get i => instance;

  /// Adds Text Input Message Content to the result
  InputTextMessageContent text(
    String messageText, {
    ParseMode? parseMode,
    List<MessageEntity>? entities,
    LinkPreviewOptions? linkPreviewOptions,
  }) {
    return InputTextMessageContent(
      messageText: messageText,
      parseMode: parseMode,
      entities: entities,
      linkPreviewOptions: linkPreviewOptions,
    );
  }

  /// Adds location content to the result
  InputLocationMessageContent location(
    double latitude,
    double longitude, {
    int? livePeriod,
    int? horizontalAccuracy,
    int? heading,
    int? proximityAlertRadius,
  }) {
    return InputLocationMessageContent(
      latitude: latitude,
      longitude: longitude,
      livePeriod: livePeriod,
      horizontalAccuracy: horizontalAccuracy,
      heading: heading,
      proximityAlertRadius: proximityAlertRadius,
    );
  }
}
