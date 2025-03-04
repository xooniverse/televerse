import 'package:freezed_annotation/freezed_annotation.dart';
import 'chat.dart';

part 'story.freezed.dart';
part 'story.g.dart';

/// This object represents a message about a forwarded story in the chat.
@freezed
class Story with _$Story {
  /// Constructs an instance of [Story].
  const factory Story({
    /// Chat that posted the story
    @JsonKey(name: 'chat') required Chat chat,

    /// Unique identifier for the story in the chat
    @JsonKey(name: 'id') required int id,
  }) = _Story;

  /// Constructs an instance of [Story] from a JSON map.
  factory Story.fromJson(Map<String, dynamic> json) => _$StoryFromJson(json);
}
