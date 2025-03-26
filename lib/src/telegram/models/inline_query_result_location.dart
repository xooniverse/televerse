// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/inline_query_result.dart';
import 'package:televerse/src/telegram/models/input_message_content.dart';
import 'package:televerse/src/telegram/models/reply_markup.dart';
import 'package:televerse/televerse.dart';

part 'inline_query_result_location.freezed.dart';
part 'inline_query_result_location.g.dart';

/// Represents a location on a map. By default, the location will be sent by the user. Alternatively, you can use input_message_content to send a message with the specified content instead of the location.
@freezed
abstract class InlineQueryResultLocation
    with _$InlineQueryResultLocation
    implements InlineQueryResult {
  /// Constructs an [InlineQueryResultLocation] object
  const factory InlineQueryResultLocation({
    /// Type of the result, always [InlineQueryResultType.location]
    @JsonKey(name: 'type')
    @Default(InlineQueryResultType.location)
    InlineQueryResultType type,

    /// Unique identifier for this result, 1-64 Bytes
    @JsonKey(name: 'id') required String id,

    /// Location latitude in degrees
    @JsonKey(name: 'latitude') required double latitude,

    /// Location longitude in degrees
    @JsonKey(name: 'longitude') required double longitude,

    /// Location title
    @JsonKey(name: 'title') required String title,

    /// Optional. The radius of uncertainty for the location, measured in meters; 0-1500
    @JsonKey(name: 'horizontal_accuracy') int? horizontalAccuracy,

    /// Optional. Period in seconds for which the location can be updated, should be between 60 and 86400.
    @JsonKey(name: 'live_period') int? livePeriod,

    /// Optional. For live locations, a direction in which the user is moving, in degrees. Must be between 1 and 360 if specified.
    @JsonKey(name: 'heading') int? heading,

    /// Optional. For live locations, a maximum distance for proximity alerts about approaching another chat member, in meters. Must be between 1 and 100000 if specified.
    @JsonKey(name: 'proximity_alert_radius') int? proximityAlertRadius,

    /// Optional. Inline keyboard attached to the message
    @JsonKey(name: 'reply_markup') InlineKeyboardMarkup? replyMarkup,

    /// Optional. Content of the message to be sent instead of the location
    @JsonKey(name: 'input_message_content')
    @InputMessageContentConverter()
    InputMessageContent? inputMessageContent,

    /// Optional. Url of the thumbnail for the result
    @JsonKey(name: 'thumbnail_url') String? thumbnailUrl,

    /// Optional. Thumbnail width
    @JsonKey(name: 'thumbnail_width') int? thumbnailWidth,

    /// Optional. Thumbnail height
    @JsonKey(name: 'thumbnail_height') int? thumbnailHeight,
  }) = _InlineQueryResultLocation;

  /// Creates an [InlineQueryResultLocation] object from JSON data
  factory InlineQueryResultLocation.fromJson(Map<String, dynamic> json) =>
      _$InlineQueryResultLocationFromJson(json);

  const InlineQueryResultLocation._();
}
