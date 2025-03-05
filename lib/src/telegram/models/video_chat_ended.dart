// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_chat_ended.freezed.dart';
part 'video_chat_ended.g.dart';

/// This object represents a service message about a video chat ended in the
/// chat.
@freezed
class VideoChatEnded with _$VideoChatEnded {
  /// Constructs a new `VideoChatEnded` instance
  const factory VideoChatEnded({
    /// Video chat duration in seconds
    @JsonKey(name: 'duration') required int duration,
  }) = _VideoChatEnded;

  /// Creates a [VideoChatEnded] object from JSON object
  factory VideoChatEnded.fromJson(Map<String, dynamic> json) =>
      _$VideoChatEndedFromJson(json);
}

/// Extension over the VideoChatEnded
extension VideoChatEndedExt on VideoChatEnded {
  /// [Duration] object of [duration] field
  Duration get durationTime => Duration(seconds: duration);
}
