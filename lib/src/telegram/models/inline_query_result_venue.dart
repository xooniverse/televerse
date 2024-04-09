part of 'models.dart';

/// Represents a venue. By default, the venue will be sent by the user. Alternatively, you can use input_message_content to send a message with the specified content instead of the venue.
///
/// Note: This will only work in Telegram versions released after 9 April, 2016. Older clients will ignore them.
class InlineQueryResultVenue implements InlineQueryResult {
  /// Unique identifier for this result, 1-64 Bytes
  @override
  final String id;

  /// Type of the result, always [InlineQueryResultType.venue]
  @override
  InlineQueryResultType get type => InlineQueryResultType.venue;

  /// Latitude of the venue location in degrees
  final double latitude;

  /// Longitude of the venue location in degrees
  final double longitude;

  /// Title of the venue
  final String title;

  /// Address of the venue
  final String address;

  /// Optional. Foursquare identifier of the venue if known
  final String? foursquareId;

  /// Optional. Foursquare type of the venue, if known. (For example, “arts_entertainment/default”, “arts_entertainment/aquarium” or “food/icecream”.)
  final String? foursquareType;

  /// Optional. Google Places identifier of the venue
  final String? googlePlaceId;

  /// Optional. Google Places type of the venue. (See supported types.)
  final String? googlePlaceType;

  /// Optional. Inline keyboard attached to the message
  final InlineKeyboardMarkup? replyMarkup;

  /// Optional. Content of the message to be sent instead of the venue
  @override
  final InputMessageContent? inputMessageContent;

  /// Optional. Url of the thumbnail for the result
  final String? thumbnailUrl;

  /// Optional. Thumbnail width
  final int? thumbnailWidth;

  /// Optional. Thumbnail height
  final int? thumbnailHeight;

  /// Constructs an [InlineQueryResultVenue] object
  const InlineQueryResultVenue({
    required this.latitude,
    required this.longitude,
    required this.title,
    required this.address,
    required this.id,
    this.foursquareId,
    this.foursquareType,
    this.googlePlaceId,
    this.googlePlaceType,
    this.replyMarkup,
    this.inputMessageContent,
    this.thumbnailUrl,
    this.thumbnailWidth,
    this.thumbnailHeight,
  });

  /// Converts an [InlineQueryResultVenue] object to a JSON map
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
      'thumbnail_url': thumbnailUrl,
      'thumbnail_width': thumbnailWidth,
      'thumbnail_height': thumbnailHeight,
      'id': id,
    }..removeWhere(_nullFilter);
  }

  /// Constructs an [InlineQueryResultVenue] object from a JSON map
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
              json['reply_markup'] as Map<String, dynamic>,
            ),
      inputMessageContent: json['input_message_content'] == null
          ? null
          : InputMessageContent.fromJson(
              json['input_message_content'] as Map<String, dynamic>,
            ),
      thumbnailUrl: json['thumbnail_url'] as String?,
      thumbnailWidth: json['thumbnail_width'] as int?,
      thumbnailHeight: json['thumbnail_height'] as int?,
    );
  }
}
