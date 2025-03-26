// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/inline_query_result.dart';
import 'package:televerse/src/telegram/models/input_message_content.dart';
import 'package:televerse/src/telegram/models/reply_markup.dart';
import 'package:televerse/televerse.dart';

part 'inline_query_result_venue.freezed.dart';
part 'inline_query_result_venue.g.dart';

/// Represents a venue. By default, the venue will be sent by the user.
/// Alternatively, you can use input_message_content to send a message with the
/// specified content instead of the venue.
///
/// Note: This will only work in Telegram versions released after 9 April, 2016.
/// Older clients will ignore them.
@freezed
abstract class InlineQueryResultVenue
    with _$InlineQueryResultVenue
    implements InlineQueryResult {
  /// Constructs an [InlineQueryResultVenue] object
  const factory InlineQueryResultVenue({
    /// Type of the result, always [InlineQueryResultType.venue]
    @JsonKey(name: 'type')
    @Default(InlineQueryResultType.venue)
    InlineQueryResultType type,

    /// Unique identifier for this result, 1-64 Bytes
    @JsonKey(name: 'id') required String id,

    /// Latitude of the venue location in degrees
    @JsonKey(name: 'latitude') required double latitude,

    /// Longitude of the venue location in degrees
    @JsonKey(name: 'longitude') required double longitude,

    /// Title of the venue
    @JsonKey(name: 'title') required String title,

    /// Address of the venue
    @JsonKey(name: 'address') required String address,

    /// Optional. Foursquare identifier of the venue if known
    @JsonKey(name: 'foursquare_id') String? foursquareId,

    /// Optional. Foursquare type of the venue, if known.
    ///
    /// (For example, "arts_entertainment/default", "arts_entertainment/aquarium" or "food/icecream".)
    @JsonKey(name: 'foursquare_type') String? foursquareType,

    /// Optional. Google Places identifier of the venue
    @JsonKey(name: 'google_place_id') String? googlePlaceId,

    /// Optional. Google Places type of the venue. (See supported types.)
    @JsonKey(name: 'google_place_type') String? googlePlaceType,

    /// Optional. Inline keyboard attached to the message
    @JsonKey(name: 'reply_markup') InlineKeyboardMarkup? replyMarkup,

    /// Optional. Content of the message to be sent instead of the venue
    @JsonKey(name: 'input_message_content')
    @InputMessageContentConverter()
    InputMessageContent? inputMessageContent,

    /// Optional. URL of the thumbnail for the result
    @JsonKey(name: 'thumbnail_url') String? thumbnailUrl,

    /// Optional. Thumbnail width
    @JsonKey(name: 'thumbnail_width') int? thumbnailWidth,

    /// Optional. Thumbnail height
    @JsonKey(name: 'thumbnail_height') int? thumbnailHeight,
  }) = _InlineQueryResultVenue;

  /// Creates an [InlineQueryResultVenue] object from JSON object
  factory InlineQueryResultVenue.fromJson(Map<String, dynamic> json) =>
      _$InlineQueryResultVenueFromJson(json);

  const InlineQueryResultVenue._();
}
