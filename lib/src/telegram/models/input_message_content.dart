// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/labeled_price.dart';
import 'package:televerse/src/telegram/models/link_preview_options.dart';
import 'package:televerse/src/telegram/models/message_entity.dart';
import 'package:televerse/televerse.dart';

part 'input_message_content.freezed.dart';
part 'input_message_content.g.dart';

/// This object represents the content of a message to be sent as a result of an
/// inline query. Telegram clients currently support the following 5 types:
///
/// - [InputTextMessageContent]
/// - [InputLocationMessageContent]
/// - [InputVenueMessageContent]
/// - [InputContactMessageContent]
/// - [InputInvoiceMessageContent]
@Freezed()
sealed class InputMessageContent with _$InputMessageContent {
  /// Represents the content of a text message to be sent as the result of an
  /// inline query.
  const factory InputMessageContent.text({
    /// Text of the message to be sent, 1-4096 characters
    @JsonKey(name: 'message_text') required final String messageText,

    /// Optional. Mode for parsing entities in the message text. See formatting
    /// options for more details.
    @JsonKey(name: 'parse_mode') final ParseMode? parseMode,

    /// Optional. List of special entities that appear in message text, which
    /// can be specified instead of parse_mode
    @JsonKey(name: 'entities') final List<MessageEntity>? entities,

    /// Optional. Disables link previews for links in the sent message
    @JsonKey(name: 'disable_web_page_preview')
    final LinkPreviewOptions? linkPreviewOptions,
  }) = InputTextMessageContent;

  /// Represents the content of a location message to be sent as the result of
  /// an inline query.
  const factory InputMessageContent.location({
    /// Latitude of the location in degrees
    @JsonKey(name: 'latitude') required final double latitude,

    /// Longitude of the location in degrees
    @JsonKey(name: 'longitude') required final double longitude,

    /// Optional. Period in seconds for which the location can be updated,
    /// should be between 60 and 86400.
    @JsonKey(name: 'live_period') final int? livePeriod,

    /// Optional. The radius of uncertainty for the location, measured in
    /// meters, 0-1500
    @JsonKey(name: 'horizontal_accuracy') final int? horizontalAccuracy,

    /// Optional. For live locations, a direction in which the user is moving,
    /// in degrees. Must be between 1 and 360 if specified.
    @JsonKey(name: 'heading') final int? heading,

    /// Optional. For live locations, a maximum distance for proximity alerts
    /// about approaching another chat member, in meters. Must be between 1 and
    /// 100000 if specified.
    @JsonKey(name: 'proximity_alert_radius') final int? proximityAlertRadius,
  }) = InputLocationMessageContent;

  /// Represents the content of a venue message to be sent as the result of an
  /// inline query.
  const factory InputMessageContent.venue({
    /// Latitude of the venue in degrees
    @JsonKey(name: 'latitude') required final double latitude,

    /// Longitude of the venue in degrees
    @JsonKey(name: 'longitude') required final double longitude,

    /// Name of the venue
    @JsonKey(name: 'title') required final String title,

    /// Address of the venue
    @JsonKey(name: 'address') required final String address,

    /// Optional. Foursquare identifier of the venue, if known
    @JsonKey(name: 'foursquare_id') final String? foursquareId,

    /// Optional. Foursquare type of the venue, if known. (For example,
    /// “arts_entertainment/default”, “arts_entertainment/aquarium” or
    /// “food/icecream”.)
    @JsonKey(name: 'foursquare_type') final String? foursquareType,

    /// Optional. Google Places identifier of the venue
    @JsonKey(name: 'google_place_id') final String? googlePlaceId,

    /// Optional. Google Places type of the venue. ([See supported
    /// types](https://developers.google.com/places/web-service/supported_types))
    @JsonKey(name: 'google_place_type') final String? googlePlaceType,
  }) = InputVenueMessageContent;

  /// Represents the content of a contact message to be sent as the result of an
  /// inline query.
  const factory InputMessageContent.contact({
    /// Contact's phone number
    @JsonKey(name: 'phone_number') required final String phoneNumber,

    /// Contact's first name
    @JsonKey(name: 'first_name') required final String firstName,

    /// Optional. Contact's last name
    @JsonKey(name: 'last_name') final String? lastName,

    /// Optional. Additional data about the contact in the form of a
    /// [vCard](https://en.wikipedia.org/wiki/VCard), 0-2048 bytes
    @JsonKey(name: 'vcard') final String? vcard,
  }) = InputContactMessageContent;

