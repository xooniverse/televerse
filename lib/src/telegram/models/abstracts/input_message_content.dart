part of models;

/// This object represents the content of a message to be sent as a result of an inline query. Telegram clients currently support the following 5 types:
///
/// - [InputTextMessageContent]
/// - [InputLocationMessageContent]
/// - [InputVenueMessageContent]
/// - [InputContactMessageContent]
/// - [InputInvoiceMessageContent]
abstract class InputMessageContent {
  /// Converts a [InputMessageContent] to a [Map] for JSON encoding.
  Map<String, dynamic> toJson();

  /// Creates a new [InputMessageContent] object from a JSON object.
  /// This method decides which [InputMessageContent] subclass to use based on the fields.
  static InputMessageContent fromJson(Map<String, dynamic> json) {
    bool isText = json['message_text'] != null;
    bool isLocation = json['latitude'] != null && json['title'] == null;
    bool isVenue = json['latitude'] != null && json['title'] != null;
    bool isContact = json['phone_number'] != null;
    bool isInVoice = json['currency'] != null && json['provider_token'] != null;

    if (isText) {
      return InputTextMessageContent.fromJson(json);
    } else if (isLocation) {
      return InputLocationMessageContent.fromJson(json);
    } else if (isVenue) {
      return InputVenueMessageContent.fromJson(json);
    } else if (isContact) {
      return InputContactMessageContent.fromJson(json);
    } else if (isInVoice) {
      return InputInvoiceMessageContent.fromJson(json);
    } else {
      throw TeleverseException('Unknown InputMessageContent type');
    }
  }
}
