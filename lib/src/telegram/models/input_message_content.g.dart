// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_message_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InputTextMessageContent _$InputTextMessageContentFromJson(
  Map<String, dynamic> json,
) => InputTextMessageContent(
  messageText: json['message_text'] as String,
  parseMode: $enumDecodeNullable(_$ParseModeEnumMap, json['parse_mode']),
  entities: (json['entities'] as List<dynamic>?)
      ?.map((e) => MessageEntity.fromJson(e as Map<String, dynamic>))
      .toList(),
  linkPreviewOptions: json['link_preview_options'] == null
      ? null
      : LinkPreviewOptions.fromJson(
          json['link_preview_options'] as Map<String, dynamic>,
        ),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$InputTextMessageContentToJson(
  InputTextMessageContent instance,
) => <String, dynamic>{
  'message_text': instance.messageText,
  'parse_mode': ?instance.parseMode,
  'entities': ?instance.entities,
  'link_preview_options': ?instance.linkPreviewOptions,
  'runtimeType': instance.$type,
};

const _$ParseModeEnumMap = {
  ParseMode.markdown: 'Markdown',
  ParseMode.html: 'HTML',
  ParseMode.markdownV2: 'MarkdownV2',
};

InputLocationMessageContent _$InputLocationMessageContentFromJson(
  Map<String, dynamic> json,
) => InputLocationMessageContent(
  latitude: (json['latitude'] as num).toDouble(),
  longitude: (json['longitude'] as num).toDouble(),
  livePeriod: (json['live_period'] as num?)?.toInt(),
  horizontalAccuracy: (json['horizontal_accuracy'] as num?)?.toInt(),
  heading: (json['heading'] as num?)?.toInt(),
  proximityAlertRadius: (json['proximity_alert_radius'] as num?)?.toInt(),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$InputLocationMessageContentToJson(
  InputLocationMessageContent instance,
) => <String, dynamic>{
  'latitude': instance.latitude,
  'longitude': instance.longitude,
  'live_period': ?instance.livePeriod,
  'horizontal_accuracy': ?instance.horizontalAccuracy,
  'heading': ?instance.heading,
  'proximity_alert_radius': ?instance.proximityAlertRadius,
  'runtimeType': instance.$type,
};

InputVenueMessageContent _$InputVenueMessageContentFromJson(
  Map<String, dynamic> json,
) => InputVenueMessageContent(
  latitude: (json['latitude'] as num).toDouble(),
  longitude: (json['longitude'] as num).toDouble(),
  title: json['title'] as String,
  address: json['address'] as String,
  foursquareId: json['foursquare_id'] as String?,
  foursquareType: json['foursquare_type'] as String?,
  googlePlaceId: json['google_place_id'] as String?,
  googlePlaceType: json['google_place_type'] as String?,
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$InputVenueMessageContentToJson(
  InputVenueMessageContent instance,
) => <String, dynamic>{
  'latitude': instance.latitude,
  'longitude': instance.longitude,
  'title': instance.title,
  'address': instance.address,
  'foursquare_id': ?instance.foursquareId,
  'foursquare_type': ?instance.foursquareType,
  'google_place_id': ?instance.googlePlaceId,
  'google_place_type': ?instance.googlePlaceType,
  'runtimeType': instance.$type,
};

InputContactMessageContent _$InputContactMessageContentFromJson(
  Map<String, dynamic> json,
) => InputContactMessageContent(
  phoneNumber: json['phone_number'] as String,
  firstName: json['first_name'] as String,
  lastName: json['last_name'] as String?,
  vcard: json['vcard'] as String?,
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$InputContactMessageContentToJson(
  InputContactMessageContent instance,
) => <String, dynamic>{
  'phone_number': instance.phoneNumber,
  'first_name': instance.firstName,
  'last_name': ?instance.lastName,
  'vcard': ?instance.vcard,
  'runtimeType': instance.$type,
};

InputInvoiceMessageContent _$InputInvoiceMessageContentFromJson(
  Map<String, dynamic> json,
) => InputInvoiceMessageContent(
  title: json['title'] as String,
  description: json['description'] as String,
  payload: json['payload'] as String,
  providerToken: json['provider_token'] as String?,
  currency: json['currency'] as String,
  prices: (json['prices'] as List<dynamic>)
      .map((e) => LabeledPrice.fromJson(e as Map<String, dynamic>))
      .toList(),
  maxTipAmount: (json['max_tip_amount'] as num?)?.toInt(),
  suggestedTipAmounts: (json['suggested_tip_amounts'] as List<dynamic>?)
      ?.map((e) => (e as num).toInt())
      .toList(),
  providerData: json['provider_data'] as String?,
  photoUrl: json['photo_url'] as String?,
  photoSize: (json['photo_size'] as num?)?.toInt(),
  photoWidth: (json['photo_width'] as num?)?.toInt(),
  photoHeight: (json['photo_height'] as num?)?.toInt(),
  needName: json['need_name'] as bool?,
  needPhoneNumber: json['need_phone_number'] as bool?,
  needEmail: json['need_email'] as bool?,
  needShippingAddress: json['need_shipping_address'] as bool?,
  sendPhoneNumberToProvider: json['send_phone_number_to_provider'] as bool?,
  sendEmailToProvider: json['send_email_to_provider'] as bool?,
  isFlexible: json['is_flexible'] as bool?,
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$InputInvoiceMessageContentToJson(
  InputInvoiceMessageContent instance,
) => <String, dynamic>{
  'title': instance.title,
  'description': instance.description,
  'payload': instance.payload,
  'provider_token': ?instance.providerToken,
  'currency': instance.currency,
  'prices': instance.prices,
  'max_tip_amount': ?instance.maxTipAmount,
  'suggested_tip_amounts': ?instance.suggestedTipAmounts,
  'provider_data': ?instance.providerData,
  'photo_url': ?instance.photoUrl,
  'photo_size': ?instance.photoSize,
  'photo_width': ?instance.photoWidth,
  'photo_height': ?instance.photoHeight,
  'need_name': ?instance.needName,
  'need_phone_number': ?instance.needPhoneNumber,
  'need_email': ?instance.needEmail,
  'need_shipping_address': ?instance.needShippingAddress,
  'send_phone_number_to_provider': ?instance.sendPhoneNumberToProvider,
  'send_email_to_provider': ?instance.sendEmailToProvider,
  'is_flexible': ?instance.isFlexible,
  'runtimeType': instance.$type,
};
