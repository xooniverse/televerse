part of 'models.dart';

/// This object represents a service message about a video chat ended in the chat.
class VideoChatEnded {
  /// Video chat duration in seconds
  ///
  /// [Duration] object is available as [durationTime] getter
  final int duration;

  /// Constructs a [VideoChatEnded] object
  const VideoChatEnded({required this.duration});

  /// Creates a [VideoChatEnded] object from JSON object
  factory VideoChatEnded.fromJson(Map<String, dynamic> json) {
    return VideoChatEnded(
      duration: json['duration'],
    );
  }

  /// Converts a [VideoChatEnded] object to JSON object
  Map<String, dynamic> toJson() {
    return {
      'duration': duration,
    }..removeWhere((key, value) => value == null);
  }

  /// [Duration] object of [duration] field
  Duration get durationTime => Duration(seconds: duration);
}
