// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/televerse.dart';
import 'location_address.dart';
import 'reaction_type.dart';

part 'story_area_type.freezed.dart';
part 'story_area_type.g.dart';

/// Interface to expose the `type` property on StoryAreaType
abstract interface class _WithStoryAreaType {
  /// Type of the story area
  StoryAreaType get type;
}

/// This object describes the type of a clickable area on a story. Currently, it can be one of
/// - StoryAreaTypeLocation
/// - StoryAreaTypeSuggestedReaction
/// - StoryAreaTypeLink
/// - StoryAreaTypeWeather
/// - StoryAreaTypeUniqueGift
@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.snake)
sealed class StoryAreaType with _$StoryAreaType implements _WithStoryAreaType {
  /// Describes a story area pointing to a location. Currently, a story can have
  /// up to 10 location areas.
  const factory StoryAreaType.location({
    /// Type of the area, always "location"
    @JsonKey(name: 'type')
    @Default(StoryAreaTypeType.location)
    final StoryAreaType type,

    /// Location latitude in degrees
    @JsonKey(name: 'latitude') required double latitude,

    /// Location longitude in degrees
    @JsonKey(name: 'longitude') required double longitude,

    /// Optional. Address of the location
    @JsonKey(name: 'address') LocationAddress? address,
  }) = StoryAreaTypeLocation;

  /// Describes a story area pointing to a suggested reaction. Currently, a story can have
  /// up to 5 suggested reaction areas.
  const factory StoryAreaType.suggestedReaction({
    /// Type of the area, always "suggested_reaction"
    @JsonKey(name: 'type')
    @Default(StoryAreaTypeType.suggestedReaction)
    final StoryAreaType type,

    /// Type of the reaction
    @JsonKey(name: 'reaction_type') required ReactionType reactionType,

    /// Optional. Pass True if the reaction area has a dark background
    @JsonKey(name: 'is_dark') bool? isDark,

    /// Optional. Pass True if reaction area corner is flipped
    @JsonKey(name: 'is_flipped') bool? isFlipped,
  }) = StoryAreaTypeSuggestedReaction;

  /// Describes a story area pointing to an HTTP or tg:// link. Currently, a story can have
  /// up to 3 link areas.
  const factory StoryAreaType.link({
    /// Type of the area, always "link"
    @JsonKey(name: 'type')
    @Default(StoryAreaTypeType.link)
    final StoryAreaType type,

    /// HTTP or tg:// URL to be opened when the area is clicked
    @JsonKey(name: 'url') required String url,
  }) = StoryAreaTypeLink;

  /// Describes a story area containing weather information. Currently, a story can have
  /// up to 3 weather areas.
  const factory StoryAreaType.weather({
    /// Type of the area, always "weather"
    @JsonKey(name: 'type')
    @Default(StoryAreaTypeType.weather)
    final StoryAreaType type,

    /// Temperature, in degree Celsius
    @JsonKey(name: 'temperature') required double temperature,

    /// Emoji representing the weather
    @JsonKey(name: 'emoji') required String emoji,

    /// A color of the area background in the ARGB format
    @JsonKey(name: 'background_color') required int backgroundColor,
  }) = StoryAreaTypeWeather;

  /// Describes a story area for unique gift
  const factory StoryAreaType.uniqueGift({
    /// Type of the area, always "unique_gift"
    @JsonKey(name: 'type')
    @Default(StoryAreaTypeType.uniqueGift)
    final StoryAreaType type,
  }) = StoryAreaTypeUniqueGift;

  /// Creates an instance of [StoryAreaType] from JSON data
  factory StoryAreaType.fromJson(Map<String, dynamic> json) =>
      _$StoryAreaTypeFromJson(json);
}
