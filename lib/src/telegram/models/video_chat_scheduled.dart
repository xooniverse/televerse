// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/televerse.dart';

part 'video_chat_scheduled.freezed.dart';
part 'video_chat_scheduled.g.dart';

/// This object represents a service message about a video chat scheduled in the
/// chat.
@freezed
class VideoChatScheduled with _$VideoChatScheduled {
  /// Constructs a [VideoChatScheduled] object
  const factory VideoChatScheduled({
    /// Point in time (Unix timestamp) when the video chat is supposed to be
    /// started by a chat administrator
    ///
    /// Note: You can also use the [DateTime] object getter as [startDateTime]
    @JsonKey(name: 'start_date') required int startDate,
  }) = _VideoChatScheduled;

  /// Creates a [VideoChatScheduled] object from JSON object
  factory VideoChatScheduled.fromJson(Map<String, dynamic> json) =>
      _$VideoChatScheduledFromJson(json);
}

/// Extension for [VideoChatScheduled]
extension VideoChatScheduledExt on VideoChatScheduled {
  /// [DateTime] object getter for [startDate]
  DateTime get startDateTime => startDate.toDateTime();
}
