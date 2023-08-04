part of models;

/// Represents a location on a map. By default, the location will be sent by the user. Alternatively, you can use input_message_content to send a message with the specified content instead of the location.
class InlineQueryResultLocation extends InlineQueryResult {
  /// Type of the result, always [InlineQueryResultType.location]
  @override
  InlineQueryResultType get type => InlineQueryResultType.location;

  /// Location latitude in degrees
  double latitude;

  /// Location longitude in degrees
  double longitude;

  /// Location title
  String title;

  /// Optional. The radius of uncertainty for the location, measured in meters; 0-1500
  int? horizontalAccuracy;

  /// Optional. Period in seconds for which the location can be updated, should be between 60 and 86400.
  int? livePeriod;

  /// Optional. For live locations, a direction in which the user is moving, in degrees. Must be between 1 and 360 if specified.
  int? heading;

  /// Optional. For live locations, a maximum distance for proximity alerts about approaching another chat member, in meters. Must be between 1 and 100000 if specified.
  int? proximityAlertRadius;

  /// Optional. Inline keyboard attached to the message
  InlineKeyboardMarkup? replyMarkup;

  /// Optional. Content of the message to be sent instead of the location
  InputMessageContent? inputMessageContent;

  /// Optional. Url of the thumbnail for the result
  String? thumbnailUrl;

  /// Optional. Thumbnail width
  int? thumbnailWidth;

  /// Optional. Thumbnail height
  int? thumbnailHeight;

  /// Constructs an [InlineQueryResultLocation] object
  InlineQueryResultLocation({
    required this.latitude,
    required this.longitude,
    required this.title,
    required String id,
    this.horizontalAccuracy,
    this.livePeriod,
    this.heading,
    this.proximityAlertRadius,
    this.replyMarkup,
    this.inputMessageContent,
    this.thumbnailUrl,
    this.thumbnailWidth,
    this.thumbnailHeight,
  }) : super(id: id);

  /// Converts an [InlineQueryResultLocation] object to a JSON map
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
      'latitude': latitude,
      'longitude': longitude,
      'title': title,
      'horizontal_accuracy': horizontalAccuracy,
      'live_period': livePeriod,
      'heading': heading,
      'proximity_alert_radius': proximityAlertRadius,
      'reply_markup': replyMarkup?.toJson(),
      'input_message_content': inputMessageContent?.toJson(),
      'thumbnail_url': thumbnailUrl,
      'thumbnail_width': thumbnailWidth,
      'thumbnail_height': thumbnailHeight,
    }..removeWhere((key, value) => value == null);
  }

  /// Constructs an [InlineQueryResultLocation] object from a JSON map
  factory InlineQueryResultLocation.fromJson(Map<String, dynamic> json) {
    return InlineQueryResultLocation(
      latitude: json['latitude'] as double,
      longitude: json['longitude'] as double,
      title: json['title'] as String,
      id: json['id'] as String,
      horizontalAccuracy: json['horizontal_accuracy'] as int?,
      livePeriod: json['live_period'] as int?,
      heading: json['heading'] as int?,
      proximityAlertRadius: json['proximity_alert_radius'] as int?,
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
