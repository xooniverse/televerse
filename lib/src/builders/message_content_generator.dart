part of '../../../televerse.dart';

/// Basically stuffs the input message content to the Inline Query Result
class MessageContentGenerator {
  /// Internal singleton instance
  static final MessageContentGenerator _instance = MessageContentGenerator._();

  /// Creates a content stuffer.
  const MessageContentGenerator._();

  /// Instance of the InputMessageContentStuffer
  static MessageContentGenerator get instance => _instance;

  /// Shorthand for instance of InputMessageContentStuffer
  static MessageContentGenerator get i => _instance;

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

  /// Adds Venue content to the result
  InputVenueMessageContent venue(
    double latitude,
    double longitude, {
    required String title,
    required String address,
    String? foursquareId,
    String? foursquareType,
    String? googlePlaceId,
    String? googlePlaceType,
  }) {
    return InputVenueMessageContent(
      latitude: latitude,
      longitude: longitude,
      title: title,
      address: address,
      foursquareId: foursquareId,
      foursquareType: foursquareType,
      googlePlaceId: googlePlaceId,
      googlePlaceType: googlePlaceType,
    );
  }

  /// Adds contact content to the result
  InputContactMessageContent contact(
    String firstName,
    String phoneNumber, {
    String? lastName,
    String? vcard,
  }) {
    return InputContactMessageContent(
      firstName: firstName,
      phoneNumber: phoneNumber,
      lastName: lastName,
      vcard: vcard,
    );
  }

  /// Adds an invoice message to be sent as the result of an inline query.
  InputInvoiceMessageContent invoice({
    required String title,
    required String description,
    required String payload,
    required String providerToken,
    required String currency,
    required List<LabeledPrice> prices,
    int? maxTipAmount,
    List<int>? suggestedTipAmounts,
    String? providerData,
    String? photoUrl,
    int? photoSize,
    int? photoWidth,
    int? photoHeight,
    bool? needName,
    bool? needPhoneNumber,
    bool? needEmail,
    bool? needShippingAddress,
    bool? sendPhoneNumberToProvider,
    bool? sendEmailToProvider,
    bool? isFlexible,
  }) {
    return InputInvoiceMessageContent(
      title: title,
      description: description,
      payload: payload,
      providerToken: providerToken,
      currency: currency,
      prices: prices,
      maxTipAmount: maxTipAmount,
      suggestedTipAmounts: suggestedTipAmounts,
      providerData: providerData,
      photoUrl: photoUrl,
      photoSize: photoSize,
      photoWidth: photoWidth,
      photoHeight: photoHeight,
      needName: needName,
      needPhoneNumber: needPhoneNumber,
      needEmail: needEmail,
      needShippingAddress: needShippingAddress,
      sendPhoneNumberToProvider: sendPhoneNumberToProvider,
      sendEmailToProvider: sendEmailToProvider,
      isFlexible: isFlexible,
    );
  }
}
