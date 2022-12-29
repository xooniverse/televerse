/// This object represents a service message about a video chat ended in the chat.
class VideoChatEnded {
  /// Video chat duration in seconds
  ///
  /// [Duration] object is available as [durationTime] getter
  int duration;

  VideoChatEnded({required this.duration});

  factory VideoChatEnded.fromJson(Map<String, dynamic> json) {
    return VideoChatEnded(
      duration: json['duration'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'duration': duration,
    };
  }

  /// [Duration] object of [duration] field
  Duration get durationTime => Duration(seconds: duration);
}
