// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_chat_started.freezed.dart';
part 'video_chat_started.g.dart';

/// This object represents a service message about a video chat started in the
/// chat. Currently holds no information.
@freezed
class VideoChatStarted with _$VideoChatStarted {
  /// Constructs a [VideoChatStarted] object
  const factory VideoChatStarted() = _VideoChatStarted;

  /// Creates a [VideoChatStarted] object from JSON object
  factory VideoChatStarted.fromJson(Map<String, dynamic> json) =>
      _$VideoChatStartedFromJson(json);
}
