import 'package:televerse/src/telegram/models/abstracts/inline_query_result.dart';
import 'package:televerse/src/types/inline_query_result_type.dart';

import 'abstracts/input_message_content.dart';
import 'inline_keyboard_markup.dart';

/// Represents a venue. By default, the venue will be sent by the user. Alternatively, you can use input_message_content to send a message with the specified content instead of the venue.
///
/// Note: This will only work in Telegram versions released after 9 April, 2016. Older clients will ignore them.
class InlineQueryResultVenue extends InlineQueryResult {
  @override
  InlineQueryResultType get type => InlineQueryResultType.venue;

  /// Latitude of the venue location in degrees
  double latitude;

  /// Longitude of the venue location in degrees
  double longitude;

  /// Title of the venue
  String title;

  /// Address of the venue
  String address;

  /// Optional. Foursquare identifier of the venue if known
  String? foursquareId;

  /// Optional. Foursquare type of the venue, if known. (For example, “arts_entertainment/default”, “arts_entertainment/aquarium” or “food/icecream”.)
  String? foursquareType;

  /// Optional. Google Places identifier of the venue
  String? googlePlaceId;

  /// Optional. Google Places type of the venue. (See supported types.)
  String? googlePlaceType;

  /// Optional. Inline keyboard attached to the message
  InlineKeyboardMarkup? replyMarkup;

  /// Optional. Content of the message to be sent instead of the venue
  InputMessageContent? inputMessageContent;

  /// Optional. Url of the thumbnail for the result
  String? thumbUrl;

  /// Optional. Thumbnail width
  int? thumbWidth;

  /// Optional. Thumbnail height
  int? thumbHeight;

  InlineQueryResultVenue({
    required this.latitude,
    required this.longitude,
    required this.title,
    required this.address,
    required String id,
    this.foursquareId,
    this.foursquareType,
    this.googlePlaceId,
    this.googlePlaceType,
    this.replyMarkup,
    this.inputMessageContent,
    this.thumbUrl,
    this.thumbWidth,
    this.thumbHeight,
  }) : super(id: id);

  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
      'latitude': latitude,
      'longitude': longitude,
      'title': title,
      'address': address,
      'foursquare_id': foursquareId,
      'foursquare_type': foursquareType,
      'google_place_id': googlePlaceId,
      'google_place_type': googlePlaceType,
      'reply_markup': replyMarkup?.toJson(),
      'input_message_content': inputMessageContent?.toJson(),
      'thumb_url': thumbUrl,
      'thumb_width': thumbWidth,
      'thumb_height': thumbHeight,
    };
  }

  factory InlineQueryResultVenue.fromJson(Map<String, dynamic> json) {
    return InlineQueryResultVenue(
      latitude: json['latitude'] as double,
      longitude: json['longitude'] as double,
      title: json['title'] as String,
      address: json['address'] as String,
      id: json['id'] as String,
      foursquareId: json['foursquare_id'] as String?,
      foursquareType: json['foursquare_type'] as String?,
      googlePlaceId: json['google_place_id'] as String?,
      googlePlaceType: json['google_place_type'] as String?,
      replyMarkup: json['reply_markup'] == null
          ? null
          : InlineKeyboardMarkup.fromJson(
              json['reply_markup'] as Map<String, dynamic>),
      inputMessageContent: json['input_message_content'] == null
          ? null
          : InputMessageContent.fromJson(
              json['input_message_content'] as Map<String, dynamic>),
      thumbUrl: json['thumb_url'] as String?,
      thumbWidth: json['thumb_width'] as int?,
      thumbHeight: json['thumb_height'] as int?,
    );
  }
}
