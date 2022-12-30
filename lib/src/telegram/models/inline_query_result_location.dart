part of models;

/// Represents a location on a map. By default, the location will be sent by the user. Alternatively, you can use input_message_content to send a message with the specified content instead of the location.
///
///
class InlineQueryResultLocation extends InlineQueryResult {
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
  String? thumbUrl;

  /// Optional. Thumbnail width
  int? thumbWidth;

  /// Optional. Thumbnail height
  int? thumbHeight;

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
      'horizontal_accuracy': horizontalAccuracy,
      'live_period': livePeriod,
      'heading': heading,
      'proximity_alert_radius': proximityAlertRadius,
      'reply_markup': replyMarkup?.toJson(),
      'input_message_content': inputMessageContent?.toJson(),
      'thumb_url': thumbUrl,
      'thumb_width': thumbWidth,
      'thumb_height': thumbHeight,
    };
  }

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
