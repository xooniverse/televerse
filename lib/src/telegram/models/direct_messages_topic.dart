// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'user.dart';

part 'direct_messages_topic.freezed.dart';
part 'direct_messages_topic.g.dart';

/// Describes a topic of a direct messages chat.
///
/// This object contains information about a topic in a direct messages chat,
/// including its unique identifier and optionally the user who created it.
@freezed
abstract class DirectMessagesTopic with _$DirectMessagesTopic {
  /// Creates a new [DirectMessagesTopic] object.
  const factory DirectMessagesTopic({
    /// Unique identifier of the topic
    @JsonKey(name: 'topic_id') required int topicId,

    /// Optional. Information about the user that created the topic.
    /// Currently, it is always present according to Telegram documentation.
    @JsonKey(name: 'user') User? user,
  }) = _DirectMessagesTopic;

  /// Creates a new [DirectMessagesTopic] object from a JSON [Map].
  factory DirectMessagesTopic.fromJson(Map<String, dynamic> json) =>
      _$DirectMessagesTopicFromJson(json);
}
