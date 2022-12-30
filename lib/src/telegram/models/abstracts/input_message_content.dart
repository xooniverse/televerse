import 'package:televerse/src/telegram/models/input_contact_message_content.dart';
import 'package:televerse/src/telegram/models/input_invoice_message_content.dart';
import 'package:televerse/src/telegram/models/input_location_message_content.dart';
import 'package:televerse/src/telegram/models/input_text_message_content.dart';
import 'package:televerse/src/telegram/models/input_venue_message_content.dart';

/// This object represents the content of a message to be sent as a result of an inline query. Telegram clients currently support the following 5 types:
///
/// - [InputTextMessageContent]
/// - [InputLocationMessageContent]
/// - [InputVenueMessageContent]
/// - [InputContactMessageContent]
/// - [InputInvoiceMessageContent]
abstract class InputMessageContent {
  Map<String, dynamic> toJson();

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
      throw Exception('Unknown InputMessageContent type');
    }
  }
}
