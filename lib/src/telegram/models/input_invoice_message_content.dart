part of 'models.dart';

/// Represents the content of an invoice message to be sent as the result of an inline query.
class InputInvoiceMessageContent extends InputMessageContent {
  /// Product name, 1-32 characters
  final String title;

  /// Product description, 1-255 characters
  final String description;

  /// Bot-defined invoice payload, 1-128 bytes. This will not be displayed to the user, use for your internal processes.
  final String payload;

  /// Payment provider token, obtained via @BotFather
  final String providerToken;

  /// Three-letter ISO 4217 currency code, [see more on currencies](https://core.telegram.org/bots/payments#supported-currencies)
  final String currency;

  /// Price breakdown, a JSON-serialized list of components (e.g. product price, tax, discount, delivery cost, delivery tax, bonus, etc.)
  final List<LabeledPrice> prices;

  /// Optional. The maximum accepted amount for tips in the smallest units of the currency (integer, not float/double). For example, for a maximum tip of US$ 1.45 pass max_tip_amount = 145. See the exp parameter in currencies.json, it shows the number of digits past the decimal point for each currency (2 for the majority of currencies). Defaults to 0
  final int? maxTipAmount;

  /// Optional. A JSON-serialized array of suggested amounts of tip in the smallest units of the currency (integer, not float/double). At most 4 suggested tip amounts can be specified. The suggested tip amounts must be positive, passed in a strictly increased order and must not exceed max_tip_amount.
  final List<int>? suggestedTipAmounts;

  /// Optional. A JSON-serialized object for data about the invoice, which will be shared with the payment provider. A detailed description of the required fields should be provided by the payment provider.
  final String? providerData;

  /// Optional. URL of the product photo for the invoice. Can be a photo of the goods or a marketing image for a service.
  final String? photoUrl;

  /// Optional. Photo size in bytes
  final int? photoSize;

  /// Optional. Photo width
  final int? photoWidth;

  /// Optional. Photo height
  final int? photoHeight;

  /// Optional. Pass True if you require the user's full name to complete the order
  final bool? needName;

  /// Optional. Pass True if you require the user's phone number to complete the order
  final bool? needPhoneNumber;

  /// Optional. Pass True if you require the user's email address to complete the order
  final bool? needEmail;

  /// Optional. Pass True if you require the user's shipping address to complete the order
  final bool? needShippingAddress;

  /// Optional. Pass True if the user's phone number should be sent to provider
  final bool? sendPhoneNumberToProvider;

  /// Optional. Pass True if the user's email address should be sent to provider
  final bool? sendEmailToProvider;

  /// Optional. Pass True if the final price depends on the shipping method
  final bool? isFlexible;

  /// Constructs an [InputInvoiceMessageContent] object
  const InputInvoiceMessageContent({
    required this.title,
    required this.description,
    required this.payload,
    required this.providerToken,
    required this.currency,
    required this.prices,
    this.maxTipAmount,
    this.suggestedTipAmounts,
    this.providerData,
    this.photoUrl,
    this.photoSize,
    this.photoWidth,
    this.photoHeight,
    this.needName,
    this.needPhoneNumber,
    this.needEmail,
    this.needShippingAddress,
    this.sendPhoneNumberToProvider,
    this.sendEmailToProvider,
    this.isFlexible,
  });

  /// Converts an [InputInvoiceMessageContent] object to a JSON map
  @override
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
      'payload': payload,
      'provider_token': providerToken,
      'currency': currency,
      'prices': prices.map((e) => e.toJson()).toList(),
      'max_tip_amount': maxTipAmount,
      'suggested_tip_amounts': suggestedTipAmounts,
      'provider_data': providerData,
      'photo_url': photoUrl,
      'photo_size': photoSize,
      'photo_width': photoWidth,
      'photo_height': photoHeight,
      'need_name': needName,
      'need_phone_number': needPhoneNumber,
      'need_email': needEmail,
      'need_shipping_address': needShippingAddress,
      'send_phone_number_to_provider': sendPhoneNumberToProvider,
      'send_email_to_provider': sendEmailToProvider,
      'is_flexible': isFlexible,
    }..removeWhere((key, value) => value == null);
  }

  /// Constructs an [InputInvoiceMessageContent] object from a JSON map
  factory InputInvoiceMessageContent.fromJson(Map<String, dynamic> json) {
    return InputInvoiceMessageContent(
      title: json['title'] as String,
      description: json['description'] as String,
      payload: json['payload'] as String,
      providerToken: json['provider_token'] as String,
      currency: json['currency'] as String,
      prices: (json['prices'] as List<dynamic>)
          .map((e) => LabeledPrice.fromJson(e as Map<String, dynamic>))
          .toList(),
      maxTipAmount: json['max_tip_amount'] as int?,
      suggestedTipAmounts: (json['suggested_tip_amounts'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      providerData: json['provider_data'] as String?,
      photoUrl: json['photo_url'] as String?,
      photoSize: json['photo_size'] as int?,
      photoWidth: json['photo_width'] as int?,
      photoHeight: json['photo_height'] as int?,
      needName: json['need_name'] as bool?,
      needPhoneNumber: json['need_phone_number'] as bool?,
      needEmail: json['need_email'] as bool?,
      needShippingAddress: json['need_shipping_address'] as bool?,
      sendPhoneNumberToProvider: json['send_phone_number_to_provider'] as bool?,
      sendEmailToProvider: json['send_email_to_provider'] as bool?,
      isFlexible: json['is_flexible'] as bool?,
    );
  }
}