  /// Represents the content of an invoice message to be sent as the result of
  /// an inline query.
  const factory InputMessageContent.invoice({
    /// Product name, 1-32 characters
    @JsonKey(name: 'title') required final String title,

    /// Product description, 1-255 characters
    @JsonKey(name: 'description') required final String description,

    /// Bot-defined invoice payload, 1-128 bytes. This will not be displayed to
    /// the user, use for your internal processes.
    @JsonKey(name: 'payload') required final String payload,

    /// Optional. Payment provider token, obtained via @BotFather. Pass an empty
    /// string for payments in Telegram Stars.
    @JsonKey(name: 'provider_token') final String? providerToken,

    /// Three-letter ISO 4217 currency code, [see more on
    /// currencies](https://core.telegram.org/bots/payments#supported-currencies)
    @JsonKey(name: 'currency') required final String currency,

    /// Price breakdown, a JSON-serialized list of components (e.g. product
    /// price, tax, discount, delivery cost, delivery tax, bonus, etc.)
    @JsonKey(name: 'prices') required final List<LabeledPrice> prices,

    /// Optional. The maximum accepted amount for tips in the smallest units of
    /// the currency (integer, not float/double). For example, for a maximum tip
    /// of US$ 1.45 pass max_tip_amount = 145. See the exp parameter in
    /// currencies.json, it shows the number of digits past the decimal point
    /// for each currency (2 for the majority of currencies). Defaults to 0
    @JsonKey(name: 'max_tip_amount') final int? maxTipAmount,

    /// Optional. A JSON-serialized array of suggested amounts of tip in the
    /// smallest units of the currency (integer, not float/double). At most 4
    /// suggested tip amounts can be specified. The suggested tip amounts must
    /// be positive, passed in a strictly increased order and must not exceed
    /// max_tip_amount.
    @JsonKey(name: 'suggested_tip_amounts')
    final List<int>? suggestedTipAmounts,

    /// Optional. A JSON-serialized object for data about the invoice, which
    /// will be shared with the payment provider. A detailed description of the
    /// required fields should be provided by the payment provider.
    @JsonKey(name: 'provider_data') final String? providerData,

    /// Optional. URL of the product photo for the invoice. Can be a photo of
    /// the goods or a marketing image for a service.
    @JsonKey(name: 'photo_url') final String? photoUrl,

    /// Optional. Photo size in bytes
    @JsonKey(name: 'photo_size') final int? photoSize,

    /// Optional. Photo width
    @JsonKey(name: 'photo_width') final int? photoWidth,

    /// Optional. Photo height
    @JsonKey(name: 'photo_height') final int? photoHeight,

    /// Optional. Pass True if you require the user's full name to complete the
    /// order
    @JsonKey(name: 'need_name') final bool? needName,

    /// Optional. Pass True if you require the user's phone number to complete
    /// the order
    @JsonKey(name: 'need_phone_number') final bool? needPhoneNumber,

    /// Optional. Pass True if you require the user's email address to complete
    /// the order
    @JsonKey(name: 'need_email') final bool? needEmail,

    /// Optional. Pass True if you require the user's shipping address to
    /// complete the order
    @JsonKey(name: 'need_shipping_address') final bool? needShippingAddress,

    /// Optional. Pass True if the user's phone number should be sent to
    /// provider
    @JsonKey(name: 'send_phone_number_to_provider')
    final bool? sendPhoneNumberToProvider,

    /// Optional. Pass True if the user's email address should be sent to
    /// provider
    @JsonKey(name: 'send_email_to_provider') final bool? sendEmailToProvider,

    /// Optional. Pass True if the final price depends on the shipping method
    @JsonKey(name: 'is_flexible') final bool? isFlexible,
  }) = InputInvoiceMessageContent;

  /// Construct the InputMessageContent from JSON
  factory InputMessageContent.fromJson(Map<String, dynamic> json) =>
      _$InputMessageContentFromJson(json);
}

/// Converts the ID to JSON
class InputMessageContentConverter
    implements JsonConverter<InputMessageContent, Map<String, Object>> {
  /// Creates the instance of the converter
  const InputMessageContentConverter();

  /// Creates ID from the passed JSON
  @override
  InputMessageContent fromJson(Map<String, Object?> json) {
    final isText = json['message_text'] != null;
    final isLocation = json['latitude'] != null && json['title'] == null;
    final isVenue = json['latitude'] != null && json['title'] != null;
    final isContact = json['phone_number'] != null;
    final isInVoice =
        json['currency'] != null && json['provider_token'] != null;

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
      throw TeleverseException(
        'Unknown InputMessageContent type',
        description:
            'The given JSON object does not match any InputMessageContent type.',
        type: TeleverseExceptionType.invalidParameter,
      );
    }
  }

  /// Converts the ID into its underlying value
  @override
  Map<String, Object> toJson(InputMessageContent data) {
    return data.toJson().cast<String, Object>();
  }
}
