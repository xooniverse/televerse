// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/story_area_position.dart';
import 'package:televerse/src/telegram/models/story_area_type.dart';

part 'story_area.freezed.dart';
part 'story_area.g.dart';

/// Describes a clickable area on a story media.
@freezed
abstract class StoryArea with _$StoryArea {
  /// Creates a new [StoryArea] object.
  const factory StoryArea({
    /// Position of the area
    @JsonKey(name: 'position') required StoryAreaPosition position,

    /// Type of the area
    @JsonKey(name: 'type') required StoryAreaType type,
  }) = _StoryArea;

  /// Creates a new [StoryArea] object from a JSON [Map].
  factory StoryArea.fromJson(Map<String, dynamic> json) =>
      _$StoryAreaFromJson(json);
}
