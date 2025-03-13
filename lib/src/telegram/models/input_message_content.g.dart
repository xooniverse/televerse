// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_message_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InputTextMessageContentImpl _$$InputTextMessageContentImplFromJson(
        Map<String, dynamic> json) =>
    _$InputTextMessageContentImpl(
      messageText: json['message_text'] as String,
      parseMode: $enumDecodeNullable(_$ParseModeEnumMap, json['parse_mode']),
      entities: (json['entities'] as List<dynamic>?)
          ?.map((e) => MessageEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      linkPreviewOptions: json['link_preview_options'] == null
          ? null
          : LinkPreviewOptions.fromJson(
              json['link_preview_options'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$InputTextMessageContentImplToJson(
        _$InputTextMessageContentImpl instance) =>
    <String, dynamic>{
      'message_text': instance.messageText,
      if (instance.parseMode case final value?) 'parse_mode': value,
      if (instance.entities case final value?) 'entities': value,
      if (instance.linkPreviewOptions case final value?)
        'link_preview_options': value,
      'runtimeType': instance.$type,
    };

const _$ParseModeEnumMap = {
  ParseMode.markdown: 'Markdown',
  ParseMode.html: 'HTML',
  ParseMode.markdownV2: 'MarkdownV2',
};

_$InputLocationMessageContentImpl _$$InputLocationMessageContentImplFromJson(
        Map<String, dynamic> json) =>
    _$InputLocationMessageContentImpl(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      livePeriod: (json['live_period'] as num?)?.toInt(),
      horizontalAccuracy: (json['horizontal_accuracy'] as num?)?.toInt(),
      heading: (json['heading'] as num?)?.toInt(),
      proximityAlertRadius: (json['proximity_alert_radius'] as num?)?.toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$InputLocationMessageContentImplToJson(
        _$InputLocationMessageContentImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      if (instance.livePeriod case final value?) 'live_period': value,
      if (instance.horizontalAccuracy case final value?)
        'horizontal_accuracy': value,
      if (instance.heading case final value?) 'heading': value,
      if (instance.proximityAlertRadius case final value?)
        'proximity_alert_radius': value,
      'runtimeType': instance.$type,
    };

_$InputVenueMessageContentImpl _$$InputVenueMessageContentImplFromJson(
        Map<String, dynamic> json) =>
    _$InputVenueMessageContentImpl(
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

Map<String, dynamic> _$$InputVenueMessageContentImplToJson(
        _$InputVenueMessageContentImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'title': instance.title,
      'address': instance.address,
      if (instance.foursquareId case final value?) 'foursquare_id': value,
      if (instance.foursquareType case final value?) 'foursquare_type': value,
      if (instance.googlePlaceId case final value?) 'google_place_id': value,
      if (instance.googlePlaceType case final value?)
        'google_place_type': value,
      'runtimeType': instance.$type,
    };

_$InputContactMessageContentImpl _$$InputContactMessageContentImplFromJson(
        Map<String, dynamic> json) =>
    _$InputContactMessageContentImpl(
      phoneNumber: json['phone_number'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String?,
      vcard: json['vcard'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$InputContactMessageContentImplToJson(
        _$InputContactMessageContentImpl instance) =>
    <String, dynamic>{
      'phone_number': instance.phoneNumber,
      'first_name': instance.firstName,
      if (instance.lastName case final value?) 'last_name': value,
      if (instance.vcard case final value?) 'vcard': value,
      'runtimeType': instance.$type,
    };

_$InputInvoiceMessageContentImpl _$$InputInvoiceMessageContentImplFromJson(
        Map<String, dynamic> json) =>
    _$InputInvoiceMessageContentImpl(
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

Map<String, dynamic> _$$InputInvoiceMessageContentImplToJson(
        _$InputInvoiceMessageContentImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'payload': instance.payload,
      if (instance.providerToken case final value?) 'provider_token': value,
      'currency': instance.currency,
      'prices': instance.prices,
      if (instance.maxTipAmount case final value?) 'max_tip_amount': value,
      if (instance.suggestedTipAmounts case final value?)
        'suggested_tip_amounts': value,
      if (instance.providerData case final value?) 'provider_data': value,
      if (instance.photoUrl case final value?) 'photo_url': value,
      if (instance.photoSize case final value?) 'photo_size': value,
      if (instance.photoWidth case final value?) 'photo_width': value,
      if (instance.photoHeight case final value?) 'photo_height': value,
      if (instance.needName case final value?) 'need_name': value,
      if (instance.needPhoneNumber case final value?)
        'need_phone_number': value,
      if (instance.needEmail case final value?) 'need_email': value,
      if (instance.needShippingAddress case final value?)
        'need_shipping_address': value,
      if (instance.sendPhoneNumberToProvider case final value?)
        'send_phone_number_to_provider': value,
      if (instance.sendEmailToProvider case final value?)
        'send_email_to_provider': value,
      if (instance.isFlexible case final value?) 'is_flexible': value,
      'runtimeType': instance.$type,
    };
