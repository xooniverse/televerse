import 'package:freezed_annotation/freezed_annotation.dart';

/// This enum represents the type of a clickable area on a story.
@JsonEnum(fieldRename: FieldRename.snake)
enum StoryAreaTypeType {
  /// For a location area
  @JsonValue('location')
  location,

  /// For a suggested reaction area
  @JsonValue('suggested_reaction')
  suggestedReaction,

  /// For a link area
  @JsonValue('link')
  link,

  /// For a weather area
  @JsonValue('weather')
  weather,

  /// For a unique gift area
  @JsonValue('unique_gift')
  uniqueGift;
}
